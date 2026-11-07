package §[!`§
{
   import § &5§.§@N§;
   import §"#x§.§'"$§;
   import §%L§.§%%w§;
   import §&!?§.§0%W§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §1%0§ extends §&"T§
   {
      
      private const §<%r§:uint = 1;
      
      private const §4=§:Number = 0.1;
      
      private const §'!U§:uint = 1;
      
      private const § !<§:uint = 60;
      
      private const §<&'§:uint = 10;
      
      private const §?%§:uint = 2;
      
      private const EXPLOSION_DELAY:uint = 1;
      
      private const DAMAGE:uint = 100;
      
      private const §@!9§:MovieClip = §6#A§.§!&6§("RebelRobotDroid");
      
      protected var owner:§+%]§;
      
      private var active:Boolean = false;
      
      private var target:§+%]§ = null;
      
      private var §>O§:Shape;
      
      private var §&!1§:Number = 0;
      
      private var §7%§:int = 0;
      
      private var §+%H§:Boolean;
      
      private var §@^§:int;
      
      private var explosionRadius:int;
      
      private var §7&6§:Number;
      
      private var §=x§:Point;
      
      public function §1%0§(param1:§+%]§, param2:int, param3:int)
      {
         super();
         this.owner = param1;
         this.clip = this.§@!9§;
         this.x = param2;
         this.y = param3;
         this.stable = true;
         canBeDamaged = false;
         this.§&!1§ = this.§<%r§;
         Application.scene.addEventListener(§0%v§.START_TURN_SWITCHING,this.deactivate);
         addEventListener(§0%v§.§&!D§,this.§""0§);
         Application.scene.§@$I§.§1$+§(this,true);
         this.activate();
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.NONE);
         physicModel = new §;$S§(physParams);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(Boolean(this.active && this.target) && Boolean(!this.target.disposed) && !this.§+%H§)
         {
            if(this.target.stable)
            {
               ++this.§7%§;
               if(this.§7%§ % this.§'!U§ == 0)
               {
                  this.§&!1§ += this.§4=§;
               }
               if(this.§7%§ == this.§ !<§)
               {
                  this.§7%§ = 0;
                  this.§&!1§ = this.§<%r§;
                  this.§=x§ = new Point(x,y);
                  this.explosionRadius = this.§<&'§;
                  this.§@^§ = frames + this.EXPLOSION_DELAY;
                  this.§7&6§ = §-q§.§'x§(x,y,this.target.x,this.target.y);
                  this.§+%H§ = true;
               }
            }
            else
            {
               this.§7%§ = 0;
               this.§&!1§ = this.§<%r§;
            }
            if(Boolean(this.target) && !this.target.disposed)
            {
               this.§5##§(this.target.x,this.target.y);
            }
         }
         if(this.§+%H§ && frames >= this.§@^§)
         {
            this.§4#W§();
         }
      }
      
      private function §4#W§() : void
      {
         var _loc1_:Point = null;
         _loc1_ = §-q§.§2!B§(this.explosionRadius,this.§7&6§);
         var _loc2_:Point = new Point(this.§=x§.x + _loc1_.x,this.§=x§.y + _loc1_.y);
         §1"-§.explode(§;n§.§2#M§,_loc2_.x,_loc2_.y,this.explosionRadius * 0.7,§`!v§.§`@§,§-q§.§%%>§(this.§7&6§));
         §'"$§.§]#I§(this.owner,_loc2_.x,_loc2_.y,null,this.DAMAGE,this.explosionRadius + 10,this.explosionRadius,false,true,§&!E§.§1%!§);
         this.§=x§ = _loc2_;
         this.explosionRadius += this.§?%§;
         this.§@^§ = frames + this.EXPLOSION_DELAY;
         if(_loc2_.x > Application.scene.width || _loc2_.x < 0 || _loc2_.y > Application.scene.height || _loc2_.y < 0)
         {
            this.§+%H§ = false;
         }
      }
      
      protected function deactivate(param1:Event = null) : void
      {
         if(this.active)
         {
            this.target = null;
            this.active = false;
            Application.scene.removeChild(this.§>O§);
         }
      }
      
      protected function activate(param1:Event = null) : void
      {
         var _loc2_:§+%]§ = §8"%§.§?!W§.§4"m§.activeUnit;
         if(!this.active && !_loc2_.disposed && !_loc2_.squad.isAi())
         {
            this.target = _loc2_;
            this.active = true;
         }
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§1"E§,this.x,this.y,§-$[§ >> 1,§`!v§.§@S§);
         Application.scene.removeEventListener(§0%v§.START_TURN_SWITCHING,this.deactivate);
         this.deactivate();
         super.§[$u§(param1);
      }
      
      private function §5##§(param1:int, param2:int) : void
      {
         if(this.§>O§ == null)
         {
            this.§>O§ = new Shape();
            Application.scene.addChild(this.§>O§);
         }
         this.§>O§.graphics.clear();
         this.§>O§.graphics.lineStyle(this.§&!1§,16714507);
         this.§>O§.graphics.moveTo(this.x,this.y);
         this.§>O§.graphics.lineTo(param1,param2);
      }
   }
}

