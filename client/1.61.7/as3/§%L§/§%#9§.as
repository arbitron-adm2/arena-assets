package §%L§
{
   import § m§.§9!^§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §#P§.§`o§;
   import §#k§.§ "&§;
   import §%"1§.§+#h§;
   import §%"1§.§=#?§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&$Y§.*;
   import §'!Z§.§1"-§;
   import §'%[§.§#&B§;
   import §+$=§.§6#A§;
   import §+%S§.§%!%§;
   import §-@§.*;
   import §0"L§.*;
   import §0%[§.*;
   import §0%j§.§#!U§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#o§.§-#d§;
   import §2"L§.§##l§;
   import §2"L§.§,'§;
   import §2#s§.§7"N§;
   import §4#`§.*;
   import §5!9§.§6$,§;
   import §6"'§.§9$Z§;
   import §65§.§`"C§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §9"-§.§?!s§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%k§.§?%o§;
   import §;&2§.§!#W§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§7#E§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import config.§=%A§;
   import config.achievements.BossAchieves;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.SoundTransform;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.client.SendWipeConfirmCode;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
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
   
   public class §%#9§ extends § "&§
   {
      
      public static var §7F§:§%#9§;
      
      public function §%#9§(param1:§#&%§)
      {
         super(param1.§&![§(),param1.§0!+§(),new Ping(),6000);
         §7F§ = this;
      }
      
      public static function §,U§(param1:Object) : void
      {
         §7F§.send(param1);
      }
      
      public static function §##$§(param1:Class, param2:Function) : void
      {
         §7F§.addListener(param1,param2);
      }
      
      public static function §-"j§(param1:Class, param2:Function) : void
      {
         §7F§.removeListener(param1,param2);
      }
      
      public static function §`$8§(param1:Class) : void
      {
         §7F§.§`$8§(param1);
      }
      
      public static function §&![§() : String
      {
         return §7F§.§&![§();
      }
      
      public static function §7!7§() : uint
      {
         return §7F§.§7!7§();
      }
      
      override public function close() : void
      {
         super.close();
      }
      
      override public function connect() : void
      {
         super.connect();
      }
      
      override protected function §;;§(param1:Event, param2:Array) : void
      {
         super.§;;§(param1,param2);
      }
      
      override protected function §>!e§(param1:Event) : void
      {
         super.§>!e§(param1);
      }
      
      override protected function closeHandler(param1:Event = null) : void
      {
         super.closeHandler(param1);
         §9$R§();
      }
      
      override protected function §>"Z§(param1:IOErrorEvent) : void
      {
         super.§>"Z§(param1);
      }
   }
}

