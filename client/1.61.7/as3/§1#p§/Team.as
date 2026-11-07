package §1#p§
{
   import §^#[§.§&$2§;
   
   public class Team
   {
      
      private static const UNDEFINED:uint = 42;
      
      private var §9!4§:uint;
      
      private var §=c§:uint = 42;
      
      private var §7!5§:uint = 42;
      
      private var §=%j§:Vector.<§"Z§> = new Vector.<§"Z§>(0);
      
      private var §@"g§:§&$2§ = new §&$2§(0);
      
      public function Team(param1:uint, ... rest)
      {
         var _loc3_:§"Z§ = null;
         super();
         this.§9!4§ = param1;
         for each(_loc3_ in rest)
         {
            this.§7E§(_loc3_);
         }
      }
      
      public static function §;"R§(param1:§"Z§) : Boolean
      {
         return !param1.eliminated && !param1.§^$b§();
      }
      
      internal function §7E§(param1:§"Z§) : void
      {
         this.§=%j§.push(param1);
         this.§@"g§.value += 1;
      }
      
      public function get id() : uint
      {
         return this.§9!4§;
      }
      
      public function get squads() : Vector.<§"Z§>
      {
         return this.§=%j§;
      }
      
      public function §2%J§() : §"Z§
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = -1;
         var _loc3_:uint = 0;
         while(_loc3_ < this.§=%j§.length)
         {
            if(§;"R§(this.§=%j§[_loc3_]))
            {
               if(this.§=%j§[_loc3_].getNumber() > this.§7!5§)
               {
                  this.§=c§ = _loc3_;
                  _loc1_ = true;
                  break;
               }
               if(_loc2_ == -1)
               {
                  _loc2_ = int(_loc3_);
               }
            }
            _loc3_++;
         }
         if(!_loc1_)
         {
            this.§=c§ = _loc2_;
         }
         this.§7!5§ = this.§=%j§[this.§=c§].getNumber();
         return this.§=%j§[this.§=c§];
      }
      
      public function §>%N§() : Boolean
      {
         var _loc1_:uint = 0;
         if(this.§=c§ != UNDEFINED)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§=%j§.length)
            {
               if(§;"R§(this.§=%j§[_loc1_]) && this.§=%j§[_loc1_].getNumber() > this.§7!5§)
               {
                  return false;
               }
               _loc1_++;
            }
            return true;
         }
         return false;
      }
      
      public function isActive() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:§"Z§ = null;
         if(this.§=%j§.length > 0)
         {
            _loc1_ = false;
            _loc2_ = false;
            for each(_loc3_ in this.§=%j§)
            {
               if(!_loc3_.§^$b§())
               {
                  _loc1_ = true;
               }
               if(!_loc3_.eliminated)
               {
                  _loc2_ = true;
               }
               if(_loc1_ && _loc2_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §'!-§(param1:Boolean) : void
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:§"Z§ = null;
         if(!this.isActive() || param1)
         {
            for each(_loc2_ in this.§=%j§)
            {
               if(_loc2_.§^$b§() && !_loc2_.eliminated)
               {
                  _loc2_.§-Q§();
               }
            }
         }
         else
         {
            for each(_loc2_ in this.§=%j§)
            {
               if(!_loc2_.§^$b§())
               {
                  _loc3_ = _loc2_;
               }
            }
            for each(_loc2_ in this.§=%j§)
            {
               if(!_loc2_.eliminated && _loc2_.§^$b§())
               {
                  _loc2_.§9$m§(_loc3_.§+",§());
                  _loc2_.§4"p§(_loc3_.§&!G§());
                  _loc2_.§>y§(false);
               }
            }
         }
      }
      
      public function §;&?§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§=%j§.length)
         {
            if(!this.§=%j§[_loc2_].eliminated)
            {
               this.§=%j§[_loc2_].§[$t§();
               if(this.§=%j§[_loc2_].eliminated)
               {
                  _loc1_.push(this.§=%j§[_loc2_].getNumber());
               }
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function clear() : void
      {
         var _loc1_:§"Z§ = null;
         for each(_loc1_ in this.§=%j§)
         {
            _loc1_.clear();
         }
         this.§=%j§ = null;
         this.§@"g§.value = 0;
      }
      
      public function §[!p§() : Boolean
      {
         var _loc1_:uint = this.§=%j§ ? this.§=%j§.length : 0;
         return _loc1_ == this.§@"g§.value;
      }
   }
}

