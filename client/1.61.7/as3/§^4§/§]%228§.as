package §^4§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §3#T§.§]!6§;
   import §4$b§.§2m§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §?$K§.§=z§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]&?§.§?u§;
   import §^!]§.MineSetUpEvent;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §]"8§ extends §6#I§
   {
      
      public static const §@%§:uint = 16762931;
      
      public static const §>$w§:int = 2;
      
      private static const §?"W§:Array = [§`!v§.WATER_IMPACT1,§`!v§.WATER_IMPACT2,§`!v§.WATER_IMPACT3];
      
      private static const §4&=§:int = 200;
      
      private static const §'"v§:Number = 180 / Math.PI;
      
      private var §&!b§:§5$n§;
      
      private var §["D§:Number = 0;
      
      private var pushForce:Number;
      
      private var §<"c§:Boolean = false;
      
      private var §&"9§:Boolean = false;
      
      protected var §@&-§:Boolean;
      
      public function §]"8§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Number = 2, param7:Boolean = false, param8:Boolean = false, param9:Boolean = true, param10:Boolean = false)
      {
         if(!param10 && (§>#9§.point(param2.x,param2.y) || §>#9§.point((param1.x + param2.x) / 2,(param1.y + param2.y) / 2)))
         {
            param2.x = param1.x;
            param2.y = param1.y;
         }
         super(param1,param2.x,param2.y,false);
         §7%[§(physicModel).checkEnemiesOnStart();
         §7%[§(physicModel).addToIgnored(param1);
         §-"e§ = false;
         §,%S§ = param8;
         this.§&!b§ = param3;
         this.§@&-§ = param7;
         this.pushForce = param6;
         initialize(param2,param3.ammoClassName);
         §^"F§(param4,param5);
         if(clip)
         {
            clip.rotation = param4 * §'"v§;
         }
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
         if(param9 && !param10)
         {
            new §]!6§(param1.x,param1.y).setSpeedXY(-param1.direction * §8"%§.randomSeed.§,!q§(3,7),-1 * §8"%§.randomSeed.§,!q§(6,15));
         }
         if(Boolean(param3) && Boolean(param3.ammosByShot) && param3.ammosByShot.value > 1)
         {
            this.§["D§ = §="j§(param1) * 0.005 / param3.ammosByShot.value;
         }
      }
      
      public function §>#7§(param1:uint = 16762931, param2:uint = 16777215, param3:uint = 6, param4:uint = 2, param5:Number = 0.996) : void
      {
         §1"-§.attachTrail(this,param3,param4,param1,param2,param5);
      }
      
      public function §>#[§(param1:uint) : void
      {
         this.§##[§ = param1;
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc3_:Number = NaN;
         if(this.§<"c§)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"bullet collision hacked"));
         }
         this.§<"c§ = true;
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         this.§]!x§(param1.other);
         var _loc2_:Point = this.§&"9§ ? null : §=z§.§-L§(param1.other);
         inflictDamage(param1.other,this.§&!b§.damage.value,this.§&!b§.damageRadius.value,this.§&!b§.explosionRadius.value,true,false,true,_customSource);
         if(param1.other)
         {
            _loc3_ = (this.pushForce + this.§["D§) * -1;
            §'"$§.§<#j§(param1.other,0,_loc3_,true);
         }
         if(_loc2_)
         {
            §=z§.§5!u§(param1.other,_loc2_);
         }
         if(!this.§@&-§)
         {
            §@%;§.play(Math.random() > 0.5 ? §`!v§.RIKOSHET1 : §`!v§.RIKOSHET2);
         }
         disposed = true;
      }
      
      protected function §]!x§(param1:§&"T§) : void
      {
         if(param1 == null)
         {
            §1"-§.§&!C§(x,y,8);
            §1"-§.explode(§;n§.MEDIUM,this.x,this.y,this.§&!b§.damageRadius.value);
         }
         else
         {
            §1"-§.explode(§;n§.MEDIUM,this.x,this.y,10);
         }
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         if(y > 0 && x > -§4&=§ && x < Application.scene.width + §4&=§)
         {
            §@%;§.play(§`!v§.§=%2§(§?"W§));
         }
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(!this.§<"c§)
         {
            §1"-§.explode(§;n§.MEDIUM,this.x,this.y,10);
         }
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         super.§[$u§(param1);
      }
      
      public function get paramSet() : §5$n§
      {
         return this.§&!b§;
      }
      
      public function §&%-§() : void
      {
         this.§&"9§ = true;
      }
   }
}

