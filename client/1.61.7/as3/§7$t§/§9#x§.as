package §7$t§
{
   import § !8§.§`!d§;
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-"N§.§+#R§;
   import §0!§.§6#z§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§@#%§;
   import §2!-§.HpChangeEvent;
   import §2"L§.§,'§;
   import §3#a§.§[&A§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §9%W§.§!7§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.*;
   import §`%&§.§8U§;
   import com.greensock.motionPaths.PathFollower;
   import config.§28§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   public class §9#x§ extends §=?§
   {
      
      private var bundleType:uint;
      
      private var code:String;
      
      private var cost:Number;
      
      private var craftId:int;
      
      private var order:int;
      
      private var items:Array = [];
      
      private var §@$4§:Vector.<§7,§>;
      
      private var §7%b§:Vector.<§7,§>;
      
      private var textCurrency:String;
      
      private var isNew:Boolean;
      
      private var §3&D§:Boolean;
      
      private var §9%n§:Boolean = true;
      
      public function §9#x§()
      {
         super(§]$q§.BUNDLE);
      }
      
      public static function §+"D§(param1:BundleStructure) : §9#x§
      {
         var _loc4_:Array = null;
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc2_:§9#x§ = null;
         var _loc3_:Object = §]&C§.§8#l§(int(param1.code));
         if(_loc3_)
         {
            _loc4_ = §1%z§.§!!Z§(param1.items).§@$0§(true);
            _loc5_ = §>!n§.§8%@§(param1.votes);
            _loc6_ = Social.§-%c§.§4!]§(_loc5_,§>!n§.§-l§());
            _loc7_ = {
               "id":param1.code,
               "order":param1.order,
               "bundleType":_loc3_.type,
               "craftId":_loc3_.craftId,
               "isNew":_loc3_.isNew,
               "name":"BUNDLE." + _loc3_.name + ".NAME",
               "description":"BUNDLE." + _loc3_.name + ".DESCRIPTION",
               "duration":param1.expireInSeconds,
               "discount":param1.discount,
               "code":param1.code,
               "cost":_loc5_,
               "items":_loc4_,
               "textCurrency":_loc6_,
               "iconClassName":"BoosterReagentShort",
               "realprice":0,
               "price":0
            };
            _loc2_ = new §9#x§();
            _loc2_.initFromConfig(_loc7_);
         }
         return _loc2_;
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         super.initFromConfig(param1);
         §3!u§ = param1.discount;
         this.bundleType = param1.bundleType;
         this.textCurrency = param1.textCurrency;
         duration = param1.duration;
         this.items = param1.items;
         this.code = param1.code;
         this.cost = param1.cost;
         this.order = param1.order;
         this.craftId = param1.craftId;
         this.isNew = param1.isNew;
      }
      
      public function §?%d§() : Boolean
      {
         var _loc1_:UserProfile = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:§&"P§ = null;
         var _loc10_:int = 0;
         var _loc11_:Boolean = false;
         var _loc12_:§9x§ = null;
         var _loc13_:§;#_§ = null;
         var _loc14_:BackpackItem = null;
         var _loc15_:BackpackItem = null;
         var _loc16_:§&!e§ = null;
         var _loc17_:Boolean = false;
         var _loc18_:§-$T§ = null;
         this.§@$4§ = new Vector.<§7,§>(0);
         this.§7%b§ = new Vector.<§7,§>(0);
         _loc1_ = Application.userProfile;
         var _loc2_:§'"-§ = _loc1_.§3%^§();
         var _loc3_:§`!d§ = _loc1_.getRace();
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = int(this.items.length);
         while(_loc5_ < _loc6_)
         {
            _loc7_ = int(§9x§(this.items[_loc5_]).getId());
            _loc8_ = false;
            if(this.items[_loc5_] is §%&G§)
            {
               _loc8_ = §]V§.§ $l§(_loc7_,_loc1_);
            }
            else if(this.items[_loc5_] is §6#v§)
            {
               for each(_loc9_ in _loc1_.§1$4§())
               {
                  if(_loc9_.§`!§(_loc7_))
                  {
                     _loc8_ = true;
                     break;
                  }
               }
               if(!_loc8_)
               {
                  _loc10_ = int(§28§.§,%9§(_loc7_).raceId);
                  _loc11_ = §]V§.§ $l§(_loc10_,_loc1_);
                  if(!_loc11_)
                  {
                     for each(_loc12_ in this.items)
                     {
                        if(_loc12_ is §%&G§)
                        {
                           if(_loc12_.getId() == _loc10_)
                           {
                              _loc11_ = true;
                              break;
                           }
                        }
                     }
                  }
                  if(!_loc11_)
                  {
                     _loc8_ = true;
                  }
               }
            }
            else if(this.items[_loc5_] is §`%g§)
            {
               _loc8_ = §1!S§.§%$6§(_loc7_,_loc1_);
               if(!_loc8_)
               {
                  _loc13_ = §<$c§.§ !=§(_loc7_);
                  if((Boolean(_loc13_)) && _loc13_.getInfinite())
                  {
                     _loc14_ = _loc2_.§8&E§(_loc7_);
                     _loc8_ = (Boolean(_loc14_)) && _loc14_.§8"I§();
                  }
               }
            }
            else if(this.items[_loc5_] is §]$X§)
            {
               _loc15_ = _loc1_.§,%o§().§8&E§(_loc7_);
               _loc16_ = §<$c§.§8&E§(_loc7_,_loc3_);
               _loc17_ = §<$c§.§8&E§(_loc7_,_loc3_).§8!t§() > 0;
               _loc8_ = Boolean(_loc15_) && !_loc17_;
               if(_loc17_)
               {
                  this.§3&D§ = true;
                  if(_loc15_)
                  {
                     this.§7%b§.push(this.items[_loc5_]);
                  }
                  _loc18_ = §6&'§.getInstance().§^u§(_loc7_) || §!#3§.getInstance().§^u§(_loc7_);
                  if(_loc18_)
                  {
                     if(requiredLevel < _loc18_.§""H§())
                     {
                        §6$O§(_loc18_.§""H§());
                     }
                     if(this.§9%n§ && requiredLevel > Application.userProfile.getLevel())
                     {
                        this.§9%n§ = false;
                     }
                  }
                  else
                  {
                     if(requiredLevel < _loc16_.§,X§())
                     {
                        §6$O§(_loc16_.§,X§());
                     }
                     if(this.§9%n§ && requiredLevel > Application.userProfile.getLevel())
                     {
                        this.§9%n§ = false;
                     }
                  }
               }
            }
            if(_loc8_)
            {
               _loc4_++;
            }
            else
            {
               this.§@$4§.push(this.items[_loc5_]);
            }
            _loc5_++;
         }
         return _loc4_ == this.items.length;
      }
      
      public function getType() : uint
      {
         return this.bundleType;
      }
      
      public function getCode() : String
      {
         return this.code;
      }
      
      public function §&V§() : Number
      {
         return this.cost;
      }
      
      public function §%#+§() : int
      {
         return this.craftId;
      }
      
      public function §2<§() : int
      {
         return this.order;
      }
      
      public function §,#Q§() : Array
      {
         return this.items;
      }
      
      public function §2$[§() : String
      {
         return this.textCurrency;
      }
      
      public function §=&>§() : Vector.<§7,§>
      {
         this.§?%d§();
         return this.§@$4§;
      }
      
      public function §`Q§() : Boolean
      {
         return this.isNew;
      }
      
      public function §+'§(param1:§7,§) : Boolean
      {
         var _loc2_:§7,§ = null;
         for each(_loc2_ in this.§@$4§)
         {
            if(_loc2_.getKind() == param1.getKind() && _loc2_.getId() == param1.getId())
            {
               return true;
            }
         }
         return false;
      }
      
      public function §0#%§(param1:§7,§) : Boolean
      {
         var _loc2_:§7,§ = null;
         for each(_loc2_ in this.§7%b§)
         {
            if(_loc2_.getKind() == param1.getKind() && _loc2_.getId() == param1.getId())
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §0!"§() : Boolean
      {
         return this.§3&D§;
      }
      
      public function get §?#1§() : Boolean
      {
         return this.§9%n§;
      }
   }
}

