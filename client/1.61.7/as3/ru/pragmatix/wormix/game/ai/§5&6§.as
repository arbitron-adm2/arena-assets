package ru.pragmatix.wormix.game.ai
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §="z§.§9%1§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   
   public class §5&6§
   {
      
      private var §;%w§:Array = [];
      
      public function §5&6§()
      {
         super();
      }
      
      public function §?%a§(param1:Function, param2:Object, ... rest) : §5&6§
      {
         var func:Function = param1;
         var fThis:Object = param2;
         var args:Array = rest;
         var f:Function = function():void
         {
            var _loc3_:* = undefined;
            var _loc2_:Array = [arguments.callee.next];
            for each(_loc3_ in args)
            {
               _loc2_.push(_loc3_);
            }
            func.apply(fThis,_loc2_);
         };
         f["next"] = this.next;
         this.§;%w§.push(f);
         return this;
      }
      
      private function next() : void
      {
         this.§;%w§.shift()();
      }
      
      public function run() : void
      {
         this.next();
      }
   }
}

