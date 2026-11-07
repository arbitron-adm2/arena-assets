package §&!@§
{
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § &5§.§9X§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"&?§.§ "F§;
   import §#"V§.§6"%§;
   import §#"V§.§8"@§;
   import §##j§.§0m§;
   import §##j§.§7,§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%&6§.§=!l§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §+%S§.§@#s§;
   import §+5§.§^$[§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0!Y§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§2=§;
   import §1&-§.§4!s§;
   import §2!-§.DamageEvent;
   import §2"L§.§!#H§;
   import §2"L§.§,'§;
   import §2#H§.§>#M§;
   import §3#a§.§-#M§;
   import §4#`§.*;
   import §4$b§.§6!G§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §8$V§.§`"c§;
   import §9%W§.§&!P§;
   import §<!W§.*;
   import §<"?§.§6"d§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §=7§.*;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?%J§.§6"&§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§5%8§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"I§.*;
   import §^#[§.§&$2§;
   import §^4§.§9!K§;
   import §`$T§.*;
   import §`%&§.§,%§;
   import com.greensock.TweenLite;
   import com.greensock.data.TweenLiteVars;
   import config.§;"I§;
   import config.§=%A§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§#&I§;
   import ru.pragmatix.wormix.game.rules.§%$%§;
   import ru.pragmatix.wormix.game.rules.§%&=§;
   import ru.pragmatix.wormix.game.rules.§1";§;
   import ru.pragmatix.wormix.game.rules.§1#>§;
   import ru.pragmatix.wormix.game.rules.§;!f§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class AncientGhost extends §6"d§
   {
      
      private var boss:§+%]§;
      
      public function AncientGhost()
      {
         super(67);
         resource = new §@#%§("ancientGhost.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.GHOST;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §6"&§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[§#$J§(1343,1182),§#$J§(2353,1225),§#$J§(923,735),§#$J§(285,605)],[§#$J§(2001,585)],[§#$J§(1182,387),§#$J§(1820,910)]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§0%v§.§&!D§,this.§'$R§);
         §'#G§();
      }
      
      override public function §8%r§() : void
      {
         super.§8%r§();
         this.boss = enemySquads[0].§1!n§()[0];
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = §+%]§(param1.victim);
         var _loc3_:§2R§ = §]%!§(BossAchieves.ANCIENT_GHOST_AVOID_CLOUDS);
         if(_loc3_.available && param1.source is §9!K§ && param1.source.owner.squad.isAi())
         {
            _loc3_.§#"!§();
            §5X§(_loc3_);
         }
         if(_loc2_.disposed && _loc2_ == this.boss)
         {
            _loc3_ = §]%!§(BossAchieves.ANCIENT_GHOST_KILL_WITH_CLOUD);
            if(_loc3_.available && param1.source is §9!K§ && param1.source.owner.squad.isAi())
            {
               _loc3_.completed = true;
               §`#t§(_loc3_);
            }
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.ANCIENT_GHOST_AVOID_CLOUDS);
         if(_loc2_.available && param1.source is §9!K§ && param1.source.owner.squad.isAi())
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.ANCIENT_GHOST_DONT_MOVE)
         {
            _loc2_ = §]%!§(BossAchieves.ANCIENT_GHOST_DONT_MOVE);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.ANCIENT_GHOST_AVOID_CLOUDS).§,%,§();
         §]%!§(BossAchieves.ANCIENT_GHOST_DONT_MOVE).§,%,§();
      }
   }
}

