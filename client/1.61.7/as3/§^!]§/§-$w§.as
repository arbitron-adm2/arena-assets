package §^!]§
{
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §+$=§.§6#A§;
   import §0"L§.*;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2!-§.NextTurnEvent;
   import §2#i§.§!$A§;
   import §2#s§.§7"N§;
   import §3"_§.*;
   import §7$t§.§;#_§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §;#O§.§+%7§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §[%'§.§<"G§;
   import §^"y§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   
   public class §-$w§ extends Event
   {
      
      public var recordId:int;
      
      public function §-$w§(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(§0%v§.WEAPON_RESTORE,param2,param3);
         this.recordId = param1;
      }
      
      override public function clone() : Event
      {
         return new §-$w§(this.recordId,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WeaponShootEvent","type","bubbles","cancelable","recordId");
      }
   }
}

