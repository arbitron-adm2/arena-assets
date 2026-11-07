package §1#p§
{
   import §2!-§.NewUnitEvent;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §"Z§
   {
      
      public var §&$n§:String;
      
      private var units:Array = [];
      
      private var §-X§:int = -1;
      
      private var number:uint;
      
      private var §%y§:uint = 0;
      
      private var teamId:int;
      
      private var playerType:§=$G§;
      
      private var profile:UserProfile;
      
      private var §#$h§:UserProfile = null;
      
      private var §,$"§:Boolean = false;
      
      private var §24§:uint;
      
      private var §2#q§:uint;
      
      public function §"Z§(param1:String, param2:uint, param3:§=$G§, param4:int)
      {
         super();
         this.§&$n§ = param1;
         this.number = param2;
         this.playerType = param3;
         this.teamId = param4;
      }
      
      public function getNumber() : uint
      {
         return this.number;
      }
      
      public function §=%o§() : §+%]§
      {
         if(!this.eliminated)
         {
            this.§-X§ = this.§-X§ >= this.units.length - 1 ? 0 : int(this.§-X§ + 1);
            return this.units[this.§-X§];
         }
         return null;
      }
      
      public function §8$9§(param1:int) : void
      {
         this.§-X§ = param1 - 1;
      }
      
      public function addUnit(param1:§+%]§, param2:Boolean = true) : void
      {
         this.units.push(param1);
         param1.§@$x§(this);
         if(param2)
         {
            Application.scene.dispatchEvent(new NewUnitEvent(param1));
         }
      }
      
      public function §1!n§(param1:Boolean = false) : Vector.<§+%]§>
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc3_ in this.units)
         {
            if(!_loc3_.disposed || param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function §2$8§(param1:Boolean = false) : int
      {
         return param1 ? int(this.units.length) : int(this.§'"H§());
      }
      
      public function §%#V§() : uint
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.§1!n§())
         {
            _loc1_ += _loc2_.hp;
         }
         return _loc1_;
      }
      
      public function §'"H§() : uint
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.units)
         {
            if(!_loc2_.disposed)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getTeamId() : int
      {
         return this.teamId;
      }
      
      public function §&%t§() : Array
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.units)
         {
            if(_loc2_.disposed)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §[$t§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.units)
         {
            if(_loc2_.disposed)
            {
               ++this.§%y§;
            }
            else
            {
               _loc1_.push(_loc2_);
            }
         }
         this.units = _loc1_;
      }
      
      public function §-Q§() : void
      {
         var _loc1_:§+%]§ = null;
         for each(_loc1_ in this.units)
         {
            _loc1_.§#+§();
         }
         this.§[$t§();
      }
      
      public function get eliminated() : Boolean
      {
         return this.units.length == 0;
      }
      
      public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         for each(_loc1_ in this.units)
         {
            _loc1_ = null;
         }
         this.units = [];
      }
      
      public function get §1%`§() : uint
      {
         return this.§%y§;
      }
      
      public function isLocal() : Boolean
      {
         return this.playerType == §=$G§.§0<§;
      }
      
      public function isAi() : Boolean
      {
         return this.playerType == §=$G§.AI;
      }
      
      public function isRemote() : Boolean
      {
         return this.playerType == §=$G§.§=q§;
      }
      
      public function §9$m§(param1:§=$G§) : void
      {
         this.playerType = param1;
      }
      
      public function §+",§() : §=$G§
      {
         return this.playerType;
      }
      
      public function §>y§(param1:Boolean) : void
      {
         if(param1)
         {
            Application.scene.§7#o§.§0$i§(this).§@!§().setDisabled(true);
         }
         this.§,$"§ = param1;
      }
      
      public function §^$b§() : Boolean
      {
         return this.§,$"§;
      }
      
      public function §&!G§() : UserProfile
      {
         return this.profile;
      }
      
      public function §2!E§(param1:UserProfile) : void
      {
         this.profile = param1;
      }
      
      public function §?"#§() : UserProfile
      {
         return this.§#$h§ ? this.§#$h§ : this.profile;
      }
      
      public function §4"p§(param1:UserProfile) : void
      {
         this.§#$h§ = param1;
      }
      
      public function §&$;§() : §+%]§
      {
         var _loc1_:§+%]§ = null;
         for each(_loc1_ in this.units)
         {
            if(_loc1_.record.equals(this.profile))
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function §@Q§(param1:§+%]§) : Boolean
      {
         var _loc2_:§+%]§ = null;
         for each(_loc2_ in this.units)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getLevel() : uint
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.units)
         {
            _loc1_ += _loc2_.record.getLevel();
         }
         return _loc1_;
      }
      
      public function §2!p§(param1:§+%]§, param2:§+%]§) : void
      {
         var _loc3_:int = int(this.units.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(this.units[_loc4_] == param2)
            {
               this.units[_loc4_] = param1;
               param1.§@$x§(this);
            }
            _loc4_++;
         }
         Application.scene.dispatchEvent(new NewUnitEvent(param1));
      }
      
      public function get §1!Y§() : uint
      {
         return this.§24§;
      }
      
      public function set §1!Y§(param1:uint) : void
      {
         this.§24§ = param1;
      }
      
      public function get §-$8§() : uint
      {
         return this.§2#q§;
      }
      
      public function set §-$8§(param1:uint) : void
      {
         this.§2#q§ = param1;
      }
   }
}

