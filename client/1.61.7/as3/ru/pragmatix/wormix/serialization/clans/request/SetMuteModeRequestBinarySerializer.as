package ru.pragmatix.wormix.serialization.clans.request
{
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §'!Z§.§1"-§;
   import §+%S§.§?3§;
   import §0%"§.§[!^§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1&-§.§4!s§;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§[!X§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.adobe.serialization.json.JSONEncoder;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
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
   
   public class SetMuteModeRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function SetMuteModeRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:SetMuteModeRequest = SetMuteModeRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeShort(_loc2_.socialId);
         _loc3_.writeInt(_loc2_.profileId);
         _loc3_.writeBoolean(_loc2_.value);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.SET_MUTE_MODE_REQUEST;
      }
   }
}

