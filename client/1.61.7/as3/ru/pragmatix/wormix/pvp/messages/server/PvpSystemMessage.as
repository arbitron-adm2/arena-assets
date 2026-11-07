package ru.pragmatix.wormix.pvp.messages.server
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§="_§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §3#a§.§-#M§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §;$8§.§6"E§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §=$#§.§1!$§;
   import §?#g§.Race;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class PvpSystemMessage
   {
      
      public static const UNDEFINED:int = -1;
      
      public static const DROPPED_BY_RECONNECTION_TIMEOUT:int = 1;
      
      public static const DROPPED_BY_COMMAND_TIMEOUT:int = 2;
      
      public static const DROPPED_BY_RESPONSE_TIMEOUT:int = 3;
      
      public static const SURRENDERED:int = 4;
      
      public static const CHEATER:int = 5;
      
      public static const DISCONNECTED:int = 6;
      
      public static const RECONNECTED:int = 7;
      
      public static const PLAYER_LONG_TIME_TURN:int = 8;
      
      public static const BATTLE_NOT_EXIST:int = 9;
      
      public static const PLAYER_NOT_FOUND_IN_BATTLE:int = 10;
      
      public static const PLAYER_JOINED_TO_BATTLE:int = 11;
      
      public static const PLAYER_REPEATED_COMMAND:int = 12;
      
      public static const PLAYER_SKIPPED_COMMAND:int = 14;
      
      public static const SERVER_RESTARTING:int = 15;
      
      public var type:int;
      
      public var playerNum:uint;
      
      public function PvpSystemMessage()
      {
         super();
      }
      
      public function toString() : String
      {
         return "PvpSystemMessage{" + "playerNum=" + this.playerNum + ",type=" + this.type + "}";
      }
      
      public function toChatString() : String
      {
         var _loc1_:String = "";
         switch(this.type)
         {
            case DROPPED_BY_RECONNECTION_TIMEOUT:
               _loc1_ = §0$N§.SYSPVP_OPPONENT_OUT;
               break;
            case DROPPED_BY_COMMAND_TIMEOUT:
               _loc1_ = §0$N§.SYSPVP_INACTIVITY_DROP;
               break;
            case DROPPED_BY_RESPONSE_TIMEOUT:
               _loc1_ = §0$N§.SYSPVP_UNCONFIRMED_EOT;
               break;
            case SURRENDERED:
               _loc1_ = §0$N§.SYSPVP_OPPONENT_SURRENDER;
               break;
            case CHEATER:
               _loc1_ = §0$N§.SYSPVP_OPPONENT_CHEATER;
               break;
            case DISCONNECTED:
               _loc1_ = §0$N§.SYSPVP_OPPONENT_LOST_CONNECTION;
               break;
            case RECONNECTED:
               _loc1_ = §0$N§.SYSPVP_OPPONENT_RETURNED;
               break;
            case PLAYER_LONG_TIME_TURN:
               _loc1_ = §0$N§.SYSPVP_LONG_TURN;
               break;
            case BATTLE_NOT_EXIST:
               _loc1_ = "";
               break;
            case PLAYER_NOT_FOUND_IN_BATTLE:
               _loc1_ = "";
               break;
            case PLAYER_JOINED_TO_BATTLE:
               _loc1_ = "";
               break;
            case PLAYER_REPEATED_COMMAND:
               _loc1_ = §0$N§.SYSPVP_PLAYER_REPEATED_COMMAND;
               break;
            case PLAYER_SKIPPED_COMMAND:
               _loc1_ = §0$N§.SYSPVP_PLAYER_SKIPPED_COMMAND;
               break;
            case SERVER_RESTARTING:
               _loc1_ = §0$N§.SYSPVP_SERVER_RESTARTING;
               break;
            default:
               _loc1_ = §0$N§.SYSPVP_UNDEFINED;
         }
         return _loc1_;
      }
      
      public function isPlayerDropped() : Boolean
      {
         var _loc1_:Boolean = false;
         switch(this.type)
         {
            case DROPPED_BY_RECONNECTION_TIMEOUT:
            case DROPPED_BY_COMMAND_TIMEOUT:
            case DROPPED_BY_RESPONSE_TIMEOUT:
            case SURRENDERED:
            case CHEATER:
               _loc1_ = true;
         }
         return _loc1_;
      }
      
      public function isPlayerSurrended() : Boolean
      {
         return this.type == SURRENDERED;
      }
   }
}

