package §2!-§
{
   import § #m§.§2#P§;
   import § #m§.§?A§;
   import §!$Z§.§6=§;
   import §"$+§.§@C§;
   import §#%!§.§[%U§;
   import §&"c§.§5$n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8$V§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class UnitKilledEvent extends Event
   {
      
      public var victim:§&"T§;
      
      public function UnitKilledEvent(param1:§&"T§, param2:Boolean = false, param3:Boolean = false)
      {
         super(§0%v§.UNIT_KILLED,param2,param3);
         this.victim = param1;
      }
      
      override public function clone() : Event
      {
         return new UnitKilledEvent(this.victim,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("UnitKilledEvent","type","bubbles","cancelable","eventPhase","victim");
      }
   }
}

