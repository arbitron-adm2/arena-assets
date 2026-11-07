package §+5§
{
   import § !P§.§1!8§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!&§.§&§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§73§;
   import §+%S§.§]&§;
   import §-@§.*;
   import §0"L§.§+# §;
   import §0"p§.*;
   import §0&F§.§0%v§;
   import §2!-§.SupplyPickedUpEvent;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §4$b§.§8D§;
   import §4'§.§#"l§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §6%2§.*;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §;!J§.§8!a§;
   import §<!W§.*;
   import §<$2§.§+$9§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=!p§.§1e§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=$#§.*;
   import §=7§.§?%4§;
   import §@!N§.§'+§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import §`#x§.§"$r§;
   import §`#x§.§[$I§;
   import §`%&§.§`§;
   import com.greensock.TweenLite;
   import com.greensock.easing.Linear;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterPayment;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §5"<§ extends §6#I§ implements §&#6§
   {
      
      private static const SPEED:int = 10;
      
      private static const §6"m§:Number = Math.PI / 24;
      
      private static const CRIPPLE_DURATION:uint = 2;
      
      private static const §%$9§:uint = 20;
      
      private static const §'"i§:uint = 10;
      
      private static const §-"R§:uint = 5;
      
      private var paramSet:§5$n§;
      
      private var graphics:§8D§;
      
      private var sound:§7#P§;
      
      private var groundBreaks:uint = 0;
      
      private var damagePerSupply:uint = 0;
      
      private var cripple:Boolean = false;
      
      private var damage:int;
      
      private var §6f§:int;
      
      public function §5"<§(param1:§+%]§, param2:§5$n§, param3:Array)
      {
         super(param1,param1.x,param1.y,false,-1);
         this.paramSet = param2;
         §,q§ = new <§-&§>[§-&§.SUPPLY_PICKUPER];
         this.graphics = new §8D§(param3);
         this.x = param1.x;
         this.y = param1.y;
         this.clip = this.graphics.getClip();
         this.graphics.§4]§();
         §`4§ = §]$S§;
         §@%;§.play(§`!v§.SHEEP);
         this.sound = §@%;§.play(§`!v§.§<!L§,true);
         this.damage = param2.damage.value;
         §1"-§.attachTrail(this,30,10,13553358,16777215,1,true);
         this.§`%4§();
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.SUPPLY_PICKED_UP,this.§&w§);
      }
      
      public function §`%4§(param1:Number = 1) : void
      {
         this.§6f§ = SPEED * param1;
         §^"F§(-Math.PI / 2,this.§6f§);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.§5N§ = §9%1§.§&!A§ + §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
      }
      
      public function §4%P§() : void
      {
         var _loc1_:Number = angle - §6"m§;
         if(_loc1_ < -Math.PI)
         {
            _loc1_ += 2 * Math.PI;
         }
         §^"F§(_loc1_,this.§6f§);
         this.§6$d§(_loc1_);
      }
      
      public function §>g§() : void
      {
         var _loc1_:Number = angle + §6"m§;
         if(_loc1_ > Math.PI)
         {
            _loc1_ -= 2 * Math.PI;
         }
         §^"F§(_loc1_,this.§6f§);
         this.§6$d§(_loc1_);
      }
      
      private function §6$d§(param1:Number) : void
      {
         if(Math.abs(param1) > 2 * Math.PI / 6 && Math.abs(param1) < 4 * Math.PI / 6)
         {
            this.graphics.§4]§();
         }
         else if(Math.abs(param1) < 2 * Math.PI / 6)
         {
            this.graphics.§3!J§();
         }
         else
         {
            this.graphics.§3$d§();
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         if(this.groundBreaks <= 0 || param1.other is §+%]§)
         {
            this.explode();
         }
         else
         {
            §@%;§.play(§`!v§.§0#O§);
            §1"-§.explode(§;n§.§7q§,x,y,this.paramSet.explosionRadius.value);
            inflictDamage(param1.other,§'"i§,§%$9§ + 15,§%$9§,false);
            §1"-§.§&!C§(x,y,4);
            --this.groundBreaks;
         }
      }
      
      public function explode() : void
      {
         disposed = true;
         inflictDamage(null,this.damage,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
         §1"-§.§&!C§(x,y,12);
         §1"-§.explode(§;n§.§@%d§,this.x,this.y,this.paramSet.explosionRadius.value,§`!v§.§["s§);
         if(this.cripple)
         {
            §7%g§.§,O§(x,y,this.paramSet.damageRadius.value,CRIPPLE_DURATION);
         }
      }
      
      public function §0!i§(param1:uint) : void
      {
         this.groundBreaks = param1;
      }
      
      public function §6$v§(param1:uint) : void
      {
         this.damagePerSupply = param1;
      }
      
      private function §&w§(param1:SupplyPickedUpEvent) : void
      {
         if(param1.picker == this && !this.§?f§)
         {
            this.damage += this.damagePerSupply;
         }
      }
      
      private function get §?f§() : Boolean
      {
         return this.damage - this.paramSet.damage.value >= this.damagePerSupply * §-"R§;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SUPPLY_PICKED_UP,this.§&w§);
         if(this.sound)
         {
            this.sound.stop();
            this.sound = null;
         }
         super.§[$u§(param1);
      }
      
      public function setCripple() : void
      {
         this.cripple = true;
      }
      
      public function get §3"%§() : int
      {
         return this.§6f§;
      }
   }
}

