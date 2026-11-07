package ru.pragmatix.wormix.messages.server
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §'$Z§.§2#f§;
   import §+#P§.§8"j§;
   import §,"v§.§9%d§;
   import §-@§.§8"k§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4#`§.*;
   import §4$b§.§2m§;
   import §6"'§.§9$Z§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$Z§.§9!&§;
   import §<%E§.§;!y§;
   import §<V§.§!&-§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §?#g§.Race;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import config.achievements.BossAchieves;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.PostToClanChatResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class StartBattleResult
   {
      
      public var battleId:uint;
      
      public var reagentsForBattle:Vector.<int> = new Vector.<int>(0);
      
      public function StartBattleResult()
      {
         super();
      }
      
      public function toString() : String
      {
         return "StartBattleResult{battleId=" + this.battleId + ", reagentsForBattle=" + this.reagentsForBattle + "}";
      }
   }
}

