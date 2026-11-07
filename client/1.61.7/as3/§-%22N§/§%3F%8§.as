package §-"N§
{
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#E§.§;2§;
   import §&&6§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §+%S§.§[0§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-8§.*;
   import §-@§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2"L§.§,'§;
   import §2#i§.§9##§;
   import §2B§.§#&E§;
   import §3"@§.§##L§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4'§.§#"l§;
   import §4f§.§-&§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7$t§.§2"y§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@"s§.§]!>§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §^!"§.§0^§;
   import §^!]§.§-$w§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.§28§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.GestureState;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.events.GestureEvent;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §?%8§ extends §3%d§
   {
      
      private static const §9!$§:int = 10;
      
      private var repeatBtn:§?%>§;
      
      public function §?%8§(param1:§]$d§, param2:§4$z§)
      {
         var _loc4_:int = 0;
         var _loc3_:MovieClip = §6#A§.§!&6§(§+"'§.§@#q§);
         this.repeatBtn = §!&5§.§7#[§(_loc3_.getChildByName("repeatBtn"));
         this.repeatBtn.setText(§<"G§.§%! §("REPEAT_BTN"),§"-§.§+$m§);
         this.repeatBtn.§[!u§(this.§3$^§);
         this.repeatBtn.setDisabled(!(§8"%§.§[%h§.§`t§() > 0 && §+"A§.§6!A§()));
         super(param1,param2,_loc3_);
         §<m§.unshift(this.repeatBtn.getContainer());
         if(param2.result.equals(§<$Z§.§!M§))
         {
            this.§#$B§();
         }
         else if(param2.result.equals(§<$Z§.§+%I§))
         {
            _loc4_ = §8"`§.width + §>!-§.getContainer().width + §9!$§;
            §8"`§.x = width / 2 - _loc4_ / 2;
            §`o§.§4%4§(§>!-§.getContainer(),§8"`§,§9!$§);
            this.repeatBtn.setVisible(false);
         }
         if(rewards.length > 0)
         {
            §7$K§();
         }
         §%&!§(param2.result,this.§6"M§(),true);
         this.§3% §();
         §]$F§();
      }
      
      private static function §,& §() : String
      {
         return §<"G§.§%! §("GAME_OVER_BOSS_FAIL_MSG");
      }
      
      override protected function §=!O§() : void
      {
      }
      
      override protected function §7#M§(param1:TextField) : void
      {
         super.§7#M§(param1);
         §8"`§.y = this.repeatBtn.y = §>!-§.y = lastPosition.y;
         §`o§.§4%4§(§8"`§,this.repeatBtn.getContainer(),§9!$§ + 4);
         §`o§.§4%4§(§>!-§.getContainer(),§8"`§,§9!$§);
      }
      
      private function §#$B§() : void
      {
         var _loc1_:TextField = §'%s§("msg");
         _loc1_.visible = true;
         §&$9§.§>&F§(_loc1_,§"-§.§+$m§,§,& §());
         lastPosition.y += _loc1_.height + 15;
         §8"`§.y = this.repeatBtn.y = §>!-§.y = lastPosition.y;
         §`o§.§4%4§(§8"`§,this.repeatBtn.getContainer(),§9!$§ + 4);
         §`o§.§4%4§(§>!-§.getContainer(),§8"`§,§9!$§);
      }
      
      override protected function §8$_§() : String
      {
         return §<"G§.§%! §("GAME_OVER_BOSS_DRAW_MSG");
      }
      
      override protected function §3% §() : void
      {
         §8"`§.y = this.repeatBtn.y = §>!-§.y = lastPosition.y;
      }
      
      private function §3$^§(param1:Event) : void
      {
         §!#z§(this.§%!Q§);
      }
      
      private function §%!Q§() : void
      {
         this.repeatBtn.setDisabled(true);
         Application.setUserBusy(false);
         if(§8"%§.§?!W§.§^!U§().§]_§())
         {
            §5h§.§?!g§();
         }
         else
         {
            §+"A§.§?!g§();
         }
      }
      
      override protected function §6"M§() : Vector.<UserProfile>
      {
         var _loc2_:§-!`§ = null;
         var _loc1_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         for each(_loc2_ in §^#R§.scenario.§"!p§)
         {
            _loc1_.push(_loc2_.§]"P§);
         }
         return _loc1_;
      }
      
      override protected function §7#s§() : String
      {
         return §<"G§.§%! §("GAME_OVER_BOSS_WIN_TITLE");
      }
      
      override protected function §5#"§() : String
      {
         return §<"G§.§%! §("GAME_OVER_BOSS_FAIL_TITLE");
      }
      
      override protected function §;%T§() : String
      {
         return §<"G§.§%! §("GAME_OVER_BOSS_DRAW_TITLE");
      }
      
      override public function destroy() : void
      {
         this.repeatBtn.removeHandler(this.§3$^§);
         this.repeatBtn.destroy();
         super.destroy();
      }
   }
}

