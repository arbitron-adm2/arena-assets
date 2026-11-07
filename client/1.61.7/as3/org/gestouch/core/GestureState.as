package org.gestouch.core
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%z§.§1&6§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§`&<§;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.server.WhoPumpedReactionResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   use namespace gestouch_internal;
   
   public final class GestureState
   {
      
      private static var allStatesInitialized:Boolean;
      
      public static const IDLE:GestureState = new GestureState("IDLE");
      
      public static const POSSIBLE:GestureState = new GestureState("POSSIBLE");
      
      public static const RECOGNIZED:GestureState = new GestureState("RECOGNIZED",true);
      
      public static const BEGAN:GestureState = new GestureState("BEGAN");
      
      public static const CHANGED:GestureState = new GestureState("CHANGED");
      
      public static const ENDED:GestureState = new GestureState("ENDED",true);
      
      public static const CANCELLED:GestureState = new GestureState("CANCELLED",true);
      
      public static const FAILED:GestureState = new GestureState("FAILED",true);
      
      _initClass();
      
      private var name:String;
      
      private var eventType:String;
      
      private var validTransitionStateMap:Dictionary = new Dictionary();
      
      private var _isEndState:Boolean = false;
      
      public function GestureState(param1:String, param2:Boolean = false)
      {
         super();
         if(allStatesInitialized)
         {
            throw new IllegalOperationError("You cannot create gesture states." + "Use predefined constats like GestureState.RECOGNIZED");
         }
         this.name = "GestureState." + param1;
         this.eventType = "gesture" + param1.charAt(0).toUpperCase() + param1.substr(1).toLowerCase();
         this._isEndState = param2;
      }
      
      private static function _initClass() : void
      {
         IDLE.setValidNextStates(POSSIBLE);
         POSSIBLE.setValidNextStates(RECOGNIZED,BEGAN,FAILED);
         RECOGNIZED.setValidNextStates(IDLE);
         BEGAN.setValidNextStates(CHANGED,ENDED,CANCELLED);
         CHANGED.setValidNextStates(CHANGED,ENDED,CANCELLED);
         ENDED.setValidNextStates(IDLE);
         FAILED.setValidNextStates(IDLE);
         CANCELLED.setValidNextStates(IDLE);
         allStatesInitialized = true;
      }
      
      public function toString() : String
      {
         return this.name;
      }
      
      private function setValidNextStates(... rest) : void
      {
         var _loc2_:GestureState = null;
         for each(_loc2_ in rest)
         {
            this.validTransitionStateMap[_loc2_] = true;
         }
      }
      
      gestouch_internal function toEventType() : String
      {
         return this.eventType;
      }
      
      gestouch_internal function canTransitionTo(param1:GestureState) : Boolean
      {
         return param1 in this.validTransitionStateMap;
      }
      
      gestouch_internal function get isEndState() : Boolean
      {
         return this._isEndState;
      }
   }
}

