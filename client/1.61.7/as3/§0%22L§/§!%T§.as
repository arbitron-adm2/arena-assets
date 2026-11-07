package §0"L§
{
   import § !P§.*;
   import §"% §.LevelUpDialog;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#k§.§-#S§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §'!Z§.§2!H§;
   import §+&<§.*;
   import §-!U§.*;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#W§.§ #,§;
   import §4'§.§^"p§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=$#§.*;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   use namespace gestouch_internal;
   
   public class §!%T§ implements §&%c§
   {
      
      protected const §;U§:§&$2§ = new §&$2§(-242);
      
      protected const §8!V§:§&$2§ = new §&$2§(-687);
      
      protected var state:§&$2§ = this.§8!V§;
      
      protected var §]"'§:Object = {};
      
      protected var §-#0§:Object = {};
      
      public function §!%T§(param1:Object)
      {
         super();
         this.§]"'§ = param1;
         this.§-6§();
      }
      
      private function §]-§(param1:Event) : void
      {
         this.deactivate();
      }
      
      public function activate() : void
      {
         if(Boolean(this.state == this.§8!V§) && Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            this.state = this.§;U§;
            this.§-6§();
            § "N§.scene.stage.addEventListener(Event.ENTER_FRAME,this.onFrame);
            §8"%§.§?!W§.§4"m§.activeUnit.addEventListener(§0%v§.DISPOSED,this.§]-§);
         }
      }
      
      public function deactivate() : void
      {
         if(Boolean(this.state == this.§;U§) && Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            this.state = this.§8!V§;
            § "N§.scene.stage.removeEventListener(Event.ENTER_FRAME,this.onFrame);
            if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(§8"%§.§?!W§.§4"m§.activeUnit))
            {
               §8"%§.§?!W§.§4"m§.activeUnit.removeEventListener(§0%v§.DISPOSED,this.§]-§);
            }
         }
      }
      
      protected function onFrame(param1:Event) : void
      {
         this.§-6§();
      }
      
      protected function isPressed(param1:String) : Boolean
      {
         var _loc2_:§'#E§ = null;
         var _loc11_:Boolean = false;
         var _loc12_:uint = 0;
         _loc2_ = §8"%§.§&S§;
         var _loc3_:Boolean = _loc2_.§5#6§();
         var _loc4_:Boolean = _loc2_.§[!+§();
         var _loc5_:Boolean = _loc2_.§ $_§();
         var _loc6_:Boolean = _loc2_.§ p§();
         var _loc7_:Boolean = _loc2_.§[!T§();
         var _loc8_:Boolean = _loc2_.§!%!§();
         var _loc9_:Boolean = _loc2_.§1$O§();
         var _loc10_:Boolean = _loc2_.§-&!§();
         for each(_loc12_ in this.§]"'§[param1])
         {
            if(§8"%§.key.§;"M§(_loc12_))
            {
               if((!§3!f§.§-!t§(_loc12_) || _loc3_) && (!§3!f§.§%!5§(_loc12_) || _loc4_) && (!§3!f§.§[G§(_loc12_) || _loc5_) && (!§3!f§.§'#i§(_loc12_) || _loc6_) && (!§3!f§.§,%`§(_loc12_) || _loc7_) && (!§3!f§.§["k§(_loc12_) || _loc8_) && (!§3!f§.§ "m§(_loc12_) || _loc9_) && (!§3!f§.§&%I§(_loc12_) || _loc10_))
               {
                  _loc11_ = true;
               }
               break;
            }
         }
         return _loc11_;
      }
      
      protected function §7#r§(param1:String) : Boolean
      {
         var _loc2_:§'#E§ = null;
         var _loc12_:uint = 0;
         return !this.isPressed(param1);
      }
      
      protected function §-6§() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.§]"'§)
         {
            this.§-#0§[_loc1_] = this.isPressed(_loc1_);
         }
      }
   }
}

