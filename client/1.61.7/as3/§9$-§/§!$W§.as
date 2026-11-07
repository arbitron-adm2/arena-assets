package §9$-§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §"%H§.§`"w§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#`§.§4"y§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@!N§.§3!3§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §`v§.§2&H§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §!$W§ extends §4"y§ implements §2&H§
   {
      
      private static const §]!P§:String = §4$K§ + "common_ok/";
      
      private static const §'!]§:String = §4$K§ + "races_ok/";
      
      private static const § "Z§:String = §4$K§ + "friend_ok/";
      
      private static const §&!T§:String = §4$K§ + "levelup_ok/";
      
      private static const §@!%§:String = §4$K§ + "bosses_ok/";
      
      private static const §6"!§:String = §4$K§ + "bonus_ok/";
      
      private static const §'&$§:String = §4$K§ + "clan_ok/";
      
      private static const §[-§:String = §4$K§ + "battle_ok/";
      
      private static const §2$%§:String = §4$K§ + "rank_ok/";
      
      private static const § #4§:String = §4$K§ + "achievs_ok/";
      
      private static const §48§:String = §4$K§ + "weapons_ok/";
      
      private static const §'%J§:String = §4$K§ + "hats_ok/";
      
      private static const §,$-§:String = §4$K§ + "artifacts_ok/";
      
      public function §!$W§()
      {
         super();
         §[!=§ = §]!P§ + "wormixLogo" + §"$x§;
      }
      
      override public function §9#A§(param1:int) : String
      {
         var _loc2_:String = §@!%§;
         if(§6&'§.getInstance().contains(param1))
         {
            return _loc2_ + § !`§[param1 - 1];
         }
         if(§!#3§.getInstance().contains(param1))
         {
            param1 -= §!#3§.getInstance().§+#q§();
            return _loc2_ + §@$$§[param1 - 1];
         }
         return "";
      }
      
      override public function get bossIcon() : String
      {
         return §6"!§ + "weaponBonus" + §"$x§;
      }
      
      override public function get gladiatorComplete() : String
      {
         return §[-§ + "gladiator" + §"$x§;
      }
      
      override public function get bonusIcon() : String
      {
         return §6"!§ + "simpleBonus" + §"$x§;
      }
      
      override public function get rubyFoundInHouse() : String
      {
         return §6"!§ + "rubyBonus" + §"$x§;
      }
      
      override public function §?$^§(param1:§<,§) : String
      {
         return §6"!§ + §=$,§.valueOf(param1.type).value + "Bonus" + §"$x§;
      }
      
      override public function get newTeamMate() : String
      {
         return §]!P§ + "newTeammate" + §"$x§;
      }
      
      override public function get newTeamMateYou() : String
      {
         return §]!P§ + "newTeammateYou" + §"$x§;
      }
      
      override public function get callToPvp() : Array
      {
         return [§6"!§ + "weaponBonus" + §"$x§,§[-§ + "readyToBattle" + §"$x§];
      }
      
      override public function get requestPumpReaction() : String
      {
         return §]!P§ + "reactionRequest" + §"$x§;
      }
      
      override public function get activityPumpFriendsReaction() : String
      {
         return §]!P§ + "reaction" + §"$x§;
      }
      
      public function getAchieveIcon(param1:§`"w§) : String
      {
         return § #4§ + param1.icon + §"$x§;
      }
      
      override public function §@$W§(param1:§^$E§) : String
      {
         return §'%J§ + param1.getClipClassName() + §"$x§;
      }
      
      override public function §]#M§(param1:§;#_§) : String
      {
         return §48§ + param1.getMenuIcon() + §"$x§;
      }
      
      override public function §3k§(param1:§^%%§) : String
      {
         return §,$-§ + param1.getClipClassName() + §"$x§;
      }
      
      override public function §5&<§(param1:§`!d§) : String
      {
         return §&!T§ + param1.configName + §"$x§;
      }
      
      override public function §8$=§(param1:§`!d§) : String
      {
         return §'!]§ + param1.configName + §"$x§;
      }
      
      override public function §]!r§(param1:§`!d§, param2:§&"P§) : String
      {
         return §'!]§ + param1.configName + "_" + param2.§^#;§().toLocaleLowerCase() + §"$x§;
      }
      
      override public function get winInPvp() : String
      {
         return §[-§ + "victory" + §"$x§;
      }
      
      override public function get looseInPvp() : String
      {
         return §[-§ + "loose" + §"$x§;
      }
      
      override public function §@%t§(param1:Boolean) : String
      {
         return §6"!§ + (param1 ? "returnFriend" : "comeback") + "Bonus" + §"$x§;
      }
      
      override public function get callOnReturnFriendButton() : String
      {
         var _loc1_:Array = ["requestToReturnArena","requestToReturnArena0","requestToReturnBoss","requestToReturnHot"];
         return § "Z§ + _loc1_[int(Math.random() * _loc1_.length)] + §"$x§;
      }
      
      override protected function §[%9§(param1:String) : String
      {
         return §'#4§(§[-§,param1);
      }
      
      override protected function §4%=§(param1:String) : String
      {
         return §'#4§(§'&$§,param1);
      }
      
      override public function get newRank() : String
      {
         return §2$%§ + "newRank" + §"$x§;
      }
      
      override public function get rubyLeague() : String
      {
         return §2$%§ + "rubyLeague" + §"$x§;
      }
      
      override public function get winInRopeRace() : String
      {
         return §[-§ + "victoryRopeRace" + §"$x§;
      }
      
      override public function get looseInRopeRace() : String
      {
         return §[-§ + "looseRopeRace" + §"$x§;
      }
      
      override public function get winInRopeRaceCoop() : String
      {
         return §[-§ + "victoryRopeRaceCoop" + §"$x§;
      }
   }
}

