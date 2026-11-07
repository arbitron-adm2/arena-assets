package §@!i§
{
   import §9%W§.§!7§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   
   public class §>$z§ extends §<#&§
   {
      
      private var values:Array;
      
      private var awards:Array;
      
      public function §>$z§(param1:uint, param2:Array, param3:Array, param4:uint, param5:uint, param6:uint, param7:Number, param8:Array, param9:PvpBattleType, param10:uint = 0, param11:Boolean = false)
      {
         super(param1,0,0,param4,param5,param6,param7,param8,param9,0,param10,param11);
         var _loc12_:uint = §<!9§.§4p§(§<!9§.getMaxLevel());
         if(param2 == null || param3 == null || param2.length != _loc12_ && param3.length != _loc12_)
         {
            throw new Error("Size of values and awards arrays must be equal " + _loc12_);
         }
         this.values = param2;
         this.awards = param3;
      }
      
      override public function get award() : uint
      {
         return this.awards[Application.userProfile.§7$F§().length - 1];
      }
      
      override public function get value() : uint
      {
         return this.values[Application.userProfile.§7$F§().length - 1];
      }
   }
}

