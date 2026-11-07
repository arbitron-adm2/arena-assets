package §<"?§
{
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §%"Z§.§'$2§;
   import §%$[§.§1$J§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §-%B§.§-"o§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2B§.§^%y§;
   import §4!K§.*;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=$#§.§1!$§;
   import §?$7§.§`%2§;
   import §?%J§.§ 2§;
   import §?%J§.§="b§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §7!@§ extends §6!8§
   {
      
      public function §7!@§(param1:uint, param2:uint, param3:uint)
      {
         var _loc4_:§-"o§ = null;
         var _loc6_:uint = 0;
         var _loc7_:Object = null;
         var _loc8_:Class = null;
         super(param1,true);
         §,&0§ = 2;
         var _loc5_:Vector.<uint> = new <uint>[param2,param3];
         for each(_loc6_ in _loc5_)
         {
            for each(_loc7_ in §`%2§.list)
            {
               if(_loc6_ == _loc7_.id)
               {
                  _loc8_ = _loc7_.script;
                  _loc4_ = new _loc8_(true);
                  if(_loc4_ is §="b§)
                  {
                     §="b§(_loc4_).setMap(mapRecord);
                  }
                  if(_loc4_ is § 2§)
                  {
                     § 2§(_loc4_).setMap(mapRecord);
                  }
                  §6%D§.push(_loc4_ as §-"o§);
               }
            }
         }
      }
      
      override public function §8%r§() : void
      {
         var _loc2_:§-"o§ = null;
         var _loc3_:Vector.<§"Z§> = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in §6%D§)
         {
            var _temp_1:* = new <§"Z§>[enemySquads[_loc1_]];
            _loc3_ = new <§"Z§>[enemySquads[_loc1_]];
            _loc2_.§+$L§(_loc3_);
            _loc1_++;
         }
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc2_:§-"o§ = null;
         var _loc1_:§?!d§ = §?!d§.§1%3§();
         for each(_loc2_ in §6%D§)
         {
            §?!d§.§!"i§(_loc1_,_loc2_.§,$j§());
         }
         _loc1_.chatSettings = new §6%b§(§1!$§.§!"1§,§1!$§.§%%-§,§1!$§.NONE,§1!$§.§%%-§);
         return _loc1_;
      }
      
      override protected function §2!9§() : void
      {
         var _loc1_:Point = null;
         super.§2!9§();
         var _loc2_:Array = [];
         for each(_loc1_ in mapRecord.§?$&§)
         {
            _loc2_.push(_loc1_);
         }
         for each(_loc1_ in mapRecord.§8$2§)
         {
            _loc2_.push(_loc1_);
         }
         §""L§.§6$6§(_loc2_,new §,'§(0x0B ^ 3 * 299));
         §5"N§ = [[_loc2_[0],_loc2_[1],_loc2_[2],_loc2_[3]],[_loc2_[4],_loc2_[5],_loc2_[6]],[_loc2_[7],_loc2_[8],_loc2_[9]]];
      }
   }
}

