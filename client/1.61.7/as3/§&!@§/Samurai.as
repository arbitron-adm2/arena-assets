package §&!@§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§^$y§;
   import §2#H§.§`#D§;
   import §2#i§.§9##§;
   import §3#a§.§-!`§;
   import §4#`§.*;
   import §4$b§.§2m§;
   import §4'§.§4$&§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$Z§.§9!&§;
   import §9![§.*;
   import §<!W§.*;
   import §<"?§.§6"d§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §?$K§.§!"t§;
   import §?$K§.§=z§;
   import §?%J§.*;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[!`§.VoidZone;
   import §[%§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.plugins.*;
   import config.§;"I§;
   import config.§`!a§;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.*;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class Samurai extends §6"d§
   {
      
      public static const §?4§:§&$2§ = new §&$2§(100);
      
      public static const §5"g§:§&$2§ = new §&$2§(7);
      
      public static const §]$#§:§&$2§ = new §&$2§(7);
      
      public function Samurai()
      {
         super(5);
      }
      
      override public function getId() : int
      {
         return §+#N§.SAMURAI;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §0%d§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[§#$J§(834,395),§#$J§(1640,1000),§#$J§(611,1002),§#$J§(1068,1227)],[§#$J§(1254,641)]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§0%v§.§&!D§,this.§'$R§);
         §'#G§();
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.§8$^§)
         {
            _loc2_ = §]%!§(BossAchieves.§8$^§);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§]$#§.value);
            }
         }
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.victim.disposed)
         {
            _loc2_ = §]%!§(BossAchieves.§%!p§);
            if(_loc2_.available && (Boolean(param1.victim.§8!m§) && Boolean(param1.victim.§8!m§.damageType == §&!E§.FIRE)))
            {
               §=$I§(_loc2_,§5"g§.value);
            }
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.§?#o§);
         _loc2_.count += Math.ceil(param1.power);
         if(!_loc2_.closed && _loc2_.count > §?4§.value)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.§?#o§).§,%,§();
      }
      
      override public function clear() : void
      {
         §>%A§();
         script.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         super.clear();
      }
   }
}

