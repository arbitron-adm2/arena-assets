package §%&3§
{
   import §!$d§.§<$c§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%$!§.§9$p§;
   import §&!m§.§-$6§;
   import §&"R§.§`&7§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§[0§;
   import §,#_§.FrameTimer;
   import §-8§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.§[!F§;
   import §1!J§.§@#%§;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §4!!§.*;
   import §4f§.§-&§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §9%W§.§!7§;
   import §;!Z§.*;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@!N§.§-!Y§;
   import §@!N§.§3!3§;
   import §@!i§.§8%6§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import com.greensock.loading.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §[$z§ extends §6#I§
   {
      
      public static const § $f§:int = 12;
      
      protected static const §7#c§:int = 150;
      
      protected static const SPEED:int = 25;
      
      protected static const §6"m§:Number = 7 * Math.PI / 180;
      
      protected var point:Point;
      
      private var §&&8§:FrameTimer;
      
      protected var §^#S§:FrameTimer;
      
      protected var paramSet:§5$n§;
      
      protected var damage:§&$2§;
      
      protected var homingFeat:§%%2§;
      
      protected var §'""§:Boolean = true;
      
      protected var §@!+§:int;
      
      protected var §&"$§:Boolean;
      
      protected var §>";§:§7#P§;
      
      protected var §,!8§:§=#?§;
      
      protected var explosionSound:§=#?§;
      
      protected var §`c§:Boolean;
      
      public function §[$z§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Point, param7:int = 12)
      {
         var owner:§+%]§ = param1;
         var position:Point = param2;
         var paramSet:§5$n§ = param3;
         var angle:Number = param4;
         var power:uint = param5;
         var target:Point = param6;
         var homingDelay:int = param7;
         super(owner,position.x,position.y,false);
         this.explosionSound = this.explosionSound || §`!v§.§4"t§;
         this.§,!8§ = this.§,!8§ || §`!v§.§["p§;
         this.§@!+§ = this.§@!+§ || §7#c§;
         this.damage = new §&$2§(paramSet.damage.value);
         §@%;§.play(this.§,!8§);
         initialize(§"$C§(angle,0,position),paramSet.ammoClassName);
         this.clip.rotation = angle * 180 / Math.PI;
         this.point = target;
         this.paramSet = paramSet;
         §^"F§(angle,power);
         §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            explode(param1.other);
         });
         this.homingFeat = new §%%2§(this,SPEED,§6"m§);
         §=l§.push(this.homingFeat);
         this.§&"$§ = true;
         if(homingDelay > 0)
         {
            this.§?$F§(homingDelay);
            §`4§ = §5$=§;
         }
         else
         {
            this.§7$=§();
         }
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §?$F§(param1:uint) : void
      {
         var homingDelay:uint = param1;
         this.§^#S§ = new FrameTimer(this.§@!+§,1);
         this.§^#S§.addEventListener(FrameTimerEvent.§;$>§,function(param1:Event):void
         {
            explode(null);
         });
         this.§&&8§ = new FrameTimer(homingDelay,1);
         this.§&&8§.addEventListener(FrameTimerEvent.§;$>§,function(param1:Event):void
         {
            physParams.§"%<§(§]%G§.§="u§);
            §^#S§.start();
            §7$=§();
            if(§&"$§)
            {
               §>";§ = §@%;§.play(§`!v§.§]%2§,true);
            }
         });
         this.§&&8§.start();
      }
      
      protected function §7$=§() : void
      {
         §`4§ = §]$S§;
         this.homingFeat.§0!F§(this.point);
      }
      
      protected function explode(param1:§&"T§) : void
      {
         if(disposed)
         {
            return;
         }
         inflictDamage(param1,this.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true,this.§`c§);
         disposed = true;
         §1"-§.§&!C§(x,y,16);
         if(this.§>";§ != null)
         {
            this.§>";§.stop();
         }
         §1"-§.explode(§;n§.MEDIUM,x,y,this.paramSet.explosionRadius.value,this.explosionSound);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.§'""§)
         {
            §1"-§.explode(§;n§.§7q§,x,y,Math.random() * 4 + 6);
         }
      }
      
      public function §&"@§() : void
      {
         this.homingFeat.§7"m§ = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(Boolean(this.§&&8§) && this.§&&8§.running)
         {
            this.§&&8§.stop();
         }
         if(Boolean(this.§^#S§) && this.§^#S§.running)
         {
            this.§^#S§.stop();
         }
         if(this.§>";§ != null)
         {
            this.§>";§.stop();
         }
         super.§[$u§(param1);
      }
   }
}

