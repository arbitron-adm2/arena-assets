package §^!]§
{
   import § &5§.§0&$§;
   import §&#h§.§!"b§;
   import §&#h§.§-"F§;
   import §0&F§.§0%v§;
   import §2#x§.§@!U§;
   import §3#a§.§[&A§;
   import §4'§.§^"p§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8#a§.*;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §=!p§.§1e§;
   import §=$#§.*;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.*;
   
   public class TeleportEvent extends Event
   {
      
      public var oldLoc:Point;
      
      public var newLoc:Point;
      
      public function TeleportEvent(param1:Point, param2:Point, param3:Boolean = false, param4:Boolean = false)
      {
         super(§0%v§.TELEPORT,param3,param4);
         this.oldLoc = param1;
         this.newLoc = param2;
      }
      
      override public function clone() : Event
      {
         return new TeleportEvent(this.oldLoc,this.newLoc,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("TeleportEvent","type","bubbles","cancelable","eventPhase","oldLoc","newLoc");
      }
   }
}

