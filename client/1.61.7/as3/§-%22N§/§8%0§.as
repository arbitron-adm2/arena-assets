package §-"N§
{
   import § "%§.§0$[§;
   import § %f§.MechPuppet;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §#",§.ChooseFriendMenu;
   import §#"V§.§!&5§;
   import §##j§.§#$!§;
   import §##j§.§9x§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §%$!§.§@!o§;
   import §%E§.§5%C§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&$Y§.§&!R§;
   import §&%7§.§ !0§;
   import §'!Z§.*;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2!I§;
   import §+%S§.§2$#§;
   import §+%S§.§=t§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-@§.§3%9§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#s§.*;
   import §3%J§.SpecialDealWindow;
   import §4!x§.§@& §;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6%2§.§!"x§;
   import §6%2§.§+§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7$t§.§&!e§;
   import §8#<§.§1"k§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!O§.§%@§;
   import §[!`§.*;
   import §[%'§.§<"G§;
   import §]#[§.*;
   import §]$v§.*;
   import §]^§.§3$f§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§28§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §8%0§ extends §3%d§
   {
      
      private var §0$W§:§`&-§;
      
      public function §8%0§(param1:§]$d§, param2:§4$z§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:§3%9§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:§?B§ = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:§ !0§ = null;
         var _loc14_:§&!e§ = null;
         super(param1,param2,§6#A§.§!&6§(§+"'§.§,!%§));
         var _loc3_:§<$Z§ = param2.result;
         if(param2.§;% §)
         {
            rewards.push(new §#$!§(§+$A§.INGAME,param2.§;% §));
         }
         if(!_loc3_.equals(§<$Z§.§7!i§))
         {
            nextBtn.y = §8"`§.y = §>!-§.y;
         }
         getChildByName("rankPanel").visible = false;
         var _loc4_:§<#&§ = param1.wager;
         if(_loc4_)
         {
            _loc5_ = !§4! §.§7"-§(Application.userProfile,§+$A§.INGAME,_loc4_,false);
            _loc6_ = §8"%§.§%$r§;
            _loc7_ = _loc4_.id == §-"P§.§,%@§;
            _loc8_ = (_loc7_) && (_loc6_.winCount == §3%9§.§-"$§ - 1 && _loc3_ == §<$Z§.§+%I§ || _loc6_.defeatCount == §3%9§.§5$A§ - 1 && _loc3_ == §<$Z§.§!M§);
            _loc9_ = §8"%§.§'%;§;
            _loc10_ = _loc4_.id == §-"P§.MERCENARIES_DUEL;
            _loc11_ = (_loc10_) && (_loc9_.§<4§ == §?B§.§!$a§ - 1 && _loc3_ == §<$Z§.§+%I§ || _loc9_.§=%Z§ == §?B§.§-m§ - 1 && _loc3_ == §<$Z§.§!M§);
            _loc12_ = param2.§8%I§ > 0;
            nextBtn.setDisabled(_loc8_ || _loc5_ || _loc12_ || _loc11_);
            nextBtn.setVisible(!_loc12_);
            if(_loc8_ || _loc11_)
            {
               §>!-§.setText(§0$N§.AWARD_LABEL + "!");
            }
            this.§`$,§(_loc7_);
            if(_loc4_.rankPoints)
            {
               _loc13_ = new § !0§(getChildByName("rankPanel"),param2,this);
               _loc13_.y = lastPosition.y;
               lastPosition.y += _loc13_.height + 10;
               _loc13_.setVisible(true);
               if(param2.rankPoints != 0)
               {
                  _loc14_ = §+#7§.§8&E§(§!"x§.RANK_POINTS);
                  rewards.push(new §9x§(param2.rankPoints,_loc14_.§7%z§()));
               }
            }
         }
         else
         {
            nextBtn.setDisabled(false);
            nextBtn.setText(§<"G§.§%! §("REPEAT_BTN"),§"-§.§+$m§);
            this.§`$,§(false);
         }
         if(rewards.length > 0)
         {
            §7$K§();
         }
         §%&!§(_loc3_,param1.§6"M§(),false);
         this.§3% §();
         §<m§ = [nextBtn.getContainer(),§8"`§,§>!-§.getContainer()];
         §]$F§();
         §8"%§.§?!W§.addEventListener(§4$T§.CANCEL_BATTLE_REQUEST,this.§6&&§);
      }
      
      private static function §@Y§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§-!]§(param1);
      }
      
      private function §`$,§(param1:Boolean) : void
      {
         if(expPanel)
         {
            expPanel.setVisible(!param1);
         }
         this.§0$W§ = new §`&-§(getChildByName("gladiatorResultPanel"));
         this.§0$W§.setVisible(param1);
         if(param1)
         {
            lastPosition.y += this.§0$W§.height + 10;
         }
         §'%s§("msg").visible = !param1;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         var _loc2_:§3%9§ = null;
         super.show(param1);
         if(Boolean(this.§0$W§) && this.§0$W§.isVisible())
         {
            _loc2_ = §8"%§.§%$r§;
            this.§0$W§.§'%s§("winsTitle").text = §0$N§.WIN_LABEL;
            this.§0$W§.§'%s§("losesTitle").text = §0$N§.DEFEAT_LABEL;
            this.§0$W§.§'%s§("winsCount").text = String(_loc2_.winCount);
            this.§0$W§.§'%s§("losesCount").text = String(_loc2_.defeatCount);
         }
      }
      
      override protected function §3% §() : void
      {
         nextBtn.y = §8"`§.y = §>!-§.y = lastPosition.y;
      }
      
      override protected function §7#M§(param1:TextField) : void
      {
         §&$9§.§>&F§(param1,§"-§.§+$m§,§8$_§());
         lastPosition.y += param1.height + 10;
         nextBtn.y = §8"`§.y = §>!-§.y = lastPosition.y;
      }
      
      override protected function §=!O§() : void
      {
         nextBtn = §!&5§.§7#[§(getChildByName("nextBtn"));
         nextBtn.§[!u§(this.§,%l§);
         nextBtn.setText(§<"G§.§%! §("NEXT_BATTLE_BTN"),§"-§.§+$m§);
      }
      
      override protected function §,%l§(param1:Event) : void
      {
         §!#z§(this.§[#O§);
      }
      
      private function §[#O§() : void
      {
         var _loc1_:§]$d§ = null;
         Application.setUserBusy(false);
         _loc1_ = §8"%§.§?!W§.§^!U§();
         var _loc2_:§<#&§ = _loc1_.wager;
         if(Boolean(_loc2_) && _loc1_.battleType.id != §&$a§.§^#f§.id)
         {
            if(_loc2_.id == §-"P§.§,$^§)
            {
               new ChooseFriendMenu(§@Y§).show();
            }
            else if(_loc2_.id == §-"P§.§`$=§)
            {
               §8"%§.§?$5§.§3&%§();
            }
            else
            {
               if(_loc2_.id == §-"P§.MERCENARIES_DUEL)
               {
                  §?B§.§8#&§(null);
               }
               §8"%§.§?!W§.§`";§(_loc2_);
            }
         }
         else if(_loc1_.§<",§())
         {
            §8"%§.§?!W§.§]$R§(§8"%§.§?!W§.§]"o§(),_loc2_.§7&&§,_loc2_.id);
         }
         else if(_loc1_.§,$,§())
         {
            §8"%§.§?!W§.§3%!§(§8"%§.§?!W§.§]"o§());
         }
         else
         {
            §8"%§.§?!W§.§@&A§(§8"%§.§?!W§.§]"o§(),false,§8"%§.§?!W§.§]"o§().§54§().§1#&§);
         }
         nextBtn.setDisabled(true);
         postBtn.setDisabled(true);
      }
      
      private function §6&&§(param1:Event) : void
      {
         nextBtn.setDisabled(false);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         §8"%§.§?!W§.removeEventListener(§4$T§.CANCEL_BATTLE_REQUEST,this.§6&&§);
      }
   }
}

