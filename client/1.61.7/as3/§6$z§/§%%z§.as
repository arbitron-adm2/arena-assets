package §6$z§
{
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   
   public class §%%z§ extends BonusStat implements §%&&§
   {
      
      protected var §8<§:§]$q§;
      
      private var §4%W§:Boolean;
      
      public function §%%z§(param1:String, param2:Vector.<§@"I§>, param3:Boolean)
      {
         super(param1);
         this.§4%W§ = param3;
         this.§8<§ = §]$q§.§7!a§(param1,param2);
      }
      
      override public function add(param1:int) : void
      {
         var _loc2_:§+%]§ = null;
         super.add(param1);
         if(!this.§4%W§)
         {
            this.§[%x§(owner);
         }
         if(owner.squad)
         {
            for each(_loc2_ in owner.squad.§1!n§())
            {
               if(_loc2_ != owner)
               {
                  this.§[%x§(_loc2_);
               }
            }
         }
      }
      
      override public function subtract(param1:int) : void
      {
         var _loc2_:§+%]§ = null;
         super.subtract(param1);
         if(!this.§4%W§)
         {
            this.§@!X§(owner);
         }
         for each(_loc2_ in owner.squad.§1!n§())
         {
            if(!_loc2_.disposed && _loc2_ != owner)
            {
               this.§@!X§(_loc2_);
            }
         }
      }
      
      public function §[%x§(param1:§+%]§) : void
      {
         param1.bonuses.§]!X§(this.§8<§);
      }
      
      public function §@!X§(param1:§+%]§) : void
      {
         param1.bonuses.§9=§(this.§8<§);
      }
   }
}

