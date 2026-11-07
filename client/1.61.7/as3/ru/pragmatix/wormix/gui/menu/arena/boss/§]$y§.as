package ru.pragmatix.wormix.gui.menu.arena.boss
{
   import § #g§.*;
   import § $q§.§3U§;
   import §"$+§.§`&$§;
   import §#"V§.§8"@§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §-@§.§+"A§;
   import §0"L§.§+# §;
   import §1#p§.§2=§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#T§.AtomBomb;
   import §3%J§.BuyBattleTokensDialog;
   import §4f§.§-&§;
   import §4u§.ReagentHint;
   import §5!9§.§6$,§;
   import §5"J§.*;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §='§.§,%u§;
   import §?#g§.§&"P§;
   import §?$7§.§+l§;
   import §?$7§.§6%k§;
   import §?X§.*;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@$§.*;
   import §@$z§.§[%2§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §`#x§.*;
   import §`%&§.§5$1§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §]$y§ extends §`&-§ implements §,%u§
   {
      
      private static const §>"5§:String = "bossButtonGroup";
      
      private var emptyIcon:DisplayObject;
      
      private var § >§:Vector.<§[%2§> = new Vector.<§[%2§>(0);
      
      private var §>#H§:§[%2§;
      
      private var §0"X§:§[%2§;
      
      private var §""Q§:§[%2§;
      
      private var §7$e§:§[%2§;
      
      private var §&!p§:§-$T§;
      
      private var newClip:DisplayObject;
      
      public function §]$y§(param1:DisplayObject = null)
      {
         super(param1);
         §#!`§().doubleClickEnabled = true;
         param1.addEventListener(MouseEvent.DOUBLE_CLICK,this.§6$a§);
         this.emptyIcon = getChildByName("emptyIcon");
         this.§>#H§ = new §[%2§(getChildByName("lockedBossBtn"),§>"5§);
         this.§>#H§.§[!u§(this.§<">§);
         this.§ >§.push(this.§>#H§);
         this.§0"X§ = new §[%2§(getChildByName("availableBossBtn"),§>"5§);
         this.§0"X§.§[!u§(this.§<">§);
         this.§ >§.push(this.§0"X§);
         this.§""Q§ = new §[%2§(getChildByName("completedTodayBossBtn"),§>"5§);
         this.§""Q§.§[!u§(this.§<">§);
         this.§ >§.push(this.§""Q§);
         this.§7$e§ = new §[%2§(getChildByName("completedBossBtn"),§>"5§);
         this.§7$e§.§[!u§(this.§<">§);
         this.§ >§.push(this.§7$e§);
         this.newClip = getChildByName("newClip");
         this.§]!v§(false);
         this.§ ]§();
      }
      
      private function §6$a§(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc8_:Function = null;
         var _loc2_:§+l§ = §6%k§.§>!+§(this.§&!p§.getId());
         var _loc3_:int = _loc2_.§^&§;
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         _loc4_ = this.§&!p§.getId();
         _loc5_ = _loc3_ + 1;
         var _loc6_:Boolean = _loc4_ < _loc5_;
         var _loc7_:Boolean = §8"%§.§%w§.§7#G§();
         if((this.§0"X§.isVisible() || this.§7$e§.isVisible()) && (_loc7_ || _loc6_))
         {
            if(§8"%§.§[%h§.§7$J§())
            {
               §+"A§.§;#q§(this.§&!p§,§8"%§.§%w§.§["x§);
            }
            else
            {
               _loc8_ = §8"%§.§%w§.getArenaMenu().getTabPanel().showAvailableBattlesCount;
               new BuyBattleTokensDialog(_loc8_).show();
            }
         }
      }
      
      private function §<">§(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      public function clear() : void
      {
         this.§9%%§();
         this.§ ]§();
         this.§]!v§(false);
      }
      
      private function §9%%§() : void
      {
         this.§""Q§.§5"Q§();
         this.§7$e§.§5"Q§();
         this.§0"X§.§5"Q§();
         this.§>#H§.§5"Q§();
      }
      
      private function §'H§() : void
      {
         this.emptyIcon.visible = false;
         this.§""Q§.setVisible(false);
         this.§7$e§.setVisible(false);
         this.§0"X§.setVisible(false);
         this.§>#H§.setVisible(false);
      }
      
      private function § ]§() : void
      {
         this.§'H§();
         this.emptyIcon.visible = true;
      }
      
      public function §%"m§(param1:§-$T§) : void
      {
         this.§^"H§(param1);
      }
      
      public function §^"H§(param1:§-$T§) : void
      {
         this.§&!p§ = param1;
         this.§'H§();
         this.§>#H§.setVisible(true);
         this.§>#H§.§9$n§(param1);
         this.§8#B§();
      }
      
      public function §&R§(param1:§-$T§) : void
      {
         this.§&!p§ = param1;
         this.§'H§();
         this.§0"X§.setVisible(true);
         this.§0"X§.§9$n§(param1);
         this.§8#B§();
      }
      
      public function §6D§(param1:§-$T§) : void
      {
         this.§&!p§ = param1;
         this.§'H§();
         this.§""Q§.setVisible(true);
         this.§""Q§.§9$n§(param1);
         this.§8#B§();
      }
      
      public function §&"]§(param1:§-$T§) : void
      {
         this.§&!p§ = param1;
         this.§'H§();
         this.§7$e§.setVisible(true);
         this.§7$e§.§9$n§(param1);
         this.§8#B§();
      }
      
      public function select() : void
      {
         var _loc1_:§8"@§ = null;
         for each(_loc1_ in this.§ >§)
         {
            if(_loc1_.isVisible())
            {
               _loc1_.setPressed(true);
               break;
            }
         }
      }
      
      public function §<$y§() : §-$T§
      {
         return this.§&!p§;
      }
      
      private function §8#B§() : void
      {
         this.§]!v§(this.§&!p§.isNew);
      }
      
      private function §]!v§(param1:Boolean) : void
      {
         this.newClip.visible = param1;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         container.removeEventListener(MouseEvent.DOUBLE_CLICK,this.§6$a§);
      }
   }
}

