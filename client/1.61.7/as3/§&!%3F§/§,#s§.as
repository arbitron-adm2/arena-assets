package §&!?§
{
   import §%Q§.§;$W§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   
   public class §,#s§ implements §;$W§
   {
      
      private static const §;"i§:int = 2;
      
      private static const §4#'§:int = 300;
      
      private static const §>$B§:int = 5;
      
      public function §,#s§()
      {
         super();
      }
      
      public function check(param1:§+%]§) : Boolean
      {
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc3_:Number = param1.bonuses.§^#5§(Bonus.EXPLOSION_DEATH) ? 5 : 1;
         return param1.hp <= §>$B§ * _loc3_ && (_loc2_.length >= §;"i§ || _loc2_.length > 0 && _loc2_[0].hp >= §4#'§);
      }
   }
}

