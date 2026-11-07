package §1#p§
{
   import §<$q§.§"%r§;
   import §<%c§.§>!^§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §@$1§
   {
      
      private static const UNDEFINED:§&$2§ = new §&$2§(42);
      
      private var §;%=§:Boolean;
      
      private var §3%x§:Boolean;
      
      private var §0"o§:Vector.<Team> = new Vector.<Team>(0);
      
      private var §7!b§:Array;
      
      private var §]o§:§&$2§ = new §&$2§(UNDEFINED.value);
      
      private var §>!&§:§&$2§ = new §&$2§(0);
      
      private var §0$T§:§&$2§ = new §&$2§(0);
      
      private var §!3§:Array = [];
      
      private var §<!4§:Array = [];
      
      private var §"h§:int = 1;
      
      public function §@$1§(param1:Vector.<§"Z§>, param2:Boolean, param3:Boolean)
      {
         var _loc4_:§"Z§ = null;
         var _loc5_:uint = 0;
         super();
         this.§;%=§ = param2;
         this.§3%x§ = param3;
         for each(_loc4_ in param1)
         {
            _loc5_ = uint(_loc4_.getTeamId());
            if(this.§0"o§.length > _loc5_ && this.§0"o§[_loc5_] != null)
            {
               this.§0"o§[_loc5_].§7E§(_loc4_);
            }
            else
            {
               this.§0"o§[_loc5_] = new Team(_loc5_,_loc4_);
               this.§>!&§.value += 1;
            }
            this.§!3§[_loc4_.getNumber()] = _loc4_.§%#V§();
         }
         this.§`$]§();
      }
      
      public function §4!T§(param1:uint) : Object
      {
         var _loc7_:Team = null;
         var _loc8_:§"Z§ = null;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         for each(_loc7_ in this.§0"o§)
         {
            for each(_loc8_ in _loc7_.squads)
            {
               if(_loc7_.id == param1)
               {
                  _loc6_ += _loc8_.§&!G§().getLevel();
                  _loc2_ += _loc8_.getLevel();
                  _loc3_++;
               }
               else
               {
                  _loc4_ += _loc8_.getLevel();
                  _loc5_++;
               }
            }
         }
         return {
            "ratio":_loc4_ / _loc5_ / (_loc2_ / _loc3_),
            "playerLevel":_loc6_ / _loc3_,
            "teamLevel":(_loc2_ - _loc6_) / _loc3_
         };
      }
      
      public function §=%o§() : §+%]§
      {
         var _loc2_:int = 0;
         var _loc3_:§"Z§ = null;
         this.§]o§.value = this.§;X§();
         var _loc1_:§"Z§ = this.§0"o§[this.§]o§.value].§2%J§();
         ++_loc1_.§-$8§;
         if(this.§<!4§.indexOf(_loc1_.getNumber()) == -1)
         {
            this.§<!4§.push(_loc1_.getNumber());
         }
         else
         {
            _loc2_ = 0;
            for each(_loc3_ in this.§@#M§())
            {
               if(!_loc1_.§^$b§() && Boolean(_loc3_.§'"H§()))
               {
                  _loc2_++;
               }
            }
            if(this.§<!4§.length >= _loc2_)
            {
               this.§<!4§.length = 0;
            }
         }
         if(this.§<!4§.length == 0)
         {
            ++this.§"h§;
         }
         return _loc1_.§=%o§();
      }
      
      public function §?%j§(param1:UserProfile) : §"Z§
      {
         var _loc2_:Team = null;
         var _loc3_:§"Z§ = null;
         loop0:
         for each(_loc2_ in this.§0"o§)
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_.squads;
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(!_loc3_.§&!G§().equals(param1));
            return _loc3_;
         }
         return null;
      }
      
      public function §@#M§() : Array
      {
         return this.§7!b§;
      }
      
      public function §]&1§(param1:int) : Vector.<§"Z§>
      {
         return this.§0"o§[param1].squads;
      }
      
      public function §6H§() : Vector.<Team>
      {
         var _loc2_:Team = null;
         var _loc1_:Vector.<Team> = new Vector.<Team>(0);
         for each(_loc2_ in this.§0"o§)
         {
            if(_loc2_.isActive())
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §5#h§(param1:Boolean = false) : Vector.<§+%]§>
      {
         var _loc3_:Team = null;
         var _loc4_:§"Z§ = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc3_ in this.§0"o§)
         {
            for each(_loc4_ in _loc3_.squads)
            {
               _loc2_ = _loc2_.concat(_loc4_.§1!n§(param1));
            }
         }
         return _loc2_;
      }
      
      public function §="T§(param1:§+%]§, param2:Boolean = false, param3:Boolean = false) : Vector.<§+%]§>
      {
         var _loc6_:Team = null;
         var _loc7_:§"Z§ = null;
         var _loc8_:Vector.<§+%]§> = null;
         var _loc9_:§+%]§ = null;
         var _loc4_:uint = uint(param1.squad.getTeamId());
         var _loc5_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc6_ in this.§0"o§)
         {
            for each(_loc7_ in _loc6_.squads)
            {
               if(_loc7_.getTeamId() == _loc4_)
               {
                  _loc8_ = _loc7_.§1!n§(param2);
                  for each(_loc9_ in _loc8_)
                  {
                     if(param3 || _loc9_ != param1)
                     {
                        _loc5_.push(_loc9_);
                     }
                  }
               }
            }
         }
         return _loc5_;
      }
      
      public function §6"M§(param1:§+%]§, param2:Boolean = false) : Vector.<§+%]§>
      {
         var _loc5_:Team = null;
         var _loc6_:§"Z§ = null;
         var _loc3_:uint = uint(param1.squad.getTeamId());
         var _loc4_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc5_ in this.§0"o§)
         {
            for each(_loc6_ in _loc5_.squads)
            {
               if(_loc6_.getTeamId() != _loc3_)
               {
                  _loc4_ = _loc4_.concat(_loc6_.§1!n§(param2));
               }
            }
         }
         return _loc4_;
      }
      
      public function §'!-§() : void
      {
         var _loc1_:Team = null;
         for each(_loc1_ in this.§0"o§)
         {
            _loc1_.§'!-§(this.§3%x§);
         }
      }
      
      public function §?#7§() : Vector.<Array>
      {
         var _loc2_:Team = null;
         var _loc3_:§"Z§ = null;
         var _loc1_:Vector.<Array> = new Vector.<Array>(0);
         for each(_loc2_ in this.§0"o§)
         {
            _loc1_[_loc2_.id] = [];
            for each(_loc3_ in _loc2_.squads)
            {
               _loc1_[_loc2_.id] = _loc1_[_loc2_.id].concat(_loc3_.§&%t§());
            }
         }
         return _loc1_;
      }
      
      public function §;&?§() : Array
      {
         var _loc2_:Team = null;
         var _loc1_:Array = [];
         this.§0$T§.value = 0;
         for each(_loc2_ in this.§0"o§)
         {
            _loc1_ = _loc1_.concat(_loc2_.§;&?§());
            if(!_loc2_.isActive())
            {
               ++this.§0$T§.value;
            }
         }
         this.§`$]§();
         return _loc1_;
      }
      
      public function §+$$§() : Array
      {
         var _loc3_:§"Z§ = null;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§!3§.length)
         {
            _loc1_.push(0);
            _loc2_++;
         }
         for each(_loc3_ in this.§7!b§)
         {
            _loc2_ = int(_loc3_.getNumber());
            _loc1_[_loc2_] = int(100 * _loc3_.§%#V§() / this.§!3§[_loc2_]);
         }
         return _loc1_;
      }
      
      public function §""c§(param1:int) : int
      {
         var _loc2_:§"Z§ = null;
         for each(_loc2_ in this.§7!b§)
         {
            if(_loc2_.getNumber() == param1)
            {
               return this.§!3§[param1];
            }
         }
         return 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Team = null;
         for each(_loc1_ in this.§0"o§)
         {
            _loc1_.clear();
         }
         this.§0"o§ = null;
         this.§7!b§ = null;
      }
      
      public function §'h§() : void
      {
         var _loc1_:UserProfile = null;
         var _loc4_:DisplayObjectContainer = null;
         _loc1_ = UserProfile.§'#3§("rope_racer",5,Race.§+#T§,1,0,0);
         var _loc2_:§"Z§ = new §"Z§("Player2",2,§=$G§.AI,§>!^§.§?$s§);
         var _loc3_:§+%]§ = new §+%]§(_loc1_,0,0,true);
         _loc3_.§#%O§ = false;
         _loc3_.clip.visible = false;
         if(_loc3_.clip)
         {
            _loc4_ = Application.scene.§=P§(_loc3_.layer);
            _loc4_.addChild(_loc3_.clip);
         }
         _loc2_.addUnit(_loc3_);
         _loc2_.§2!E§(_loc1_);
         this.§0"o§[§>!^§.§?$s§] = new Team(§>!^§.§?$s§,_loc2_);
         var _temp_2:* = this.§>!&§;
         ++this.§>!&§.value;
         this.§;%=§ = false;
         this.§3%x§ = true;
         this.§`$]§();
      }
      
      private function §;X§() : uint
      {
         if(!this.§;%=§ && this.§]o§.value != UNDEFINED.value && !this.§0"o§[this.§]o§.value].§>%N§())
         {
            return this.§]o§.value;
         }
         var _loc1_:uint = this.§]o§.value + 1;
         while(_loc1_ < this.§0"o§.length)
         {
            if(this.§0"o§[_loc1_].isActive())
            {
               return _loc1_;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§0"o§.length)
         {
            if(this.§0"o§[_loc1_].isActive())
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return 0;
      }
      
      private function §`$]§() : void
      {
         var _loc1_:Team = null;
         var _loc2_:§"Z§ = null;
         this.§7!b§ = [];
         for each(_loc1_ in this.§0"o§)
         {
            for each(_loc2_ in _loc1_.squads)
            {
               this.§7!b§.push(_loc2_);
            }
         }
      }
      
      public function §`%0§() : uint
      {
         return this.§>!&§.value - this.§0$T§.value;
      }
      
      public function §;"g§() : Boolean
      {
         var _loc2_:Team = null;
         var _loc1_:Boolean = true;
         for each(_loc2_ in this.§0"o§)
         {
            _loc1_ &&= _loc2_.§[!p§();
         }
         return _loc1_;
      }
      
      public function get §?"X§() : uint
      {
         return this.§"h§;
      }
      
      public function §="v§() : int
      {
         var _loc2_:§"Z§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7!b§)
         {
            _loc1_ += _loc2_.§2$8§(true);
         }
         return Math.round(_loc1_ / this.§7!b§.length);
      }
   }
}

