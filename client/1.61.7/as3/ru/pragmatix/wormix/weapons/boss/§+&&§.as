package ru.pragmatix.wormix.weapons.boss
{
   import § #9§.§"$t§;
   import §!!!§.*;
   import §##j§.§#$!§;
   import §##j§.§7,§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!@§.§>"B§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§+m§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §0%[§.§""n§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §2#H§.§+N§;
   import §4'§.§!!0§;
   import §4'§.§`"q§;
   import §5#`§.§7%g§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§;!f§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §+&&§ extends §6#I§
   {
      
      public function §+&&§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param1.x,param1.y,false);
         initialize(param1.weapon.getBarrelPoint(param3),param2.ammoClassName);
         §^"F§(param3,param4);
         §`4§ = §5$=§;
         §4M§ = false;
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§+%]§ = null;
         if(!disposed)
         {
            _loc2_ = param1.other as §+%]§;
            if(Boolean(_loc2_) && _loc2_.buffs.§%%b§([§+N§.NAME,§+m§.NAME]))
            {
               this.trigger(_loc2_);
            }
            else
            {
               §1"-§.explode(§;n§.§6#B§,x,y,10,§`!v§.§5%;§);
            }
            disposed = true;
         }
      }
      
      private function trigger(param1:§+%]§) : void
      {
         param1.buffs.§6C§(§+N§.NAME);
         param1.buffs.§6C§(§+m§.NAME);
      }
   }
}

