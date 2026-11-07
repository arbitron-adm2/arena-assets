package §["3§
{
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§<"4§;
   import §#"V§.§?%>§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-8§.*;
   import §0%[§.§0%§;
   import §0&F§.UpgradeEvent;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2"v§.§@G§;
   import §2o§.§]#;§;
   import §3#a§.*;
   import §3%J§.§;&<§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §?#g§.§"&>§;
   import §?$7§.§6%k§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§8%6§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §`%&§.§`§;
   import config.§#!"§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.ui.Mouse;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class § "c§ extends §<"4§
   {
      
      private var equip:§&!e§;
      
      private var icon:§3U§;
      
      private var buyBtn:§?%>§;
      
      private var §%"R§:int;
      
      public function § "c§()
      {
         super(§6#A§.§!&6§("BuyEquipIcon"));
         this.icon = new §3U§(getChildByName("icon"),true,false);
         this.buyBtn = §!&5§.§7#[§(getChildByName("buyBtn"));
         this.buyBtn.setText(§0$N§.BUTTON_BUY,§"-§.§+$m§);
         this.buyBtn.setDisabled(false);
         this.buyBtn.§[!u§(this.§8!L§);
         MovieClip(container).buttonMode = false;
      }
      
      private function §8!L§(param1:Event) : void
      {
         var _loc2_:§8%6§ = null;
         var _loc3_:§8%6§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:§9#x§ = null;
         var _loc8_:String = null;
         if(!this.equip.getHideInShop())
         {
            §8"%§.§8"!§.§3J§(this.equip,this.§`&1§);
         }
         else
         {
            _loc2_ = §6%k§.§`!7§(this.equip.getId());
            _loc3_ = §6%k§.§>G§(this.equip.getId());
            _loc4_ = §,$O§.§5#x§(this.equip.getId()) || §!#^§.§`!2§(int(this.equip.getId() / 10) * 10);
            _loc5_ = §#!"§.§-#,§(this.equip.getId());
            var _temp_5:* = _loc2_ || _loc3_ || _loc4_ || _loc5_;
            _loc6_ = _loc2_ || _loc3_ || _loc4_ || _loc5_;
            _loc7_ = _loc6_ ? §8"%§.§8"!§.§]&2§(this.equip.getId(),this.§%"R§) : null;
            _loc8_ = _loc3_ ? §0%§.format(§0$N§.SEARCH_ZONE_GRADE_R,{"bossName":_loc3_.§7%z§()}) : "";
            if(Boolean(_loc6_) && Boolean(_loc7_) && _loc7_.§?#1§)
            {
               new §;&<§().§8!<§(_loc7_);
            }
            else if(_loc2_)
            {
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0%§.format(§0$N§.EQUIP_IS_ON_BOSS,{"bossName":_loc2_.§7%z§()}));
            }
            else if(_loc4_)
            {
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.SEARCH_ZONE_GRADE_T);
            }
            else if(_loc5_)
            {
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.SEARCH_ZONE_GRADE_A + (_loc8_ ? "\n" + _loc8_ : ""));
            }
            else if(_loc3_)
            {
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,_loc8_);
            }
         }
      }
      
      public function setItem(param1:§&!e§, param2:int) : void
      {
         var _loc3_:§-$T§ = null;
         var _loc4_:§-$T§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:String = null;
         this.equip = param1;
         this.icon.setItem(param1);
         this.§%"R§ = param2;
         if(!this.equip.getHideInShop())
         {
            getChildByName("lock").visible = false;
         }
         else
         {
            _loc3_ = §6%k§.§`!7§(this.equip.getId());
            _loc4_ = §6%k§.§>G§(this.equip.getId());
            _loc5_ = §,$O§.§5#x§(this.equip.getId()) || §!#^§.§`!2§(int(this.equip.getId() / 10) * 10);
            _loc6_ = §#!"§.§-#,§(this.equip.getId());
            _loc7_ = Boolean(_loc3_) || _loc5_ || _loc6_;
            _loc8_ = (_loc7_) && Boolean(§8"%§.§8"!§.§]&2§(this.equip.getId(),param2));
            _loc9_ = _loc4_ ? §0%§.format(§0$N§.SEARCH_ZONE_GRADE_R,{"bossName":_loc4_.§7%z§()}) : "";
            if(_loc7_ && !_loc8_)
            {
               this.buyBtn.setText(§0$N§.BUTTON_INFO,§"-§.§+$m§);
            }
            else
            {
               this.buyBtn.setText(§0$N§.BUTTON_BUY,§"-§.§+$m§);
            }
            if(_loc3_)
            {
               setQtip(§0%§.format(§0$N§.EQUIP_IS_ON_BOSS,{"bossName":_loc3_.§7%z§()}),§;#^§.§4!f§);
            }
            else if(_loc5_)
            {
               setQtip(§0$N§.SEARCH_ZONE_GRADE_T,§;#^§.§4!f§);
            }
            else if(_loc6_)
            {
               setQtip(§0$N§.SEARCH_ZONE_GRADE_A + (_loc9_ ? "\n" + _loc9_ : ""),§;#^§.§4!f§,§+"'§.§9%>§);
            }
            else if(_loc4_)
            {
               setQtip(_loc9_,§;#^§.§4!f§,§+"'§.§9%>§);
            }
            else
            {
               setQtip("");
            }
         }
         if(§,! §.§1%q§(this.equip))
         {
            getChildByName("notAvailableUpgrade").visible = false;
         }
      }
      
      private function §`&1§() : void
      {
         dispatchEvent(new §]#;§(null,null));
      }
   }
}

