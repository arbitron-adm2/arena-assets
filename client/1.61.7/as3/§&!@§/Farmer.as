package §&!@§
{
   import § !P§.*;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §##j§.§!%&§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.BeforeHitEvent;
   import §#$e§.*;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&&6§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'%[§.§#&B§;
   import §+$=§.§6#A§;
   import §+5§.*;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.*;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.§^!9§;
   import §2"L§.§##l§;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4%_§.§3§;
   import §4'§.§#"l§;
   import §4f§.§-&§;
   import §4u§.ReagentHint;
   import §5!,§.§9$h§;
   import §5!9§.§6$,§;
   import §6",§.§[%w§;
   import §6$z§.BonusStat;
   import §65§.§`"C§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §9%W§.§`"y§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §<"?§.§6"d§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$7§.§+#N§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?%J§.§,!0§;
   import §@!N§.§""L§;
   import §@!i§.*;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^!"§.§^$F§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§[$I§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.loading.core.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§4%?§;
   import ru.pragmatix.wormix.gui.window.BattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.serialization.pvp.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Farmer extends §6"d§
   {
      
      public static const §;#n§:§&$2§ = new §&$2§(12);
      
      public static const §%$B§:§&$2§ = new §&$2§(8);
      
      private var §%"2§:§&$2§ = new §&$2§(0);
      
      private var §!$9§:§&$2§ = new §&$2§(0);
      
      public function Farmer()
      {
         super(32);
      }
      
      override public function getId() : int
      {
         return §+#N§.§`%b§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §,!0§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([§#$J§(1780,500),§#$J§(1080,550),§#$J§(545,545),§#$J§(2110,660)],new §,'§(42 * 13)),[§#$J§(1450,750)]];
         this.§%"2§.value = 0;
         this.§!$9§.value = 0;
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§^!9§.NAME,this.§-%n§);
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         if(param1.code == §,!0§.§7%d§)
         {
            ++this.§!$9§.value;
         }
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         var _loc2_:§2R§ = §]%!§(BossAchieves.§ ##§);
         if(§8"%§.§?!W§.§4"m§.§=%g§() && _loc2_.available)
         {
            if(this.§%"2§.value != this.§!$9§.value)
            {
               _loc2_.count = 0;
            }
            this.§%"2§.value = this.§!$9§.value = 0;
         }
      }
      
      private function §-%n§(param1:§^!9§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.picker.squad.isAi())
         {
            _loc2_ = §]%!§(BossAchieves.§=d§);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§%$B§.value);
            }
         }
         else
         {
            _loc2_ = §]%!§(BossAchieves.§ ##§);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§;#n§.value);
               var _loc3_:§&$2§ = this.§%"2§;
               var _loc4_:Number = _loc3_.value + 1;
               _loc3_.value = _loc4_;
            }
            _loc2_ = §]%!§(BossAchieves.§6!&§);
            if(!_loc2_.closed)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.§6!&§).§,%,§();
      }
      
      override public function clear() : void
      {
         script.removeEventListener(§^!9§.NAME,this.§-%n§);
         super.clear();
      }
   }
}

