package §!$d§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § !P§.*;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'T§.§!$C§;
   import §+#P§.§8"j§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §0%"§.§`"`§;
   import §0%[§.§6!?§;
   import §02§.§<!v§;
   import §1#p§.§2=§;
   import §3"@§.§""m§;
   import §3#T§.Helicopter;
   import §5%S§.§>&-§;
   import §6%2§.§'"Y§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §?$K§.§@$J§;
   import §@!i§.§5%8§;
   import §@!i§.§<!9§;
   import §@#K§.§-§;
   import §@8§.§%Z§;
   import §]$v§.§0"[§;
   import §^"y§.§[";§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import com.greensock.events.LoaderEvent;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<$c§ implements §[";§
   {
      
      private static var instance:§<$c§;
      
      private var weapons:Object = {};
      
      private var hats:Object = {};
      
      private var artifacts:Object = {};
      
      private var boosters:Object = {};
      
      private var §,%U§:Object = {};
      
      private var §[#2§:Object = {};
      
      public function §<$c§()
      {
         super();
         instance = this;
      }
      
      public static function getInstance() : §<$c§
      {
         if(!instance)
         {
            instance = new §<$c§();
         }
         return instance;
      }
      
      public static function getWeapons() : Object
      {
         return §<$c§.getInstance().weapons;
      }
      
      public static function §-v§(param1:UserProfile) : Array
      {
         var _loc3_:§;#_§ = null;
         var _loc4_:§^$E§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in getWeapons())
         {
            if(!_loc3_.getHideInShop() && _loc3_.§,X§() == param1.getLevel() && !_loc3_.§!$R§() && _loc3_.getId() < §'"Y§.§;9§)
            {
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc4_ in § !^§(param1.getRace()))
         {
            if(!_loc4_.getHideInShop() && _loc4_.§,X§() == param1.getLevel())
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public static function §2$F§() : Object
      {
         var _loc2_:String = null;
         var _loc3_:§;#_§ = null;
         var _loc1_:Object = {};
         for(_loc2_ in getWeapons())
         {
            _loc3_ = §;#_§(getWeapons()[_loc2_]);
            if(!_loc3_.getInfinite() && Boolean(_loc3_.§!$R§()))
            {
               _loc1_[_loc2_] = _loc3_;
            }
         }
         return _loc1_;
      }
      
      public static function § !=§(param1:int) : §;#_§
      {
         return §<$c§.getWeapons()[param1];
      }
      
      public static function § !a§() : void
      {
         var _loc1_:§;#_§ = null;
         for each(_loc1_ in getWeapons())
         {
            _loc1_.§&%N§();
         }
      }
      
      public static function §`!K§(param1:§^$E§) : void
      {
         if(!§<$c§.§7#F§()[param1.getCharName()])
         {
            §<$c§.§7#F§()[param1.getCharName()] = {};
         }
         §<$c§.§7#F§()[param1.getCharName()][param1.getId()] = param1;
      }
      
      public static function §7#F§() : Object
      {
         return §<$c§.getInstance().hats;
      }
      
      public static function §]&3§(param1:§`!d§) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:Array = § !^§(param1);
         for(_loc4_ in _loc3_)
         {
            if(!§^$E§(_loc3_[_loc4_]).getHideInShop())
            {
               _loc2_.push(_loc3_[_loc4_]);
            }
         }
         return _loc2_;
      }
      
      public static function § #-§(param1:§`!d§) : Array
      {
         return §]c§(param1,§%Z§.LEGENDARY);
      }
      
      public static function §%#%§(param1:§`!d§) : Array
      {
         return §]c§(param1,§%Z§.EPIC);
      }
      
      public static function §]c§(param1:§`!d§, param2:§%Z§) : Array
      {
         var _loc5_:String = null;
         var _loc6_:§^$E§ = null;
         var _loc3_:Array = [];
         var _loc4_:Array = § !^§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc6_ = §^$E§(_loc4_[_loc5_]);
            if(_loc6_.getHideInShop())
            {
               if(§!#^§.§3&5§(_loc6_.getId()))
               {
                  if(§#&>§.§`$G§(_loc6_.getId(),param2))
                  {
                     _loc3_.push(_loc4_[_loc5_]);
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public static function §-!7§(param1:§%Z§) : Array
      {
         var _loc3_:String = null;
         var _loc4_:§^%%§ = null;
         var _loc2_:Array = [];
         for(_loc3_ in §<$c§.§0$^§())
         {
            _loc4_ = §^%%§(§<$c§.§0$^§()[_loc3_]);
            if(_loc4_.getHideInShop())
            {
               if(§!#^§.§7%#§(_loc4_.getId()))
               {
                  if(§#&>§.§`$G§(_loc4_.getId(),param1))
                  {
                     _loc2_.push(§<$c§.§0$^§()[_loc3_]);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §<"g§() : Array
      {
         return §-!7§(§%Z§.LEGENDARY);
      }
      
      public static function §0#u§() : Array
      {
         return §-!7§(§%Z§.EPIC);
      }
      
      public static function § !^§(param1:§`!d§) : Array
      {
         var _loc2_:Object = {};
         §6!?§.§8%P§(§<$c§.§7#F§()[§9%+§.§>$M§],_loc2_);
         if(§<$c§.§7#F§()[param1.configName])
         {
            §6!?§.§8%P§(§<$c§.§7#F§()[param1.configName],_loc2_);
         }
         return §6!?§.§-!%§(_loc2_);
      }
      
      public static function §^&1§(param1:int, param2:§`!d§) : §^$E§
      {
         var _loc3_:§^$E§ = null;
         if(param1 < §0%G§.§;9§)
         {
            return null;
         }
         if(§<$c§.§7#F§()[param2.configName])
         {
            _loc3_ = §<$c§.§7#F§()[param2.configName][param1];
         }
         var _loc4_:Object = §<$c§.§7#F§()[§9%+§.§>$M§];
         if(!_loc3_ && Boolean(_loc4_))
         {
            _loc3_ = _loc4_[param1];
         }
         if(Boolean(_loc3_) && Boolean(_loc4_))
         {
            _loc3_.§#!h§(§^$E§(_loc4_[param1]).getMenuIcon());
         }
         return _loc3_;
      }
      
      public static function §0$^§() : Object
      {
         return §<$c§.getInstance().artifacts;
      }
      
      public static function §`"u§() : Array
      {
         var _loc3_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Object = getInstance().artifacts;
         for(_loc3_ in _loc2_)
         {
            if(!§^%%§(_loc2_[_loc3_]).getHideInShop())
            {
               _loc1_.push(_loc2_[_loc3_]);
            }
         }
         return _loc1_;
      }
      
      public static function §"$h§(param1:int) : §^%%§
      {
         return §<$c§.§0$^§()[param1];
      }
      
      public static function §8&E§(param1:int, param2:§`!d§ = null) : §&!e§
      {
         var _loc3_:§&!e§ = null;
         if(param1 >= §`"`§.§;9§)
         {
            _loc3_ = §#$m§(param1);
         }
         else if(param1 >= §""m§.§;9§)
         {
            _loc3_ = §3"k§(param1);
         }
         else if(param1 >= §8"j§.§;9§)
         {
            _loc3_ = §"$h§(param1);
         }
         else if(param1 >= §0%G§.§;9§)
         {
            _loc3_ = §^&1§(param1,param2);
         }
         else
         {
            _loc3_ = § !=§(param1);
         }
         return _loc3_;
      }
      
      public static function §1$E§() : Object
      {
         return §<$c§.getInstance().§[#2§;
      }
      
      public static function §3"d§(param1:uint) : CraftedEquipFamily
      {
         return §<$c§.getInstance().§[#2§[param1];
      }
      
      public static function §+Z§() : Object
      {
         return §<$c§.getInstance().boosters;
      }
      
      public static function §3"k§(param1:int) : §2"y§
      {
         return §<$c§.getInstance().boosters[param1];
      }
      
      public static function §@$F§() : Object
      {
         return §<$c§.getInstance().§,%U§;
      }
      
      public static function §#$m§(param1:int) : §[!X§
      {
         return §<$c§.getInstance().§,%U§[param1];
      }
      
      public static function §!$h§() : void
      {
         var weapon:§;#_§ = null;
         var items:Array = [];
         for each(weapon in getWeapons())
         {
            if(!weapon.§!$R§() && weapon.getId() < §'"Y§.§;9§)
            {
               items.push(weapon);
            }
         }
         items = items.sort(function(param1:§;#_§, param2:§;#_§):int
         {
            var _loc3_:* = param1.getId();
            var _loc4_:* = param2.getId();
            if(_loc3_ < _loc4_)
            {
               return -1;
            }
            if(_loc3_ > _loc4_)
            {
               return 1;
            }
            return 0;
         });
      }
   }
}

