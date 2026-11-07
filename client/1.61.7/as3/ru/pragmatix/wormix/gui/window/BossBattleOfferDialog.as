package ru.pragmatix.wormix.gui.window
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+&<§.§@$L§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%z§.*;
   import §1#p§.§"Z§;
   import §2!-§.WaterLevelChangedEvent;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4'§.§#"l§;
   import §4'§.§4$&§;
   import §5!,§.§9$h§;
   import §6$0§.§<!o§;
   import §7!B§.§&"T§;
   import §7$t§.§2& §;
   import §7$t§.§=?§;
   import §8#a§.ShopMenu;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<!W§.§=!6§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §=!p§.§1e§;
   import §=$#§.§ b§;
   import §=&!§.§4$z§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §[!`§.ArcticTorch;
   import §]$J§.§#"s§;
   import §]&?§.§7#g§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^"I§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`$T§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.*;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BossBattleOfferDialog extends BattleOfferDialog
   {
      
      private var titleBoss:TextField;
      
      private var textDifficulty:TextField;
      
      private var battlesAvailable:TextField;
      
      private var battlesAvailableCount:TextField;
      
      private var line:MovieClip;
      
      private var §"!U§:MovieClip;
      
      private var §+&9§:MovieClip;
      
      private var §<#t§:int;
      
      public function BossBattleOfferDialog()
      {
         super(§6#A§.§!&6§(§+"'§.§4#h§));
         §8"%§.§%w§.§&u§(this.§4!Z§,null);
         this.§<#t§ = getContainer().height;
         this.titleBoss = §'%s§("titleBoss");
         this.textDifficulty = §'%s§("textDifficulty");
         this.battlesAvailable = §'%s§("battlesAvailable");
         this.battlesAvailableCount = §'%s§("battlesAvailableCount");
         this.line = §'$a§("line");
         this.§"!U§ = §'$a§("coopBossCont");
         this.§+&9§ = §'$a§("superBossCont");
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=#h§ = §0$N§.BOSS_PLAY_BTN;
      }
      
      override public function §`![§(param1:Vector.<int>) : void
      {
         var _loc3_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:§5" § = null;
         var _loc8_:§5" § = null;
         var _loc9_:§8"e§ = null;
         var _loc10_:int = 0;
         var _loc11_:§8%6§ = null;
         var _loc2_:Boolean = param1.length == 2;
         _loc3_ = param1.length == 1;
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,_loc2_ ? §0$N§.SUPER_BOSS_BATTLE_OFFER_TITLE : §0$N§.BOSS_BATTLE_OFFER_TITLE);
         if(_loc2_)
         {
            _loc6_ = §6J§.getInstance().§`"o§(-1,param1);
            _loc7_ = §3$f§.§<$K§(param1[0]);
            _loc8_ = §3$f§.§<$K§(param1[1]);
            _loc9_ = §8"e§.§["V§(_loc6_ == -1 ? uint(§8"e§.§?=§.getId()) : uint(_loc6_));
            this.titleBoss.text = _loc8_.§7%z§() + " + " + _loc7_.§7%z§();
            §&$9§.§>&F§(this.textDifficulty,§"-§.§+$m§,_loc9_.§@$+§());
            §@$L§.§+"S§(this.§+&9§.getChildByName("avatar1") as MovieClip,param1[0]);
            §@$L§.§+"S§(this.§+&9§.getChildByName("avatar2") as MovieClip,param1[1]);
            _loc10_ = 0;
            while(_loc10_ < §8"e§.§#&$§().length)
            {
               this.§+&9§.getChildByName("diff" + _loc10_).visible = _loc10_ == _loc6_;
               _loc10_++;
            }
            panel.height = this.§<#t§ + 70;
         }
         else if(_loc3_)
         {
            _loc11_ = §6%k§.§7%q§(param1[0]);
            this.titleBoss.text = _loc11_.§7%z§();
            §@$L§.§+"S§(this.§"!U§.getChildByName("avatar") as MovieClip,param1[0]);
            panel.height = this.§<#t§ - 20;
         }
         var _loc4_:int = 10;
         var _loc5_:int = _loc2_ ? 328 : 276;
         this.titleBoss.y = _loc5_;
         this.textDifficulty.y = this.titleBoss.y + this.titleBoss.height;
         this.line.y = _loc2_ ? this.textDifficulty.y + this.textDifficulty.height + _loc4_ : this.textDifficulty.y;
         this.battlesAvailable.y = this.line.y + this.line.height + _loc4_;
         this.battlesAvailableCount.y = this.battlesAvailable.y - 3;
         §>!-§.y = §!S§.y = this.battlesAvailable.y + this.battlesAvailable.height + _loc4_;
         ignoreBtn.y = §>!-§.y + §>!-§.height + _loc4_;
         this.§+&9§.visible = _loc2_;
         this.§"!U§.visible = _loc3_;
         this.textDifficulty.visible = _loc2_;
      }
      
      private function §4!Z§() : void
      {
         this.§-"r§();
      }
      
      override public function §-"r§() : void
      {
         this.battlesAvailable.text = §0$N§.BATTLES_AVAILABLE;
         var _loc1_:uint = §8"%§.§[%h§.§`t§();
         §&$9§.§>&F§(this.battlesAvailableCount,§"-§.§6"j§,_loc1_.toString());
      }
      
      public function get §8!8§() : MovieClip
      {
         return this.§+&9§;
      }
   }
}

