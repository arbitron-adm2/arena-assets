package §=1§
{
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%&6§.§2$v§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§=$2§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §3#T§.§5!M§;
   import §3#a§.§-#M§;
   import §4!!§.§76§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.*;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<"?§.§@&#§;
   import §<"L§.*;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.BuySkinResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Paladin extends §@&#§
   {
      
      public static const §8!H§:§&$2§ = new §&$2§(10);
      
      public function Paladin()
      {
         super(86);
         resource = new §@#%§("paladin.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.§"v§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §>V§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([§#$J§(1387,387),§#$J§(2271,531),§#$J§(1779,844),§#$J§(1173,714)],new §,'§(17 * 29)),[§#$J§(673,407)]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§0%v§.DISPOSED,this.§'!m§);
         §>V§(script).getBoss().addEventListener(§0%v§.§^$3§,this.onBossSink);
         §>V§(script).getBoss().addEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         §'#G§();
         §>!6§();
      }
      
      private function onBossSink(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.PALADIN_MERMAN);
         if(_loc2_.available)
         {
            §=$I§(_loc2_,§8!H§.value);
         }
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         var e:Event = param1;
         §+%]§(e.target).removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         §+%]§(e.target).removeEventListener(§0%v§.§^$3§,this.onBossSink);
         §8$a§.§%!E§(10,function():void
         {
            var _loc1_:§+%]§ = §>V§(script).getBoss();
            if(_loc1_)
            {
               _loc1_.addEventListener(§0%v§.§^$3§,onBossSink);
               _loc1_.addEventListener(§0%v§.DISPOSED,onBossDisposed);
            }
         });
      }
      
      private function §'!m§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.PALADIN_OLD_GOD);
         if(!_loc2_.closed)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         if(§+%]§(param1.victim).disposed)
         {
            this.§6$@§();
         }
      }
      
      override protected function §-"S§(param1:Event) : void
      {
         if(§+%]§(param1.target).disposed)
         {
            this.§6$@§();
         }
      }
      
      private function §6$@§() : void
      {
         var _loc1_:§2R§ = §]%!§(BossAchieves.PALADIN_SURVIVE_ALL);
         if(_loc1_.available)
         {
            _loc1_.§#"!§();
            §5X§(_loc1_);
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.PALADIN_OLD_GOD).§,%,§();
         §]%!§(BossAchieves.PALADIN_SURVIVE_ALL).§,%,§();
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = §>V§(script).getBoss();
         if(_loc1_)
         {
            _loc1_.removeEventListener(§0%v§.§^$3§,this.onBossSink);
            _loc1_.removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         }
         script.removeEventListener(§0%v§.DISPOSED,this.§'!m§);
         §>%A§();
         §<$g§();
         super.clear();
      }
   }
}

