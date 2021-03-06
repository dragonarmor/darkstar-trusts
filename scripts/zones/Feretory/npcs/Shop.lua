-----------------------------------
-- Area: Windurst Waters
-- NPC:  Fomina
-- Only sells when Windurst controlls Elshimo Lowlands
-- Confirmed shop stock, August 2013
-----------------------------------

require("scripts/globals/shop");
require("scripts/globals/conquest");
package.loaded["scripts/zones/Windurst_Waters/TextIDs"] = nil;
require("scripts/zones/Windurst_Waters/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local aura = player:getVar(FerretoryAura);    
	
    if (aura < 2) then 
       local stock_1 = {
            0x0264,    55,   --Kazham Peppers
            0x1150,    55,   --Kazham Pineapple
            0x1126,    36,   --Mithran Tomato
            0x0272,   234,   --Black Pepper
            0x0276,    88,   --Ogre Pumpkin
            0x0278,   110,   --Kukuru Bean
            0x0583,  1656    --Phalaenopsis
        }
		showShop(player, STATIC, stock_1);
	   
	   
    else if (aura > 2 and aura <5) then
		local stock_2 = {
            0x0264,    55,   --Kazham Peppers
            0x1150,    55,   --Kazham Pineapple
            0x1126,    36,   --Mithran Tomato
            0x0272,   234,   --Black Pepper
            0x0276,    88,   --Ogre Pumpkin
            0x0278,   110,   --Kukuru Bean
            0x0583,  1656    --Phalaenopsis
        }
        showShop(player, STATIC, stock_2);
    else if (aura > 4) then
		local stock_3 = {
            0x0264,    55,   --Kazham Peppers
            0x1150,    55,   --Kazham Pineapple
            0x1126,    36,   --Mithran Tomato
            0x0272,   234,   --Black Pepper
            0x0276,    88,   --Ogre Pumpkin
            0x0278,   110,   --Kukuru Bean
            0x0583,  1656    --Phalaenopsis
        }
        showShop(player, STATIC, stock_3);
    else
	player:PrintToPlayer("Stone Merchant: Sorry, I can't help you", 0xD);
    end
	end
	end

end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;
