package §?#g§
{
   import § !8§.§`!d§;
   import § "L§.§1%b§;
   import § #g§.§0!d§;
   import § #k§.§3%0§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §#k§.§-#S§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§2!I§;
   import §0%[§.§0%§;
   import §3#a§.§-#M§;
   import §4%_§.§3§;
   import §4'§.§^"p§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §;"9§.§;"c§;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.display.ContentDisplay;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
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
   
   public class §-!k§
   {
      
      private var title:String;
      
      private var description:String;
      
      private var §7"f§:String;
      
      private var §1#R§:String;
      
      private var level:int;
      
      private var isLeader:Boolean;
      
      private var buff:Class;
      
      private var bonuses:Array;
      
      private var shopState:§^"p§;
      
      public function §-!k§(param1:String, param2:String, param3:Class = null, param4:String = "", param5:int = 1, param6:Boolean = false, param7:Array = null, param8:§^"p§ = null)
      {
         super();
         this.title = §0$N§.§%! §(param1 + "_NAME");
         this.description = param1 + "_DESCR";
         this.§7"f§ = param2;
         this.buff = param3;
         this.§1#R§ = param4;
         this.level = param5;
         this.isLeader = param6;
         this.bonuses = param7;
         this.shopState = param8;
      }
      
      public function §6%]§(param1:Object) : void
      {
         this.description = §0%§.format(§0$N§.§%! §(this.description),param1);
      }
      
      public function §@$+§() : String
      {
         return this.title;
      }
      
      public function §]G§() : String
      {
         return this.description;
      }
      
      public function §0J§() : String
      {
         return this.§7"f§;
      }
      
      public function §^!$§() : String
      {
         return this.§1#R§;
      }
      
      public function getLevel() : int
      {
         return this.level;
      }
      
      public function §5K§() : Boolean
      {
         return this.isLeader;
      }
      
      public function getBuff() : Class
      {
         return this.buff;
      }
      
      public function §<%i§() : Array
      {
         return this.bonuses;
      }
      
      public function §-&C§() : §^"p§
      {
         return this.shopState;
      }
   }
}

