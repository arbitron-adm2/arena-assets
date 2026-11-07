package §#",§
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§0m§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§@a§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §4!x§.§@& §;
   import §6"'§.§&"3§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<!W§.§7!L§;
   import §<%k§.§`!v§;
   import §>!_§.*;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[!`§.ArchivistSeal;
   import §`%&§.§5$1§;
   import config.achievements.BossAchieves;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.social.Social;
   
   public class ReturnFriendRewardMenu extends §@& § implements §^c§
   {
      
      private var §%"M§:§?%>§;
      
      private var awardPanel:§&"A§;
      
      private var §#$-§:Boolean;
      
      private var §6$T§:§1%z§;
      
      public function ReturnFriendRewardMenu(param1:LoginAwardStructure)
      {
         var _loc4_:§1%z§ = null;
         var _loc5_:Array = null;
         var _loc6_:GenericAwardStructure = null;
         super(§6#A§.§!&6§(§+"'§.§5&@§));
         this.§#$-§ = param1.awardType == §8"_§.§0%H§.getId();
         §>!-§.setText(§0$N§.BUTTON_OK,§"-§.§+$m§);
         §&$9§.§>&F§(container["title"],§"-§.§+$m§,§0$N§.AWARD_LABEL);
         var _loc2_:String = this.§#$-§ ? §0$N§.RETURN_FRIEND_REWARD_MENU_DESCR_1 : §0$N§.RETURN_FRIEND_REWARD_MENU_DESCR_2;
         §&$9§.§>&F§(container["description"],§"-§.§+$m§,_loc2_);
         var _loc3_:DisplayObject = §4"0§.§##W§(§#!`§(),"postBtn");
         this.§%"M§ = §!&5§.§7#[§(_loc3_);
         this.§%"M§.setText(§0$N§.WIN_GAME_SHARE,§"-§.§+$m§);
         this.§%"M§.§[!u§(this.§,%M§);
         this.awardPanel = new §&"A§(container["awardPanel"],true);
         this.awardPanel.§`"1§("+");
         if(this.§#$-§)
         {
            _loc5_ = [];
            for each(_loc6_ in param1.awards)
            {
               switch(_loc6_.awardKind)
               {
                  case §[#c§.§`_§:
                     _loc5_.push(new §#$!§(§+$A§.INGAME,_loc6_.count));
                     break;
                  case §[#c§.§!_§:
                     _loc5_.push(new §0m§(_loc6_.count));
                     break;
                  case §[#c§.REAGENT:
                     _loc5_.push(new §!%&§(0,_loc6_.count));
               }
            }
            _loc4_ = new §1%z§(_loc5_);
         }
         else
         {
            _loc4_ = §1%z§.§!!Z§(param1.awards,true);
         }
         this.awardPanel.§=&8§(_loc4_);
         this.§6$T§ = _loc4_;
         this.§!!§();
      }
      
      private function §!!§(param1:int = -1) : void
      {
         var _loc2_:UserProfile = Application.userProfile;
         var _loc3_:uint = this.§6$T§.§#!G§();
         var _loc4_:uint = this.§6$T§.§@$D§();
         if(_loc3_ > 0)
         {
            _loc2_.§^<§(Math.max(0,_loc2_.§#!G§() + param1 * _loc3_));
         }
         if(_loc4_ > 0)
         {
            _loc2_.§]!c§(Math.max(0,_loc2_.§@$D§() + param1 * _loc4_));
         }
         _loc2_.§=#6§(Math.max(0,_loc2_.§=u§() + param1 * this.§6$T§.§=u§()));
         Application.§5!>§.§8$w§();
      }
      
      private function §,%M§(param1:Event) : void
      {
         var _loc2_:String = this.§#$-§ ? §0$N§.RETURN_FRIEND_POST_MSG : §0$N§.COMEBACK_POST_MSG;
         Social.§!g§.§;&4§(_loc2_,this.§#$-§);
         this.hide();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.playAnimations();
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         this.§!!§(1);
         super.hide();
      }
      
      override public function destroy() : void
      {
         this.§%"M§.destroy();
         this.awardPanel.destroy();
         this.§%"M§ = null;
         this.awardPanel = null;
         super.destroy();
      }
      
      public function playAnimations() : void
      {
         §'$a§("birdy").play();
      }
      
      public function stopAnimations() : void
      {
         §'$a§("birdy").stop();
      }
   }
}

