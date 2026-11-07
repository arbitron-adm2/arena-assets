package § "d§
{
   import § !P§.§9%Z§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^4§.§@#J§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,!c§
   {
      
      public var §>$m§:uint;
      
      public var §;%&§:uint;
      
      public var §?"-§:uint;
      
      public var §3"`§:uint;
      
      public var level:uint;
      
      public var §-$U§:uint;
      
      public function §,!c§(param1:uint, param2:Number, param3:Number, param4:Vector.<§"Z§>)
      {
         super();
         this.§>$m§ = §#&F§(param4);
         this.§;%&§ = §>"A§(param4);
         this.§?"-§ = §2!f§(param4);
         this.§3"`§ = §;&$§(param4);
         this.level = param1 + param2 * this.§3"`§ + param3 * this.§>$m§;
         this.§-$U§ = param1 + param2 * this.§3"`§ + param3 * this.§;%&§;
      }
      
      private static function §#&F§(param1:Vector.<§"Z§>) : uint
      {
         return uint(§2!f§(param1) / §#%%§(param1));
      }
      
      private static function §>"A§(param1:Vector.<§"Z§>) : uint
      {
         return uint(§1%J§(param1) / param1.length);
      }
      
      private static function §2!f§(param1:Vector.<§"Z§>) : uint
      {
         var _loc3_:§"Z§ = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in _loc3_.§1!n§())
            {
               _loc2_ += _loc4_.record.getLevel();
            }
         }
         return _loc2_;
      }
      
      private static function §1%J§(param1:Vector.<§"Z§>) : uint
      {
         var _loc3_:§"Z§ = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.§&!G§().getLevel();
         }
         return _loc2_;
      }
      
      public static function §;&$§(param1:Vector.<§"Z§>) : uint
      {
         var _loc3_:§"Z§ = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in _loc3_.§1!n§())
            {
               if(_loc4_.record.getLevel() > _loc2_)
               {
                  _loc2_ = uint(_loc4_.record.getLevel());
               }
            }
         }
         return _loc2_;
      }
      
      public static function §#%%§(param1:Vector.<§"Z§>) : uint
      {
         var _loc3_:§"Z§ = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.§1!n§().length;
         }
         return _loc2_;
      }
      
      public static function §=$k§(param1:Vector.<§"Z§>) : uint
      {
         var _loc3_:§"Z§ = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.§'"H§();
         }
         return _loc2_;
      }
   }
}

