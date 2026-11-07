package §2!-§
{
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.CancelBattle;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class AttackDodgedEvent extends Event
   {
      
      public var unit:§+%]§;
      
      public function AttackDodgedEvent(param1:§+%]§, param2:Boolean = false, param3:Boolean = false)
      {
         super(§0%v§.ATTACK_DODGED,param2,param3);
         this.unit = param1;
      }
      
      override public function clone() : Event
      {
         return new AttackDodgedEvent(this.unit,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("AttackDodgedEvent","type","bubbles","cancelable","unit");
      }
   }
}

