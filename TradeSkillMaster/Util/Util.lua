-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--          http://www.curse.com/addons/wow/tradeskillmaster_warehousing          --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- This file contains various utility APIs

local TSM = select(2, ...)
local private = {}
TSMAPI:RegisterForTracing(private, "TradeSkillMaster.Util_private")


--- Shows a popup dialog with the given name and ensures it's visible over the TSM frame by setting the frame strata to TOOLTIP.
-- @param name The name of the static popup dialog to be shown.
function TSMAPI:ShowStaticPopupDialog(name)
	StaticPopupDialogs[name].preferredIndex = 3
	StaticPopup_Show(name)
	for i=1, 100 do
		if _G["StaticPopup" .. i] and _G["StaticPopup" .. i].which == name then
			_G["StaticPopup" .. i]:SetFrameStrata("TOOLTIP")
			break
		end
	end
end

function TSMAPI:GetCharacters()
	return CopyTable(TSM.db.factionrealm.characters)
end


local orig = ChatFrame_OnEvent
function ChatFrame_OnEvent(self, event, ...)
	local msg = select(1, ...)
	if (event == "CHAT_MSG_SYSTEM") then
		if (msg == ERR_AUCTION_STARTED) then -- absorb the Auction Created message
			return
		end
		if (msg == ERR_AUCTION_REMOVED) then -- absorb the Auction Cancelled message
			return
		end
	end
	return orig(self, event, ...)
end


-- A more versitile replacement for lua's select() function
-- If a list of indices is passed as the first parameter, only
-- those values will be returned, otherwise, the default select()
-- behavior will be followed.
function private:SelectHelper(positions, ...)
	if #positions == 0 then return end
	return select(tremove(positions), ...), private:SelectHelper(positions, ...)
end
function TSMAPI:Select(positions, ...)
	if type(positions) == "number" then
		return select(positions, ...)
	elseif type(positions) == "table" then
		-- reverse the list and make a copy of it
		local newPositions = {}
		for i=#positions, 1, -1 do
			tinsert(newPositions, positions[i])
		end
		return private:SelectHelper(newPositions, ...)
	else
		error(format("Bad argument #1. Expected number or table, got %s", type(positions)))
	end
end

-- custom string splitting function that doesn't stack overflow
function TSMAPI:SafeStrSplit(str, sep)
	local parts = {}
	local s = 1
	while true do
		local e = strfind(str, sep, s)
		if not e then
			tinsert(parts, strsub(str, s))
			break
		end
		tinsert(parts, strsub(str, s, e-1))
		s = e + 1
	end
	return parts
end

local MAGIC_CHARACTERS = {'[', ']', '(', ')', '.', '+', '-', '*', '?', '^', '$'}
function TSMAPI:StrEscape(str)
	str = gsub(str, "%%", "\001")
	for _, char in ipairs(MAGIC_CHARACTERS) do
		str = gsub(str, "%"..char, "%%"..char)
	end
	str = gsub(str, "\001", "%%%%")
	return str
end

function TSMAPI:IsPlayer(target)
	return strlower(target) == strlower(UnitName("player")) or (strfind(target, "-") and strlower(target) == strlower(UnitName("player").."-"..GetRealmName()))
end

