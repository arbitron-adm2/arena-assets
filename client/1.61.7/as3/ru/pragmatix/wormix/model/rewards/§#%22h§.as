package ru.pragmatix.wormix.model.rewards
{
   import §##j§.§'"%§;
   import §##j§.§0!-§;
   import §##j§.§0m§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §0%[§.§6!?§;
   import §7"Q§.*;
   import config.achievements.*;
   import flash.errors.IllegalOperationError;
   
   public class §#"h§ extends §1%z§
   {
      
      private var §,&<§:uint;
      
      private var §9$E§:int;
      
      private var §[!3§:Number;
      
      public function §#"h§(param1:uint, param2:int, param3:Number, param4:Array)
      {
         this.§,&<§ = param1;
         this.§9$E§ = param2;
         this.§[!3§ = param3;
         super(param4);
      }
      
      public static function §-%X§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : Array
      {
         var _loc8_:Array = [];
         if(param1 > 0)
         {
            _loc8_.push(new §<!P§(param1));
         }
         if(param2 > 0)
         {
            _loc8_.push(new §7%R§(param2));
         }
         if(param3 > 0)
         {
            _loc8_.push(new §0m§(param3));
         }
         if(param4 > 0)
         {
            _loc8_.push(new §'"%§(param4));
         }
         if(param5 > 0)
         {
            _loc8_.push(§0!-§.§>$u§(param5));
         }
         if(param6 > 0)
         {
            _loc8_.push(§0!-§.medium(param6));
         }
         if(param7 > 0)
         {
            _loc8_.push(§0!-§.§?%r§(param7));
         }
         return _loc8_;
      }
      
      public function get rank() : uint
      {
         return this.§,&<§;
      }
      
      public function get pointsToNext() : int
      {
         return this.§9$E§;
      }
      
      public function get bonusRating() : Number
      {
         return this.§[!3§;
      }
   }
}

