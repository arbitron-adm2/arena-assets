package §2"L§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §,"`§.§;8§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Dragon;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§?"&§;
   import §`%&§.§8U§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,'§
   {
      
      private static const §6@§:Array = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split("");
      
      public var seed:Number;
      
      public var counter:int;
      
      public function §,'§(param1:Number)
      {
         super();
         this.reset(param1);
      }
      
      public function reset(param1:Number) : void
      {
         this.seed = param1;
         this.counter = 0;
      }
      
      public function §?i§() : int
      {
         return this.counter;
      }
      
      private function §]%"§() : void
      {
         ++this.counter;
      }
      
      public function §5!p§() : Number
      {
         this.§]%"§();
         this.seed = (this.seed * 9301 + 49297) % 233280;
         return this.seed / 233280;
      }
      
      public function §]#W§(param1:Number, param2:Number) : Number
      {
         this.§]%"§();
         var _loc3_:Number = param2 - param1 + 1;
         var _loc4_:Number = this.§5!p§();
         return param1 + _loc3_ * _loc4_;
      }
      
      public function §,!q§(param1:Number, param2:Number) : Number
      {
         this.§]%"§();
         var _loc3_:Number = param2 - param1 + 1;
         var _loc4_:Number = this.§5!p§();
         return Math.floor(param1 + _loc3_ * _loc4_);
      }
      
      public function §6#;§() : Boolean
      {
         this.§]%"§();
         return this.§5!p§() < 0.5;
      }
      
      public function §^$r§(param1:uint = 1, param2:uint = 20) : String
      {
         var _loc3_:uint = this.§,!q§(param1,param2);
         var _loc4_:String = "";
         var _loc5_:uint = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ += §6@§[this.§,!q§(0,§6@§.length)];
            _loc5_++;
         }
         return _loc4_;
      }
   }
}

