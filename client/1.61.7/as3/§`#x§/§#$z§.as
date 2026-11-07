package §`#x§
{
   import §7$t§.§&!e§;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   
   public class §#$z§
   {
      
      public function §#$z§()
      {
         super();
         throw new Error("RequestHelper can\'t be instantiated!");
      }
      
      public static function §[%$§(param1:Vector.<int>) : Vector.<int>
      {
         var reagentsForBattle:Vector.<int> = param1;
         if(reagentsForBattle)
         {
            return reagentsForBattle.filter(function(param1:int, ... rest):Boolean
            {
               return param1 >= 0;
            });
         }
         return new Vector.<int>(0);
      }
   }
}

