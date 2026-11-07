package ru.pragmatix.wormix.serialization.clans.request
{
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import §##y§.§9§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §0%z§.§+y§;
   import §1#p§.*;
   import §4%_§.§3§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §9![§.§^§;
   import §;"9§.§;"c§;
   import §?"j§.*;
   import §?#g§.§&"P§;
   import §@!N§.§4"0§;
   import §@#K§.§3&2§;
   import §[!`§.§+%q§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.LowerRankInClanRequest;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.BarriersLauncher;
   import ru.pragmatix.wormix.weapons.Bazooka;
   import ru.pragmatix.wormix.weapons.BlowTorch;
   import ru.pragmatix.wormix.weapons.BoomerangWeapon;
   import ru.pragmatix.wormix.weapons.Cannon;
   import ru.pragmatix.wormix.weapons.CarpetBazooka;
   import ru.pragmatix.wormix.weapons.CircusCannon;
   import ru.pragmatix.wormix.weapons.ClusterGrenade;
   import ru.pragmatix.wormix.weapons.Crossbow;
   import ru.pragmatix.wormix.weapons.DiscLauncher;
   import ru.pragmatix.wormix.weapons.DrillGun;
   import ru.pragmatix.wormix.weapons.ElectricHarpoon;
   import ru.pragmatix.wormix.weapons.FireThrower;
   import ru.pragmatix.wormix.weapons.Firework;
   import ru.pragmatix.wormix.weapons.FreezingBazooka;
   import ru.pragmatix.wormix.weapons.Girder;
   import ru.pragmatix.wormix.weapons.Grenade;
   import ru.pragmatix.wormix.weapons.GroundBreaker;
   import ru.pragmatix.wormix.weapons.Helipad;
   import ru.pragmatix.wormix.weapons.HolyGrenade;
   import ru.pragmatix.wormix.weapons.HomingBazooka;
   import ru.pragmatix.wormix.weapons.HoppingWeapon;
   import ru.pragmatix.wormix.weapons.Jetpack;
   import ru.pragmatix.wormix.weapons.Kalash;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.Molotov;
   import ru.pragmatix.wormix.weapons.Mortar;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.RopeGun;
   import ru.pragmatix.wormix.weapons.SheepWeapon;
   import ru.pragmatix.wormix.weapons.Shotgun;
   import ru.pragmatix.wormix.weapons.ShurikenToss;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.StickyGrenade;
   import ru.pragmatix.wormix.weapons.SuperSheepWeapon;
   import ru.pragmatix.wormix.weapons.SwitchTurn;
   import ru.pragmatix.wormix.weapons.TeleThrower;
   import ru.pragmatix.wormix.weapons.Teleport;
   import ru.pragmatix.wormix.weapons.UfoPad;
   import ru.pragmatix.wormix.weapons.Uzi;
   import ru.pragmatix.wormix.weapons.WatermelonWeapon;
   
   public class LowerRankInClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function LowerRankInClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:LowerRankInClanRequest = LowerRankInClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeShort(_loc2_.socialId);
         _loc3_.writeInt(_loc2_.profileId);
         _loc3_.writeShort(_loc2_.targetRank);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.LOWER_IN_RANK_REQUEST;
      }
   }
}

