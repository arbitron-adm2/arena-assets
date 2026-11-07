package §<!^§
{
   import §&"c§.§5$n§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §4Y§ extends §["l§
   {
      
      private static const §'%n§:uint = 100;
      
      private static const §@!q§:uint = 4;
      
      private static const §4!_§:int = -3;
      
      public function §4Y§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§, param7:Number = 1, param8:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(frames % 2 == 0)
         {
            this.checkTargets();
         }
      }
      
      private function checkTargets() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Number = NaN;
         var _loc1_:Vector.<§+%]§> = §<H§.§5"]§(x,y,§'%n§);
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.disposed && _loc2_ != owner && (!_loc2_.stable || _loc2_.crawling != 0))
            {
               _loc3_ = Math.atan2(_loc2_.y - y,_loc2_.x - x);
               §^"F§(_loc3_,§@!q§);
               §5!?§(0,§4!_§);
               break;
            }
         }
      }
   }
}

