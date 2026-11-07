package §7$t§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%#u§.§`"_§;
   import §%$[§.§1$J§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&x§.§=$h§;
   import §'!Z§.§2!H§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §4!K§.*;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §8#a§.§@#c§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9&+§.§>&5§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§0#q§;
   import §^4§.§]"8§;
   import §`%&§.§@&,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2& § extends §=?§
   {
      
      private var code:uint;
      
      private var cost:Number;
      
      private var items:Array = [];
      
      private var textCurrency:String;
      
      private var textDuration:String;
      
      private var textCost:String;
      
      private var isNew:Boolean;
      
      public function §2& §()
      {
         super(§]$q§.VIP);
      }
      
      public static function §+"D§(param1:BundleStructure) : §2& §
      {
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:Array = null;
         var _loc12_:Array = null;
         var _loc13_:§9x§ = null;
         var _loc14_:Object = null;
         var _loc15_:String = null;
         var _loc2_:§2& § = null;
         var _loc3_:Object = §=$h§.§`"!§(int(param1.code));
         if(_loc3_)
         {
            _loc4_ = §>!n§.§8%@§(param1.votes);
            _loc5_ = Social.§-%c§.§4!]§(_loc4_,§>!n§.§-l§());
            _loc6_ = (Social.settings.§"#k§() || Application.instance.§;"7§()) && _loc3_.code == 1072;
            _loc7_ = Social.§-%c§.§4!]§(_loc3_.duration,§0$N§.DAY_PLURALS);
            _loc8_ = _loc6_ ? "" : "+";
            _loc9_ = _loc8_ + (String(_loc3_.duration).length < 3 ? §0%§.format(§0$N§.DAY_TEXT,{"value":_loc3_.duration}) : _loc3_.duration);
            _loc7_ = "\n" + _loc8_ + §0%§.format(§0$N§.COUNT_ITEMS,{
               "count":_loc3_.duration,
               "items":_loc7_
            });
            _loc10_ = _loc6_ ? §0%§.format(§0$N§.COST_MONTH_BTN,{
               "count":_loc4_,
               "currency":_loc5_
            }) : _loc4_ + " " + _loc5_;
            _loc11_ = §1%z§.§!!Z§(param1.items).§@$0§();
            _loc12_ = [];
            for each(_loc13_ in _loc11_)
            {
               if(_loc13_ is §]$X§)
               {
                  _loc12_.push(§<$c§.§3"k§(§]$X§(_loc13_).getId()));
               }
            }
            _loc14_ = {
               "id":param1.code,
               "duration":_loc3_.duration,
               "code":param1.code,
               "cost":_loc4_,
               "items":_loc12_,
               "textCurrency":_loc5_,
               "textDuration":_loc9_,
               "textCost":_loc10_,
               "isNew":_loc3_.isNew
            };
            _loc2_ = new §2& §();
            _loc2_.initFromConfig(_loc14_);
            _loc15_ = §<$c§.§3"k§(_loc3_.boosterId).§]G§();
            _loc2_.description = §2"e§.§;"e§(_loc15_,"{br}","\n");
            _loc2_.name = §0$N§.VIP_TITLE + _loc7_ + (_loc6_ ? " (" + §0$N§.TITLE_SUBSCRIPTION.toLowerCase() + ")" : "");
         }
         return _loc2_;
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         param1.iconClassName = "VipIcon";
         param1.realprice = 0;
         param1.price = 0;
         super.initFromConfig(param1);
         this.textCurrency = param1.textCurrency;
         duration = param1.duration;
         this.items = param1.items;
         this.code = param1.code;
         this.cost = param1.cost;
         this.textDuration = param1.textDuration;
         this.textCost = param1.textCost;
         this.isNew = param1.isNew;
      }
      
      public function getCode() : uint
      {
         return this.code;
      }
      
      public function §&V§() : Number
      {
         return this.cost;
      }
      
      public function §,#Q§() : Array
      {
         return this.items;
      }
      
      public function §2$[§() : String
      {
         return this.textCurrency;
      }
      
      public function §?V§() : String
      {
         return this.textDuration;
      }
      
      public function §"">§() : String
      {
         return this.textCost;
      }
      
      public function §`Q§() : Boolean
      {
         return this.isNew;
      }
   }
}

