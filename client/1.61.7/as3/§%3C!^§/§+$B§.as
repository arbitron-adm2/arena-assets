package §<!^§
{
   import §##y§.CollisionEvent;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §,"`§.§;8§;
   import §5#`§.§7%g§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §+$B§ extends §["l§
   {
      
      public function §+$B§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§, param7:Number = 1, param8:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function onCollision(param1:CollisionEvent) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
         var _loc3_:int = §;8§.§ !6§.value + owner.bonuses.getStatValue(Bonus.POISONING_ADDITION);
         for each(_loc4_ in _loc2_)
         {
            §7%g§.§>!%§(_loc4_,owner,_loc3_);
         }
         super.onCollision(param1);
      }
   }
}

