package §3#T§
{
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!&§.§&§;
   import §&!&§.§8%f§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0&F§.§0%v§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2"L§.§,!t§;
   import §2#i§.§+%z§;
   import §4f§.§-&§;
   import §4u§.§#"d§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§7o§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§9#x§;
   import §7$t§.§^$E§;
   import §<!^§.§["l§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §?$L§.§ "N§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §]^§.§-$T§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§5$1§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.Grenade;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Helicopter extends §6#I§ implements §8%f§, §&#6§
   {
      
      protected static const PI_HALF:Number = Math.PI / 2;
      
      private static const §#9§:Number = Math.PI / 3;
      
      protected var direction:int = 0;
      
      protected var paramSet:§5$n§;
      
      private var paramSetEx:§5$n§;
      
      private var §`%G§:§7#P§;
      
      public function Helicopter(param1:§+%]§)
      {
         super(param1,param1.x,param1.y,false,1100);
         if(param1.squad.isLocal())
         {
            _customSource = §<$c§.§ !=§(§+%z§.HELICOPTER);
         }
      }
      
      public function init(param1:§5$n§, param2:§5$n§) : void
      {
         this.paramSet = param1;
         this.paramSetEx = param2;
         canBeDamaged = true;
         §,q§ = new <§-&§>[§-&§.SUPPLY_PICKUPER];
         this.direction = owner.direction;
         clip = §6#A§.§!&6§(param1.ammoClassName);
         if(this.direction == §+%]§.RIGHT)
         {
            §,!t§.§%v§(clip);
         }
         this.x = owner.x;
         this.y = owner.y;
         §`4§ = §+#G§;
         §^"F§(-PI_HALF,5);
         this.§`%G§ = §@%;§.play(§`!v§.§4$8§,true);
         addEventListener(§0%v§.§+&=§,this.§=N§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new §6a§(physParams);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
      }
      
      public function attack() : void
      {
         var _loc1_:Number = NaN;
         §@%;§.play(§`!v§.§=Y§);
         _loc1_ = PI_HALF - this.direction * §#9§;
         var _loc2_:§["l§ = new §["l§(owner,x + this.direction * 20,y + 10,_loc1_,8,this.paramSetEx,0.5,§;%S§.§`"Q§);
         if(owner.squad.isLocal())
         {
            _loc2_.customSource = §<$c§.§ !=§(§+%z§.HELICOPTER);
         }
      }
      
      public function explode() : void
      {
         inflictDamage(null,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true,false,true,_customSource);
         §1"-§.§&!C§(x,y,12);
         §1"-§.explode(§;n§.§@%d§,this.x,this.y,this.paramSet.explosionRadius.value,§`!v§.§["s§);
         disposed = true;
      }
      
      public function explodeOnCollide() : void
      {
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            explode();
         });
      }
      
      public function turnLeft() : void
      {
         if(this.direction != §+%]§.LEFT)
         {
            this.direction = §+%]§.LEFT;
            this.§%%B§();
         }
      }
      
      private function §%%B§() : void
      {
         var _loc1_:Number = clip.rotation;
         §,!t§.§%v§(this.clip);
      }
      
      public function turnRight() : void
      {
         if(this.direction != §+%]§.RIGHT)
         {
            this.direction = §+%]§.RIGHT;
            this.§%%B§();
         }
      }
      
      private function §=N§(param1:Event) : void
      {
         §@%;§.play(§`!v§.§1$t§);
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         this.explode();
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.§`%G§ != null)
         {
            this.§`%G§.stop();
            this.§`%G§ = null;
         }
         removeEventListener(§0%v§.§+&=§,this.§=N§);
      }
   }
}

