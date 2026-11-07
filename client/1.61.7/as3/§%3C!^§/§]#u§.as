package §<!^§
{
   import §&"c§.§5$n§;
   import §2"L§.§,'§;
   import §7$t§.§&!e§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §]#u§
   {
      
      public var paramSetEx:§5$n§;
      
      public var shardQuantity:§&$2§;
      
      public var shardClass:Class;
      
      private var owner:§+%]§;
      
      public function §]#u§(param1:§+%]§, param2:§5$n§, param3:§&$2§, param4:Class)
      {
         super();
         this.owner = param1;
         this.paramSetEx = param2;
         this.shardQuantity = param3;
         this.shardClass = param4;
      }
      
      public function explode(param1:Point, param2:Number = -1.57079632679) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:§,'§ = §8"%§.randomSeed;
         if(this.shardQuantity.value > 9)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"shell burst hack"));
         }
         var _loc7_:int = 0;
         while(_loc7_ < this.shardQuantity.value)
         {
            _loc4_ = param2 + Math.PI / _loc3_.§,!q§(8,24) * (_loc7_ % 2 == 0 ? 1 : -1);
            _loc5_ = param1.x + 20 * Math.cos(_loc4_);
            _loc6_ = param1.y + 20 * Math.sin(_loc4_);
            new this.shardClass(this.owner,_loc5_,_loc6_,_loc4_,_loc3_.§,!q§(4,9),this.paramSetEx);
            _loc7_++;
         }
      }
   }
}

