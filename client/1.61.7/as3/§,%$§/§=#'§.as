package §,%$§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §+$=§.§6#A§;
   import §-&5§.*;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §>%I§.§-#f§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^4§.§@#J§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §=#'§
   {
      
      public function §=#'§()
      {
         super();
      }
      
      public static function §&%A§(param1:§+%]§) : §0>§
      {
         var _loc2_:§0>§ = new §0>§();
         _loc2_.name = param1.record.getCharName();
         _loc2_.level = param1.record.getLevel();
         _loc2_.raceId = param1.record.getRace().getId();
         _loc2_.hatId = param1.record.§2u§() != null ? uint(param1.record.§2u§().getId()) : 0;
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.hp = param1.record.stats.§8+§.value;
         _loc2_.attack = param1.record.stats.§'$Q§.value;
         _loc2_.armor = param1.record.stats.§+#+§.value;
         return _loc2_;
      }
      
      public static function §<$Q§(param1:§0>§) : §+%]§
      {
         var _loc2_:§`!d§ = null;
         _loc2_ = Race.§3!4§(param1.raceId);
         var _loc3_:UserProfile = UserProfile.§'#3§(param1.name,param1.level,Race.§-%z§(_loc2_),param1.hp,param1.armor,param1.attack,param1.hatId);
         var _loc4_:Class = _loc2_.getClass();
         return new _loc4_(_loc3_,param1.x,param1.y);
      }
   }
}

