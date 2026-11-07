package ru.pragmatix.preloader
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class §@$§
   {
      
      private var §2§:int = 0;
      
      private var §7§:int = 0;
      
      private var §+%§:int = 0;
      
      private var §-!§:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      public function §@$§(param1:MovieClip)
      {
         super();
         this.§&#§(param1);
         this.§]!§();
         this.§&#§(param1);
         param1.parent.removeChild(param1);
      }
      
      private function §]!§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§-!§)
         {
            _loc1_ = 0;
            _loc2_ = int(this.§-!§.length);
            while(_loc1_ < _loc2_)
            {
               this.§-!§[_loc1_].stop();
               this.§-!§[_loc1_].parent.removeChild(this.§-!§[_loc1_]);
               _loc1_++;
            }
            this.§-!§.length = this.§2§ = this.§7§ = this.§+%§ = 0;
         }
      }
      
      private function §&#§(param1:MovieClip) : void
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc5_:MovieClip = null;
         var _loc2_:int = param1.numChildren;
         if(_loc2_ > 0)
         {
            this.§2§ += _loc2_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = param1.getChildAt(_loc3_);
               if(_loc4_ is MovieClip)
               {
                  ++this.§7§;
                  _loc5_ = MovieClip(_loc4_);
                  if(_loc5_.totalFrames > 1)
                  {
                     var _loc6_:§@$§ = this;
                     var _loc7_:Number = _loc6_.§+%§ + 1;
                     _loc6_.§+%§ = _loc7_;
                     this.§-!§[this.§-!§.length] = _loc5_;
                  }
                  this.§&#§(_loc5_);
               }
               _loc3_++;
            }
         }
      }
   }
}

