package § &5§
{
   import § "d§.§,!c§;
   import § $q§.§-%f§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§]%s§;
   import §1#p§.§"Z§;
   import §3#a§.§-!`§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §6!'§
   {
      
      public var clip:MovieClip;
      
      private var t:Timer;
      
      public function §6!'§()
      {
         super();
         this.clip = §6#A§.§!&6§(§+"'§.§%$#§);
         this.clip.scaleX = this.clip.scaleY = 0.12;
         this.start();
      }
      
      private function onTimer(param1:Event) : void
      {
         this.t.stop();
         §]%s§.onComplete(this.clip,this.onComplete);
         this.clip.play();
         this.t.removeEventListener(TimerEvent.TIMER,this.onTimer);
         this.t = null;
      }
      
      private function onComplete(param1:MovieClip) : void
      {
         this.start();
      }
      
      private function start() : void
      {
         this.clip.stop();
         var _loc1_:uint = Math.round((5 + Math.random() * 25) * 1000);
         this.t = new Timer(_loc1_);
         this.t.addEventListener(TimerEvent.TIMER,this.onTimer);
         this.t.start();
      }
      
      public function destroy() : void
      {
         this.clip.stop();
         if(this.t)
         {
            this.t.stop();
            this.t.removeEventListener(TimerEvent.TIMER,this.onTimer);
            this.t = null;
         }
      }
   }
}

