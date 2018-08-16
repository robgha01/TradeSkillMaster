-- ------------------------------------------------------------------------------ --
--                           TradeSkillMaster_Auctioning                          --
--           http://www.curse.com/addons/wow/tradeskillmaster_auctioning          --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- TradeSkillMaster_Auctioning Locale - enUS
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkill-Master/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Auctioning", "enUS", true)
if not L then return end

L["%s item(s) to buy/cancel"] = true
L["'%s' has an Auctioning operation of '%s' which no longer exists. Auctioning will ignore this group until this is fixed."] = true
L["'%s' has an Auctioning operation of '%s' which no longer exists."] = true
L["2 to 12 hrs"] = true
L["30min to 2hrs"] = true
L["<none>"] = true
L["Above max price. Posting at min price."] = true
L["Above max price. Posting at max price."] = true
L["Above max price. Posting at normal price."] = true
L["Add a new player to your whitelist."] = true
L["Add player"] = true
L["Any auctions at or below the selected duration will be ignored. Selecting \"<none>\" will cause no auctions to be ignored based on duration."] = true
L["At above max price and not undercut."] = true
L["At normal price and not undercut."] = true
L["Auction Buyout (Stack Price):"] = true
L["Auction Buyout"] = true
L["Auction Price Settings"] = true
L["Auction Settings"] = true
L["Auction has been bid on."] = true
L["Auction not found. Skipped."] = true
L["Auctioning could not find %s in your bags so has skipped posting it. Running the scan again should resolve this issue."] = true
L["Auctioning Prices:"] = true
L["Auctioning operations contain settings for posting, canceling, and resetting items in a group. Type the name of the new operation into the box below and hit 'enter' to create a new Crafting operation."] = true
L["Below min price. Posting at min price."] = true
L["Below min price. Posting at max price."] = true
L["Below min price. Posting at normal price."] = true
L["Bid percent"] = true
L["Cancel All Auctions"] = true
L["Cancel Auctions with Bids"] = true
L["Cancel Filter:"] = true
L["Cancel Low Duration"] = true
L["Cancel Scan Finished"] = true
L["Cancel Settings"] = true
L["Cancel Undercut Auctions"] = true
L["Cancel to Repost Higher"] = true
L["Cancel"] = true
L["Canceling %d / %d"] = true
L["Canceling all auctions."] = true
L["Canceling auction which you've undercut."] = true
L["Canceling to repost at higher price."] = true
L["Canceling to repost at reset price."] = true
L["Canceling to repost higher."] = true
L["Canceling undercut auctions and to repost higher."] = true
L["Canceling undercut auctions."] = true
L["Cheapest auction below min price."] = true
L["Click to show auctions for this item."] = true
L["Confirming %d / %d"] = true
L["Create Macro and Bind ScrollWheel (with selected options)"] = true
L["Currently Owned:"] = true
L["Default Operation Tab"] = true
L["Delete"] = true
L["Did not cancel %s because your cancel to repost threshold (%s) is invalid. Check your settings."] = true
L["Did not cancel %s because your maximum price (%s) is invalid. Check your settings."] = true
L["Did not cancel %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = true
L["Did not cancel %s because your minimum price (%s) is invalid. Check your settings."] = true
L["Did not cancel %s because your normal price (%s) is invalid. Check your settings."] = true
L["Did not cancel %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = true
L["Did not cancel %s because your undercut (%s) is invalid. Check your settings."] = true
L["Did not post %s because your maximum price (%s) is invalid. Check your settings."] = true
L["Did not post %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = true
L["Did not post %s because your minimum price (%s) is invalid. Check your settings."] = true
L["Did not post %s because your normal price (%s) is invalid. Check your settings."] = true
L["Did not post %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = true
L["Did not post %s because your undercut (%s) is invalid. Check your settings."] = true
L["Did not reset %s because your maximum price (%s) is invalid. Check your settings."] = true
L["Did not reset %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = true
L["Did not reset %s because your minimum price (%s) is invalid. Check your settings."] = true
L["Did not reset %s because your normal price (%s) is invalid. Check your settings."] = true
L["Did not reset %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = true
L["Did not reset %s because your reset max cost (%s) is invalid. Check your settings."] = true
L["Did not reset %s because your reset max item cost (%s) is invalid. Check your settings."] = true
L["Did not reset %s because your reset min profit (%s) is invalid. Check your settings."] = true
L["Did not reset %s because your reset resolution (%s) is invalid. Check your settings."] = true
L["Did not reset %s because your undercut (%s) is invalid. Check your settings."] = true
L["Disable Invalid Price Warnings"] = true
L["Don't Post Items"] = true
L["Done Canceling"] = true
L["Done Canceling"] = true
L["Done Posting"] = true
L["Done Posting\n\nTotal value of your auctions: %s\nIncoming Gold: %s"] = true
L["Done Scanning!\n\nCould potentially reset %d items for %s profit."] = true
L["Done Scanning"] = true
L["Down"] = true
L["Duration"] = true
L["Edit Post Price"] = true
L["Enable Reset Scan"] = true
L["Enable Sounds"] = true
L["Error creating operation. Operation with name '%s' already exists."] = true
L["General Operation Options"] = true
L["General Options"] = true
L["General Reset Settings"] = true
L["General Settings"] = true
L["General"] = true
L["Give the new operation a name. A descriptive name will help you find this operation later."] = true
L["Help"] = true
L["How long auctions should be up for."] = true
L["How many auctions at the lowest price tier can be up at any one time. Setting this to 0 disables posting for any groups this operation is applied to."] = true
L["How many items should be in a single auction, 20 will mean they are posted in stacks of 20."] = true
L["How many items you want to keep in your bags and not have Auctioning post."] = true
L["How much to undercut other auctions by. Format is in \"#g#s#c\". For example, \"50g30s\" means 50 gold, 30 silver, and no copper."] = true
L["If an item can't be posted for at least this amount higher than its current value, it won't be canceled to repost higher."] = true
L["If checked, Auctioning will ignore all auctions that are posted at a different stack size than your auctions. For example, if there are stacks of 1, 5, and 20 up and you're posting in stacks of 1, it'll ignore all stacks of 5 and 20."] = true
L["If checked, TSM will not print out a chat message when you have an invalid price for an item. However, it will still show as invalid in the log."] = true
L["If checked, a cancel scan will cancel any auctions which can be reposted for a higher price."] = true
L["If checked, a cancel scan will cancel any auctions which have been undercut and are still above your minimum price."] = true
L["If checked, groups which the opperation applies to will be included in a reset scan."] = true
L["If checked, the minimum, normal and maximum prices of the first operation for the item will be shown in tooltips."] = true
L["If checked, whenever you post an item at its normal price, the buyout will be rounded up to the nearest gold."] = true
L["If enabled, instead of not posting when a whitelisted player has an auction posted, Auctioning will match their price."] = true
L["If you don't have enough items for a full post, it will post with what you have."] = true
L["Ignore Auctions Below Minimum"] = true
L["Ignore Low Duration Auctions"] = true
L["Info"] = true
L["Invalid scan data for item %s. Skipping this item."] = true
L["Invalid seller data returned by server."] = true
L["Item"] = true
L["Item/Group is invalid."] = true
L["Keep Posted"] = true
L["Keep Quantity"] = true
L["Keeping undercut auctions posted."] = true
L["Log Info:"] = true
L["Low Duration"] = true
L["Lowest Buyout"] = true
L["Lowest Buyout:"] = true
L["Lowest auction by whitelisted player."] = true
L["Macro Help"] = true
L["Macro created and keybinding set!"] = true
L["Management"] = true
L["Match Stack Size"] = true
L["Match Whitelist Players"] = true
L["Max Cost Per Item"] = true
L["Max Cost:"] = true
L["Max Inventory Quantity"] = true
L["Max Price Per:"] = true
L["Max Quantity to Buy"] = true
L["Max Quantity:"] = true
L["Max Reset Cost"] = true
L["Maximum Price"] = true
L["Maximum Price:"] = true
L["Maximum amount already posted."] = true
L["Min (%s), Normal (%s), Max (%s)"] = true
L["Min Profit:"] = true
L["Min Reset Profit"] = true
L["Minimum Price"] = true
L["Minimum Price:"] = true
L["Modifiers:"] = true
L["Move AH Shortfall To Bags"] = true
L["Move Group To Bags"] = true
L["Move Group To Bank"] = true
L["Move Non Group Items to Bank"] = true
L["Move Post Cap To Bags"] = true
L["Must wait for scan to finish before starting to reset."] = true
L["New Operation"] = true
L["No Items to Reset"] = true
L["No posting."] = true
L["None"] = true
L["Normal Price"] = true
L["Normal Price:"] = true
L["Not canceling auction at reset price."] = true
L["Not canceling auction below min price."] = true
L["Not canceling."] = true
L["Not enough items in bags."] = true
L["Not resetting."] = true
L["Nothing to Move"] = true
L["Operation Name"] = true
L["Operation"] = true
L["Operations"] = true
L["Options"] = true
L["Other Auctioning Searches"] = true
L["Percentage of the buyout as bid, if you set this to 90% then a 100g buyout will have a 90g bid."] = true
L["Player name"] = true
L["Play the selected sound when a post / cancel scan is complete and items are ready to be posted / canceled (the gray bar is all the way across).Select None to disable sounds"] = true
L["Please don't move items around in your bags while a post scan is running! The item was skipped to avoid an incorrect item being posted."] = true
L["Post Cap"] = true
L["Post Scan Finished"] = true
L["Post Settings"] = true
L["Post at Maximum Price"] = true
L["Post at Minimum Price"] = true
L["Post at Normal Price"] = true
L["Post"] = true
L["Posted at whitelisted player's price."] = true
L["Posting %d / %d"] = true
L["Posting %d stack(s) of %d for %d hours."] = true
L["Posting Price Settings"] = true
L["Posting at normal price."] = true
L["Posting at whitelisted player's price."] = true
L["Posting at your current price."] = true
L["Preparing Filter %d / %d"] = true
L["Preparing Filters..."] = true
L["Preparing to Move"] = true
L["Price Resolution"] = true
L["Price to post at if there are none of an item currently on the AH."] = true
L["Processing Items..."] = true
L["Profit Per Item"] = true
L["Profit:"] = true
L["Quantity (Yours)"] = true
L["Relationships"] = true
L["Repost Higher Threshold"] = true
L["Reset Scan Finished"] = true
L["Reset Settings"] = true
L["Reset"] = true
L["Resetting enabled."] = true
L["Restart"] = true
L["Return to Summary"] = true
L["Right-Click to add %s to your friends list."] = true
L["Round Normal Price"] = true
L["Running Scan..."] = true
L["Save New Price"] = true
L["Scan Complete!"] = true
L["Scanning %d / %d (Page %d / %d)"] = true
L["Scanning %d / %d"] = true
L["ScrollWheel Direction (both recommended):"] = true
L["Select a duration in this dropdown and click on the button below to cancel all auctions at or below this duration."] = true
L["Select the groups which you would like to include in the scan."] = true
L["Seller name of lowest auction for item %s was not returned from server. Skipping this item."] = true
L["Seller"] = true
L["Shift-Right-Click to show the options for this item's Auctioning group."] = true
L["Shift-Right-Click to show the options for this operation.".."|r"] = true
L["Show All Auctions"] = true
L["Show Auctioning values in Tooltip"] = true
L["Show Item Auctions"] = true
L["Show Log"] = true
L["Skip"] = true
L["Stack Size"] = true
L["Start Cancel Scan"] = true
L["Start Post Scan"] = true
L["Start Reset Scan"] = true
L["Starting Scan..."] = true
L["Stop"] = true
L["Target Price"] = true
L["Target Price:"] = true
L["Test Selected Sound"] = true
L["The filter cannot be empty. If you'd like to cancel all auctions, use the 'Cancel All Auctions' button."] = true
L["The lowest price you want an item to be posted for. Auctioning will not undercut auctions below this price."] = true
L["The maximum amount that you want to spend in order to reset a particular item. This is the total amount, not a per-item amount."] = true
L["The maximum price you want an item to be posted for. Auctioning will not undercut auctions above this price."] = true
L["The minimum profit you would want to make from doing a reset. This is a per-item price where profit is the price you reset to minus the average price you spent per item."] = true
L["The player \"%s\" is already on your whitelist."] = true
L["There are two ways of making clicking the Post / Cancel Auction button easier. You can put %s and %s in a macro (on separate lines), or use the utility below to have a macro automatically made and bound to scrollwheel for you."] = true
L["This determines what size range of prices should be considered a single price point for the reset scan. For example, if this is set to 1s, an auction at 20g50s20c and an auction at 20g49s45c will both be considered to be the same price level."] = true
L["This dropdown determines the default tab when you visit an operation."] = true
L["This dropdown determines what Auctioning will do when the market for an item goes above your maximum price. You can post the items at one of your configured prices."] = true
L["This dropdown determines what Auctioning will do when the market for an item goes below your minimum price. You can not post the items, post at one of your configured prices, or have Auctioning ignore all the auctions below your minimum price (and likely undercut the lowest auction above your mimimum price)."] = true
L["This is the maximum amount you want to pay for a single item when reseting."] = true
L["This is the maximum quantity of an item you want to buy in a single reset scan."] = true
L["This is the maximum quantity of an item you want to have in your inventory after a reset scan."] = true
L["This item does not have any seller data."] = true
L["This number of undercut auctions will be kept on the auction house (not canceled) when doing a cancel scan."] = true
L["This number of undercut auctions will be kept on the auction house (not canceled) when doing a cancel scan."] = true
L["Total Cost"] = true
L["Under 30min"] = true
L["Undercut Amount"] = true
L["Undercut by whitelisted player."] = true
L["Undercutting competition."] = true
L["Up"] = true
L["Use Stack Size as Cap"] = true
L["WARNING: You minimum price for %s is below its vendorsell price (with AH cut taken into account). Consider raising your minimum price, or vendoring the item."] = true
L["When Above Maximum"] = true
L["When Below Minimum"] = true
L["Whitelist"] = true
L["Whitelists allow you to set other players besides you and your alts that you do not want to undercut; however, if somebody on your whitelist matches your buyout but lists a lower bid it will still consider them undercutting."] = true
L["Will bind ScrollWheelDown (plus modifiers below) to the macro created."] = true
L["Will bind ScrollWheelUp (plus modifiers below) to the macro created."] = true
L["Will cancel all your auctions at or below the specified duration, including ones you didn't post with Auctioning."] = true
L["Will cancel all your auctions which match the specified filter, including ones which you didn't post with Auctioning."] = true
L["Will cancel all your auctions, including ones which you didn't post with Auctioning."] = true
L["Will cancel auctions even if they have a bid on them, you will take an additional gold cost if you cancel an auction with bid."] = true
L["You do not have any players on your whitelist yet."] = true
L["You've been undercut."] = true
L["Your Buyout"] = true
L["Your auction has not been undercut."] = true
L["auctions of|r %s"] = true