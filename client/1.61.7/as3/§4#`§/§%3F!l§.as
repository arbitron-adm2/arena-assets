package §4#`§
{
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%z§.§&%&§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §9![§.§^§;
   import §<%E§.§,$2§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]7§.§0'§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
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
   
   public class §?!l§ extends §`&-§
   {
      
      private var textField:TextField;
      
      private var back:DisplayObject;
      
      private var §;%H§:int;
      
      private var §'!P§:int;
      
      public function §?!l§(param1:DisplayObject)
      {
         super(param1);
         this.back = getChildByName("back");
         this.textField = §'%s§("value");
         this.§'!P§ = this.back.width - this.textField.width;
         this.textField.autoSize = TextFieldAutoSize.LEFT;
         this.reset();
      }
      
      public function §0S§(param1:int) : void
      {
         if(!isVisible() && §8"%§.§&S§.§>!l§())
         {
            setVisible(true);
         }
         this.§;%H§ += param1;
         this.update();
      }
      
      public function reset() : void
      {
         if(isVisible())
         {
            setVisible(false);
         }
         this.§;%H§ = 0;
         this.update();
      }
      
      private function update() : void
      {
         var _loc1_:String = this.§;%H§.toString();
         if(this.§;%H§ > 0)
         {
            _loc1_ = "+" + _loc1_;
         }
         §&$9§.§>&F§(this.textField,§"-§.§+$m§,_loc1_);
         if(this.§;%H§ > 0)
         {
            this.textField.textColor = 11396921;
         }
         else if(this.§;%H§ < 0)
         {
            this.textField.textColor = 14100263;
         }
         else
         {
            this.textField.textColor = 16777215;
         }
         this.back.width = this.textField.width + this.§'!P§;
      }
      
      public function get § %J§() : int
      {
         return this.§;%H§;
      }
   }
}

