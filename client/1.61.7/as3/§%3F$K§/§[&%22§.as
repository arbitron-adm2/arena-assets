package §?$K§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § &5§.§0&$§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!L§.§3%b§;
   import §"#]§.§,#F§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §+$=§.§9"%§;
   import §+%S§.§[0§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §3"@§.§#$O§;
   import §4'§.§`"q§;
   import §6"'§.§9$Z§;
   import §65§.§%%o§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §7$t§.§^$E§;
   import §9&+§.*;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.Grenade;
   
   public class §[&"§ extends §%%o§
   {
      
      public static const NAME:String = "MINE_PUSHER";
      
      §§push(§§findproperty(§+%0§));
      var _temp_1:* = new <int>[-1,1];
      
      private static const §+%0§:Vector.<int> = new <int>[-1,1];
      
      private static const §;%p§:uint = 20;
      
      private static const §-^§:uint = 30;
      
      private static const §3&'§:uint = 200;
      
      private static const §%!e§:uint = 300;
      
      private var §9"0§:int;
      
      private var §0&>§:int;
      
      public function §[&"§(param1:uint, param2:uint = 0)
      {
         this.§9"0§ = param1 / 2;
         this.§0&>§ = param2 <= 0 ? int(§<H§.§,%P§) : int(param2);
         super(NAME,-1,0);
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.EOT,this.§8$n§);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.§8$n§);
      }
      
      private function §8$n§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Vector.<§&"T§> = null;
         var _loc4_:Vector.<§&"T§> = null;
         var _loc5_:§&"T§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!unit.disposed)
         {
            _loc2_ = [§;$n§,Grenade];
            _loc3_ = Application.scene.§@$I§.§;%a§.§"L§(_loc2_);
            _loc4_ = §<H§.§%$Q§(unit.x - this.§9"0§,0,unit.x + this.§9"0§,unit.y + this.§0&>§,_loc3_);
            for each(_loc5_ in _loc4_)
            {
               if(!_loc5_.disposed)
               {
                  _loc6_ = §8"%§.randomSeed.§,!q§(§;%p§,§-^§);
                  _loc7_ = §8"%§.randomSeed.§,!q§(§3&'§,§%!e§);
                  _loc8_ = §+%0§[§8"%§.randomSeed.§,!q§(0,1)];
                  _loc5_.§5!?§(_loc6_ * _loc8_,_loc7_);
               }
            }
         }
      }
   }
}

