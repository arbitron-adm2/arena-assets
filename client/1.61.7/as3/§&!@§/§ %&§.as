package §&!@§
{
   import § !8§.§`!d§;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&$Y§.§6[§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+%S§.§;!4§;
   import §+%S§.§["4§;
   import §+%S§.§[`§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.§^"5§;
   import §0&F§.§+!%§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.*;
   import §2#H§.§[&B§;
   import §2#s§.*;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#a§.§-!`§;
   import §4!!§.§2&F§;
   import §4'§.§^"p§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §9"^§.§,%i§;
   import §<"?§.§6"d§;
   import §<$q§.*;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §?o§.§?!x§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §]^§.§-$T§;
   import §]^§.§4&+§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import config.§5%T§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
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
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class § %&§ extends §6"d§
   {
      
      private static const §+%!§:int = 3;
      
      private var boss:§+%]§;
      
      private var §&!9§:Vector.<§+%]§>;
      
      public function § %&§()
      {
         super(62);
      }
      
      override public function getId() : int
      {
         return §+#N§.§ #z§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §""d§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[0],mapRecord.§8$2§[1],mapRecord.§8$2§[2],mapRecord.§?$&§[1]],[new Point(mapRecord.§8$2§[4].x - 310,mapRecord.§8$2§[4].y - 500)],[mapRecord.§8$2§[5],mapRecord.§8$2§[7],mapRecord.§8$2§[3]]];
      }
      
      override public function §8%r§() : void
      {
         super.§8%r§();
         this.boss = enemySquads[0].§1!n§()[0];
         this.boss.addEventListener(§0%v§.DISPOSED,this.§#y§);
      }
      
      override protected function § "a§(param1:uint) : void
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         super.§ "a§(param1);
         var _loc2_:§2R§ = §]%!§(BossAchieves.PIRATE_DONT_SINK);
         if(_loc2_.available && param1 == 1)
         {
            this.§&!9§ = new Vector.<§+%]§>(0);
            _loc3_ = §8"%§.§?!W§.§4"m§.§6"M§(this.boss);
            for each(_loc4_ in _loc3_)
            {
               this.§&!9§.push(_loc4_);
               _loc4_.buffs.place(new §[&B§());
               _loc4_.addEventListener(§7%K§.NAME,this.§]#+§);
            }
         }
      }
      
      private function §]#+§(param1:Event) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:§2R§ = §]%!§(BossAchieves.PIRATE_DONT_SINK);
         if(_loc2_.available)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
         for each(_loc3_ in this.§&!9§)
         {
            _loc3_.buffs.§6C§(§[&B§.NAME);
            _loc3_.removeEventListener(§7%K§.NAME,this.§]#+§);
         }
         this.§&!9§ = null;
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§0%v§.§&!D§,this.§7#`§);
      }
      
      private function §#y§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.PIRATE_KILL_LAST);
         if(_loc2_.available && §8"%§.§?!W§.§4"m§.§="T§(this.boss).length == 0)
         {
            _loc2_.completed = true;
            §`#t§(_loc2_);
         }
         else if(_loc2_.available)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.PIRATE_DROWN_SUPPORTS)
         {
            _loc2_ = §]%!§(BossAchieves.PIRATE_DROWN_SUPPORTS);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§+%!§);
            }
         }
      }
      
      private function §7#`§(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.victim.disposed)
         {
            _loc2_ = §]%!§(BossAchieves.PIRATE_DROWN_SUPPORTS);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.PIRATE_DONT_SINK).§,%,§();
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         super.clear();
         this.boss.removeEventListener(§0%v§.DISPOSED,this.§#y§);
         if(this.§&!9§)
         {
            for each(_loc1_ in this.§&!9§)
            {
               _loc1_.removeEventListener(§7%K§.NAME,this.§]#+§);
            }
            this.§&!9§ = null;
         }
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = super.§,$j§();
         _loc1_.§`%?§ = §"%r§.BOSS_PIRATES;
         return _loc1_;
      }
   }
}

