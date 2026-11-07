package §9"^§
{
   import § $q§.§-%f§;
   import § $q§.§1$Y§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §##j§.§`%g§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%$!§.§9$p§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.*;
   import §,"v§.§9%d§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%k§.*;
   import §;!Z§.*;
   import §;#O§.§+%7§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import §^!"§.§^$F§;
   import §^"y§.§]#i§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §,Q§ extends §1$Y§
   {
      
      public function §,Q§()
      {
         super(§6#A§.§!&6§(§+"'§.§'#M§));
         this.store = new §?#8§(§4#B§.numChildren);
         this.§#7§(§0$N§.ASK_FRIEND_PUMP_REACTION_TITLE);
         var _loc1_:TextField = §'%s§("msg");
         _loc1_.visible = false;
         var _loc2_:DisplayObject = §'$a§("titlePanel");
         §##b§(§0$N§.BUTTON_ASK_FRIEND);
         var _loc3_:DisplayObject = getChildByName("selectAll");
         _loc3_.visible = false;
      }
      
      override public function §#7§(param1:String) : void
      {
         super.§#7§(param1);
         §]"a§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override protected function okAction() : void
      {
         Social.§!g§.requestPumpReaction(UserProfile(getSelected()),false);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§-%f§ = new §-%f§(param1 as MovieClip);
         _loc2_.§@%X§().getChildByName("level").visible = false;
         return _loc2_;
      }
   }
}

