package §4$"§
{
   import § "d§.§,!c§;
   import § &5§.§!$#§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+%S§.§]&§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!0§.§%$t§;
   import §2!0§.§'$x§;
   import §2!0§.§-"Y§;
   import §2!0§.§=&%§;
   import §3#a§.§-!`§;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §6%2§.§'"Y§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=&!§.§<$!§;
   import §?#g§.Race;
   import §?>§.§0!7§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import config.§5%T§;
   import config.achievements.§%#c§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   
   public class WatermelonPiece extends §6#I§
   {
      
      protected var paramSet:§5$n§;
      
      public function WatermelonPiece(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§)
      {
         super(param1,param2,param3,true);
         initialize(new Point(param2,param3),param6.ammoClassName);
         §^"F§(param4,param5 * 2);
         this.clip.scaleX = this.clip.scaleY = 2;
         physParams.§5N§ = §9%1§.§&!A§;
         this.paramSet = param6;
         §`4§ = §5$=§;
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
         this.attachTrail();
      }
      
      protected function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.§;%k§(this,§;n§.§7q§,8);
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         inflictDamage(param1.other,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true,false,true,_customSource);
         disposed = true;
         §1"-§.§&!C§(x,y,6);
         §1"-§.explode(§;n§.MEDIUM,x,y,this.paramSet.damageRadius.value,§`!v§.§["s§);
      }
   }
}

