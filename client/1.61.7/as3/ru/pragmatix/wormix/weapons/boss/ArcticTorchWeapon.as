package ru.pragmatix.wormix.weapons.boss
{
   import § "L§.§`#r§;
   import § "d§.§,!c§;
   import § #m§.§;#^§;
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%#u§.*;
   import §%L§.§%%w§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#T§.§+&F§;
   import §3#a§.§-!`§;
   import §4$"§.WatermelonPiece;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §9%W§.§!"G§;
   import §<!W§.§9%,§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?%J§.*;
   import §@!i§.§!m§;
   import §@!i§.§5%8§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^"y§.*;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.SendWipeConfirmCode;
   import ru.pragmatix.wormix.messages.server.SendWipeConfirmCodeResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class ArcticTorchWeapon extends §,%r§
   {
      
      public function ArcticTorchWeapon()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         var _loc1_:§!"G§ = new §!"G§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         §^&I§.value = false;
      }
      
      public function §6#N§(param1:Number) : Boolean
      {
         if(§9$h§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         new §+&&§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power));
         §9$h§.update(owner);
         §?!K§();
         var _loc1_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(Boolean(_loc1_) && Boolean(_loc1_.§#"G§()) && _loc1_.§=%g§())
         {
            §+# §.§9! §.activate();
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
   }
}

