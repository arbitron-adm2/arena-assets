package §<!^§
{
   import §&"c§.§5$n§;
   import §2"L§.§^$y§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §?$W§ extends §9"A§
   {
      
      public static const §#!=§:Number = Math.PI / 6;
      
      public static const §^#g§:uint = 450;
      
      private var §5"§:Number;
      
      public function §?$W§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§, param7:Number = 0.5235987755982988, param8:uint = 450, param9:Number = 0.5, param10:Object = null)
      {
         param10 ||= §;%S§.§`"Q§;
         super(param1,param2,param3,param4,param5,param6,param8,param9,param10);
         this.§5"§ = param7;
         §1#b§ = 40;
         §'^§ = 2;
      }
      
      override protected function §^#d§(param1:int) : void
      {
         var _loc5_:§+%]§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:§+%]§ = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Vector.<§+%]§> = §<H§.§5"]§(x,y,param1);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = Math.atan2(_loc5_.y - y,_loc5_.x - x);
            if(!_loc5_.disposed && _loc5_ != owner && _loc5_.squad.getTeamId() != owner.squad.getTeamId() && Math.abs(_loc6_ - angle) < this.§5"§)
            {
               _loc7_ = §^$y§.distance(x - _loc5_.x,y - _loc5_.y);
               if(_loc7_ < _loc3_)
               {
                  _loc2_ = _loc5_;
                  _loc3_ = _loc7_;
               }
            }
         }
         target = _loc2_;
      }
   }
}

