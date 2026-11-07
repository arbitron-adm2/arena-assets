package org.gestouch.events
{
   import § "d§.§,!c§;
   import §"% §.*;
   import §%$!§.§@!o§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §-%B§.*;
   import §1#p§.§"Z§;
   import §2#x§.§@!U§;
   import §3#a§.§-!`§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §=!p§.§1e§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §@!i§.§<!9§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §[!O§.§@&D§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GestureEvent extends Event
   {
      
      public static const GESTURE_IDLE:String = "gestureIdle";
      
      public static const GESTURE_POSSIBLE:String = "gesturePossible";
      
      public static const GESTURE_RECOGNIZED:String = "gestureRecognized";
      
      public static const GESTURE_BEGAN:String = "gestureBegan";
      
      public static const GESTURE_CHANGED:String = "gestureChanged";
      
      public static const GESTURE_ENDED:String = "gestureEnded";
      
      public static const GESTURE_CANCELLED:String = "gestureCancelled";
      
      public static const GESTURE_FAILED:String = "gestureFailed";
      
      public static const GESTURE_STATE_CHANGE:String = "gestureStateChange";
      
      public var newState:GestureState;
      
      public var oldState:GestureState;
      
      public function GestureEvent(param1:String, param2:GestureState, param3:GestureState)
      {
         super(param1,false,false);
         this.newState = param2;
         this.oldState = param3;
      }
      
      override public function clone() : Event
      {
         return new GestureEvent(type,this.newState,this.oldState);
      }
      
      override public function toString() : String
      {
         return formatToString("GestureEvent","type","oldState","newState");
      }
   }
}