local reCache = {}
CreateFrame('GameTooltip', 'TSMAPITooltip', nil, 'GameTooltipTemplate')
function TSMAPI:GetRandomEnchant(setter, arg1, arg2)
    TSMAPITooltip:SetOwner(UIParent, 'ANCHOR_NONE')
	TSMAPITooltip:ClearLines()
    
    if setter == 'auction' then
	    TSMAPITooltip:SetAuctionItem(arg1, arg2)
    elseif setter == 'bag' then
	    TSMAPITooltip:SetBagItem(arg1, arg2)
    elseif setter == 'inventory' then
	    TSMAPITooltip:SetInventoryItem(arg1, arg2)
    elseif setter == 'link' then
	    TSMAPITooltip:SetHyperlink(arg1)
    end

    local reLink,reIcon = nil,nil
    for i = 1, TSMAPITooltip:NumLines() do
		t = _G[TSMAPITooltip:GetName().."TextLeft"..i]:GetText()
		if t and string.find(t,"^Equip:") then
			local reVal = nil
			local re = string.gsub(t, "Equip: ","")
			local internalReID = TSMAPI:StringHash(re)
			if reCache[internalReID] then
				--ViragDevTool_AddData({reCache[internalReID]}, "TSMAPI:GetRandomEnchant - Found internal cache record")
				reVal = reCache[internalReID]
			else
				for k,v in pairs(AIO_REs) do
					if type(v) == "table" then
						--ViragDevTool_AddData({v[4] == re, v[4], re, v}, "TSMAPI:GetRandomEnchant - Is match")
						if v[4] == re then
							--ViragDevTool_AddData({re, v}, "TSMAPI:GetRandomEnchant - Found re")
							reCache[internalReID] = v
							reVal = v
							break
						end
					end
				end
			end
			if reVal then
				local _, id, name, desc, rarity, icon = unpack(reVal)
				local x = tonumber(rarity:match("%d"))
				--reID = v[2]
				--reName = v[3]
				--reRank = select(2, GetEnchantColor(v[5]))
				reLink = format("|c%s|Hspell:%s:RE|h[%s]|h|r",x,id,name)
				reIcon = icon
			end
		end
    end
    return reLink,reIcon
end

-- Arguments:
--	randomEnchantLink: The re link ex: "|c3|Hspell:12345:RE|h[SomeName]|h|r" (string)
-- Returns:
--	name - Name of the random enchant (string)
--	link - A hyperlink for the random enchant (string, hyperlink)
--	quality - Quality (rarity) level of the item. (number, itemQuality)
--	iLevel - [NotUsed: Always 0]
--	reqLevel - [NotUsed: Always 0]
--	class - Localized name of the item's class/type (as in the list returned by GetAuctionItemClasses()) (string)
--	subclass - Localized name of the item's subclass/subtype (as in the list returned by GetAuctionItemSubClasses()) (string)
--	maxStack - [NotUsed: Always 1]
--	equipSlot - [NotUsed: Always empty string]
--	texture - Path to an icon texture for the random enchant (string)	
function TSMAPI:GetRandomEnchantInfo(link)
	if type(link) ~= "string" then return end
	local reID = string.match(link,"(%d+):RE")
	local reName = string.match(link,"h%[(%w+)%]")
	local reRank = string.match(link,"(%d+)")
	local reIcon = ""

	for k,v in pairs(AIO_REs) do
		if type(v) == "table" then
			local _, id, name, desc, rarity, icon = unpack(v)
			local x = tonumber(rarity:match("%d"))
			if reID == id and reRank == x and reName == name then
				reIcon = icon
				break
			end
		end
	end

	return name,link,rank,0,0,11,5,1,"",reIcon
end

local reCacheBySpellID = {}
function TSMAPI:GetRandomEnchantInfoBySpellID(spellID)
	if type(spellID) ~= "number" then return end
	if reCacheBySpellID[spellID] then
		return reCacheBySpellID[spellID]
	end
	local reID,reName,reLink,reRank,reIcon
	for k,v in pairs(AIO_REs) do
		if type(v) == "table" then
			local _, id, name, desc, rarity, icon = unpack(v)
			local x = tonumber(rarity:match("%d"))
			reID = id
			reName = name
			reLink = format("|c%s|Hspell:%s:RE|h[%s]|h|r",x,id,name)
			reRank = x
			reIcon = icon
			reCacheBySpellID[spellID] = {reName,reLink,reRank,0,0,11,5,1,"",reIcon}
			return reCacheBySpellID[spellID]
		end
	end
	return nil
end

function TSMAPI:StringHash(text)
  local counter = 1
  local len = string.len(text)
  for i = 1, len, 3 do 
    counter = math.fmod(counter*8161, 4294967279) +  -- 2^32 - 17: Prime!
  	  (string.byte(text,i)*16776193) +
  	  ((string.byte(text,i+1) or (len-i+256))*8372226) +
  	  ((string.byte(text,i+2) or (len-i+256))*3932164)
  end
  return math.fmod(counter, 4294967291) -- 2^32 - 5: Prime (and different from the prime in the loop)
end