package §@&H§
{
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §'%[§.§#&B§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§##l§;
   import §2#i§.§9##§;
   import §3"_§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8$V§.*;
   import §@!N§.§'+§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§<,§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class CheatDetectedEvent extends Event
   {
      
      public static const NAME:String = "CheatDetected";
      
      public var banType:uint;
      
      public var note:String;
      
      public function CheatDetectedEvent(param1:uint, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(NAME,param3,param4);
         this.banType = param1;
         this.note = param2;
      }
      
      override public function clone() : Event
      {
         return new CheatDetectedEvent(this.banType,this.note,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("CheatDetectedEvent","type","bubbles","cancelable","eventPhase","banType");
      }
   }
}

