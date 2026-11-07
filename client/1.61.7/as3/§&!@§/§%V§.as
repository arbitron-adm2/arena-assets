package §&!@§
{
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#%!§.§7V§;
   import §#%!§.§=-§;
   import §#%!§.§[%U§;
   import §%"1§.§=#?§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §+%S§.§2$#§;
   import §,"v§.§&"a§;
   import §-%B§.§-"o§;
   import §-@§.*;
   import §0!§.§9"u§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3#T§.Meteor;
   import §4!x§.§@& §;
   import §4$b§.§2m§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §6%2§.*;
   import §65§.§6%E§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<!^§.MeteorShard;
   import §<"?§.§6"d§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.§0%-§;
   import §?o§.§?!x§;
   import §@!i§.§"-§;
   import §@$f§.PromoRaidWindow;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.*;
   import §[$P§.§+H§;
   import §^!"§.§0^§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§@&,§;
   import §`%&§.§`§;
   import config.§28§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import flash.utils.setTimeout;
   import ru.inspirit.net.*;
   import ru.inspirit.net.events.MultipartURLLoaderEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.serialization.*;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CancelBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §%V§ extends §6"d§
   {
      
      private static const §+%!§:int = 4;
      
      private static const §-!2§:int = 3;
      
      public function §%V§()
      {
         super(64);
      }
      
      override public function getId() : int
      {
         return §+#N§.§,&7§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §0%-§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[0],mapRecord.§8$2§[1],mapRecord.§8$2§[2],mapRecord.§?$&§[1]],[mapRecord.§8$2§[4],mapRecord.§8$2§[5],mapRecord.§8$2§[7],mapRecord.§8$2§[3]]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§0%v§.§&!D§,this.§7#`§);
         var _loc1_:§2R§ = §]%!§(BossAchieves.PIRATE_REVENGE_AVOID_METEORS);
         if(Boolean(_loc1_) && _loc1_.available)
         {
            §'#G§();
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.PIRATE_REVENGE_DROWN_SUPPORTS)
         {
            _loc2_ = §]%!§(BossAchieves.PIRATE_REVENGE_DROWN_SUPPORTS);
            if(Boolean(_loc2_) && _loc2_.available)
            {
               §=$I§(_loc2_,§+%!§);
            }
         }
         else if(param1.code == BossAchieves.PIRATE_REVENGE_DROWN_THREE_TIMES)
         {
            _loc2_ = §]%!§(BossAchieves.PIRATE_REVENGE_DROWN_THREE_TIMES);
            if(Boolean(_loc2_) && _loc2_.available)
            {
               §=$I§(_loc2_,§-!2§);
            }
         }
      }
      
      private function §7#`§(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.victim.disposed)
         {
            _loc2_ = §]%!§(BossAchieves.PIRATE_REVENGE_DROWN_SUPPORTS);
            if(Boolean(_loc2_) && _loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.source is Meteor || param1.source is MeteorShard)
         {
            _loc2_ = §]%!§(BossAchieves.PIRATE_REVENGE_AVOID_METEORS);
            if(Boolean(_loc2_) && _loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
               §>%A§();
            }
         }
      }
      
      override protected function §'G§() : void
      {
         var _loc1_:§2R§ = §]%!§(BossAchieves.PIRATE_REVENGE_AVOID_METEORS);
         if(_loc1_)
         {
            §]%!§(BossAchieves.PIRATE_REVENGE_AVOID_METEORS).§,%,§();
         }
      }
   }
}

