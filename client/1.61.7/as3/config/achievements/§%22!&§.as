package config.achievements
{
   import § "L§.§1%b§;
   import § %f§.§]%f§;
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §"!&§
   {
      
      public static const §2#B§:int = 5;
      
      public static const list:Array = [[{
         "itemId":§,$O§.§4$W§,
         "position":0,
         "requires":0,
         "replaces":0
      },{
         "itemId":§+%z§.DISC_LAUNCHER,
         "position":1,
         "requires":0,
         "replaces":0
      },{
         "itemId":§+%z§.HOPPING_BAZOOKA,
         "position":2,
         "requires":0,
         "replaces":0
      },{
         "itemId":§+%z§.CIRCUS_CANNON,
         "position":3,
         "requires":0,
         "replaces":0
      }],[{
         "itemId":§+%z§.HELICOPTER,
         "position":1,
         "requires":0,
         "replaces":0
      },{
         "itemId":§+%z§.§7&E§,
         "position":2,
         "requires":0,
         "replaces":0
      }],[{
         "itemId":§+%z§.§!%D§,
         "position":1,
         "requires":§+%z§.HELICOPTER,
         "replaces":0
      },{
         "itemId":§+%z§.FORCE_FIELD,
         "position":2,
         "requires":§+%z§.§7&E§,
         "replaces":0
      },{
         "itemId":§+%z§.PLASMAGUN,
         "position":3,
         "requires":0,
         "replaces":0
      }],[{
         "itemId":§,$O§.AQUALUNG,
         "position":0,
         "requires":0,
         "replaces":0
      },{
         "itemId":§+%z§.ANVIL,
         "position":2,
         "requires":§+%z§.FORCE_FIELD,
         "replaces":0
      },{
         "itemId":§]!E§.§,"'§,
         "position":3,
         "requires":0,
         "replaces":0
      }],[{
         "itemId":§,$O§.§^"h§,
         "position":0,
         "requires":§,$O§.AQUALUNG,
         "replaces":§,$O§.AQUALUNG
      },{
         "itemId":§+%z§.§5-§,
         "position":1,
         "requires":§+%z§.§!%D§,
         "replaces":§+%z§.§!%D§
      },{
         "itemId":§+%z§.FROST_STASIS,
         "position":2,
         "requires":§+%z§.ANVIL,
         "replaces":0
      },{
         "itemId":§]!E§.§<& §,
         "position":3,
         "requires":§]!E§.§,"'§,
         "replaces":§]!E§.§,"'§
      }]];
      
      public function §"!&§()
      {
         super();
      }
      
      public static function §9%i§(param1:int) : int
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(list.length);
         loop0:
         while(_loc2_ < _loc3_)
         {
            _loc4_ = 0;
            _loc5_ = int(list[_loc2_].length);
            while(true)
            {
               if(_loc4_ >= _loc5_)
               {
                  _loc2_++;
                  continue loop0;
               }
               if(param1 == list[_loc2_][_loc4_].itemId)
               {
                  break;
               }
               _loc4_++;
            }
            return list[_loc2_][_loc4_].position;
         }
         return -1;
      }
      
      public static function §[#f§(param1:int) : int
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(list.length);
         loop0:
         while(_loc2_ < _loc3_)
         {
            _loc4_ = 0;
            _loc5_ = int(list[_loc2_].length);
            while(true)
            {
               if(_loc4_ >= _loc5_)
               {
                  _loc2_++;
                  continue loop0;
               }
               if(param1 == list[_loc2_][_loc4_].itemId)
               {
                  break;
               }
               _loc4_++;
            }
            return _loc2_;
         }
         return -1;
      }
      
      public static function §]?§(param1:int) : Object
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(list.length);
         loop0:
         while(_loc2_ < _loc3_)
         {
            _loc4_ = 0;
            _loc5_ = int(list[_loc2_].length);
            while(true)
            {
               if(_loc4_ >= _loc5_)
               {
                  _loc2_++;
                  continue loop0;
               }
               if(param1 == list[_loc2_][_loc4_].itemId)
               {
                  break;
               }
               _loc4_++;
            }
            return list[_loc2_][_loc4_];
         }
         return null;
      }
      
      public static function §>!h§(param1:int) : Object
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(list.length);
         loop0:
         while(_loc2_ < _loc3_)
         {
            _loc4_ = 0;
            _loc5_ = int(list[_loc2_].length);
            while(true)
            {
               if(_loc4_ >= _loc5_)
               {
                  _loc2_++;
                  continue loop0;
               }
               if(param1 == list[_loc2_][_loc4_].replaces)
               {
                  break;
               }
               _loc4_++;
            }
            return list[_loc2_][_loc4_];
         }
         return null;
      }
      
      public static function §%"u§(param1:int) : Object
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(list.length);
         loop0:
         while(_loc2_ < _loc3_)
         {
            _loc4_ = 0;
            _loc5_ = int(list[_loc2_].length);
            while(true)
            {
               if(_loc4_ >= _loc5_)
               {
                  _loc2_++;
                  continue loop0;
               }
               if(param1 == list[_loc2_][_loc4_].requires)
               {
                  break;
               }
               _loc4_++;
            }
            return list[_loc2_][_loc4_];
         }
         return null;
      }
      
      public static function §,&H§(param1:Object, param2:UserProfile) : Boolean
      {
         var _loc3_:BackpackItem = null;
         var _loc4_:BackpackItem = null;
         if(param1.requires)
         {
            if(§+%z§.§2$_§(param1.itemId))
            {
               _loc3_ = §1!S§.§@!&§(param1.requires,param2.§3%^§());
               if(!_loc3_ || !_loc3_.isInfinite())
               {
                  return false;
               }
            }
            else
            {
               _loc4_ = §4! §.§5"K§(param1.requires,param2);
               if(_loc4_ == null)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public static function § $]§(param1:Object, param2:UserProfile) : Boolean
      {
         var _loc5_:BackpackItem = null;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _temp_1:* = param1 ? §>!h§(param1.itemId) : null;
         var _loc4_:Object = param1 ? §>!h§(param1.itemId) : null;
         if(_loc4_)
         {
            _loc5_ = §4! §.§5"K§(_loc4_.itemId,param2);
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.getRecord() is §;#_§;
               _loc3_ = !_loc6_ || _loc5_.isInfinite();
            }
         }
         return _loc3_;
      }
      
      public static function §#&C§(param1:UserProfile) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:BackpackItem = null;
         var _loc2_:int = 0;
         var _loc3_:int = int(list.length);
         loop0:
         while(_loc2_ < _loc3_)
         {
            _loc4_ = 0;
            _loc5_ = int(list[_loc2_].length);
            while(true)
            {
               if(_loc4_ >= _loc5_)
               {
                  _loc2_++;
                  continue loop0;
               }
               _loc6_ = int(list[_loc2_][_loc4_].itemId);
               if(§+%z§.§2$_§(_loc6_))
               {
                  _loc7_ = §1!S§.§@!&§(_loc6_,param1.§3%^§());
                  if((Boolean(_loc7_)) && _loc7_.getId() != _loc6_)
                  {
                     break;
                  }
               }
               _loc4_++;
            }
            return true;
         }
         return false;
      }
      
      public static function §2#@§(param1:Object) : void
      {
         §4! §.§&j§(param1.itemId);
         if(param1.replaces)
         {
            §4! §.§1"2§(param1.replaces);
         }
         Application.§5!>§.§8$w§();
      }
   }
}

