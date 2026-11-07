package §#"V§
{
   import § #g§.*;
   import § $q§.§3U§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#",§.§+!h§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%#u§.§@"c§;
   import §&!@§.§5"`§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§7%f§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4u§.ReagentHint;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%E§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'$h§
   {
      
      private static var groups:Object = {};
      
      private var log:§&`§ = new §&`§(§'$h§);
      
      public function §'$h§()
      {
         super();
      }
      
      public static function §9&D§(param1:String) : §8"@§
      {
         var _loc2_:§8"@§ = null;
         if(!param1 || !groups[param1])
         {
            return null;
         }
         for each(_loc2_ in groups[param1])
         {
            if(_loc2_.isPressed())
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §>!O§(param1:§8"@§) : void
      {
         if(!param1.§ #t§())
         {
            return;
         }
         param1.addEventListener(§8"@§.EVENT_PRESSED,§?! §);
         var _loc2_:Array = groups[param1.§ #t§()];
         if(!_loc2_)
         {
            _loc2_ = [];
            groups[param1.§ #t§()] = _loc2_;
         }
         _loc2_.push(param1);
      }
      
      public static function §6#K§(param1:§8"@§) : void
      {
         if(!param1.§ #t§())
         {
            return;
         }
         param1.removeEventListener(§8"@§.EVENT_PRESSED,§?! §);
         var _loc2_:Array = groups[param1.§ #t§()];
         if(_loc2_)
         {
            §6!?§.remove(_loc2_,param1);
         }
      }
      
      public static function §,!-§(param1:String) : void
      {
         var _loc3_:§8"@§ = null;
         var _loc2_:Array = groups[param1];
         if(_loc2_)
         {
            groups[param1] = null;
            for each(_loc3_ in _loc2_)
            {
               _loc3_.destroy();
            }
         }
      }
      
      private static function §?! §(param1:Event) : void
      {
         var _loc3_:§8"@§ = null;
         var _loc2_:§8"@§ = param1.target as §8"@§;
         for each(_loc3_ in groups[_loc2_.§ #t§()])
         {
            if(_loc2_ != _loc3_)
            {
               _loc3_.setPressed(false);
            }
         }
      }
   }
}

