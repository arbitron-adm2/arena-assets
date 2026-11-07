package §;!Z§
{
   import § #9§.§"$t§;
   import § &5§.§@N§;
   import §!$Z§.§7$2§;
   import §!L§.§+"'§;
   import §"!C§.*;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §,"v§.§9%d§;
   import §0"p§.*;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1A§.*;
   import §2!-§.DamageEvent;
   import §2#s§.*;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8#`§.§#%r§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<!W§.§>&@§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.*;
   import §=7§.§?%4§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §[$P§.§[!0§;
   import §]$v§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^§.§ $^§;
   import §^§.§8$y§;
   import §^§.§8%l§;
   import §^§.§>o§;
   import §`"p§.*;
   import §`%&§.§`§;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.SetMercenariesTeamMembers;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §0!?§ extends §@& § implements §^c§
   {
      
      private static const §5"o§:int = 300;
      
      private static const MERCS_BTN_GROUP:String = "MERCS_BTN_GROUP";
      
      private static const SELECTED_MERCS_BTN_GROUP:String = "SELECTED_MERCS_BTN_GROUP";
      
      private var paramsPanel:§;K§;
      
      private var §#!E§:Vector.<§?%4§> = new Vector.<§?%4§>();
      
      private var §8!n§:Vector.<§?%4§> = new Vector.<§?%4§>();
      
      private var §@%0§:MercenariesTeamMember;
      
      private var §5"+§:§?%>§;
      
      private var removeBtn:§?%>§;
      
      private var §]"]§:int;
      
      public var §"%e§:Vector.<MercenariesTeamMember>;
      
      public function §0!?§()
      {
         super(§6#A§.§!&6§(§+"'§.§1$D§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:§`&-§ = null;
         var _loc3_:MovieClip = null;
         var _loc6_:UserProfile = null;
         var _loc7_:§6!G§ = null;
         super.§@"o§(param1);
         this.§"%e§ = §8"%§.§'%;§.§8%A§;
         this.§5"+§ = §!&5§.§7#[§(getChildByName("selectBtn"));
         this.removeBtn = §!&5§.§7#[§(getChildByName("removeBtn"));
         this.paramsPanel = new §;K§(DisplayObjectContainer(getChildByName("paramsPanel")));
         this.paramsPanel.setVisible(false);
         §7&5§.§>&<§(§'%s§("header"),§0$N§.MERCS_QUEST_BUILD_TEAM_HEADER);
         §7&5§.§>&<§(§'%s§("description"),§0$N§.MERCS_QUEST_BUILD_TEAM_DESCRIPTION);
         §7&5§.§>&<§(§'%s§("teamLabel"),§0$N§.MERCS_QUEST_PLAYERS_TEAM);
         §>!-§.setText(§0$N§.MERCS_QUEST_TEAM_READY,§"-§.§+$m§);
         this.§5"+§.setText(§0$N§.MERCS_QUEST_PICK_UNIT,§"-§.§+$m§);
         this.removeBtn.setText(§0$N§.MERCS_QUEST_REMOVE_UNIT,§"-§.§+$m§);
         §>!-§.§[!u§(this.§-%a§);
         this.§5"+§.§[!u§(this.§<$o§);
         this.removeBtn.§[!u§(this.removeHandler);
         _loc2_ = new §`&-§(getChildByName("mercsAvailable"));
         var _loc4_:int = Math.min(this.§"%e§.length,_loc2_.§#!`§().numChildren);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = _loc2_.§'$a§("char" + (_loc5_ + 1).toString());
            this.§#!E§[_loc5_] = new §?%4§(_loc3_,MERCS_BTN_GROUP);
            this.§#!E§[_loc5_].§5%6§(_loc3_.getChildByName("avatar"),MovieClip(_loc3_.getChildByName("ghost")).getChildByName("avatar"));
            _loc6_ = this.§"%e§[_loc5_].profile;
            _loc7_ = §"$t§.§!!1§(this.§#!E§[_loc5_].§-$S§(),_loc6_,this.§#!E§[_loc5_].§9$q§);
            §"$t§.§<$W§(_loc6_,§6#A§.§!&6§(§+"'§.§?-§));
            this.§#!E§[_loc5_].§]$o§(_loc7_);
            this.§#!E§[_loc5_].§3%,§(_loc6_);
            this.§#!E§[_loc5_].§7"i§(_loc6_.§2u§());
            this.§#!E§[_loc5_].§;"U§(_loc6_.§+!b§());
            this.§#!E§[_loc5_].§[!u§(this.§`#O§);
            this.§#!E§[_loc5_].§00§(null);
            _loc5_++;
         }
         _loc2_ = new §`&-§(getChildByName("mercsSelected"));
         _loc5_ = 0;
         while(_loc5_ < §?B§.§4&§)
         {
            _loc3_ = _loc2_.§'$a§("char" + (_loc5_ + 1).toString());
            this.§8!n§[_loc5_] = new §?%4§(_loc3_,SELECTED_MERCS_BTN_GROUP);
            this.§8!n§[_loc5_].§5%6§(_loc3_.getChildByName("avatar"),MovieClip(_loc3_.getChildByName("ghost")).getChildByName("avatar"));
            this.§8!n§[_loc5_].§[!u§(this.§`#O§);
            this.§8!n§[_loc5_].§00§(null);
            _loc5_++;
         }
         this.§<"i§();
         this.§5"+§.setVisible(false);
         this.removeBtn.setVisible(false);
         §>!-§.setDisabled(!this.§^U§);
      }
      
      private function §`#O§(param1:MouseEvent, param2:§?%4§ = null) : void
      {
         var _loc6_:§?%4§ = null;
         §@%;§.play(§ "N§.§,M§);
         var _loc3_:§?%4§ = param2 ? param2 : §?%4§(param1.target);
         var _loc4_:int = 0;
         var _loc5_:int = int(this.§#!E§.length);
         while(_loc4_ < _loc5_)
         {
            if(this.§#!E§[_loc4_].getProfile() == _loc3_.getProfile())
            {
               this.§@%0§ = this.§"%e§[_loc4_];
               this.paramsPanel.§@$`§(this.§@%0§);
               this.§&&#§(true);
               this.§#!E§[_loc4_].setPressed(true);
            }
            _loc4_++;
         }
         if(_loc3_.isPressed() && getTimer() - this.§]"]§ < §5"o§)
         {
            this.§]"]§ = 0;
            if(this.§`%D§(_loc3_.getProfile()))
            {
               this.removeHandler(null);
            }
            else if(!this.§^U§)
            {
               this.§<$o§(null);
            }
         }
         else
         {
            this.§]"]§ = getTimer();
         }
         for each(_loc6_ in this.§8!n§)
         {
            if(_loc6_.getProfile() == this.§@%0§.profile)
            {
               _loc6_.setPressed(true);
               this.§&&#§(false);
            }
            else
            {
               _loc6_.setPressed(false);
            }
         }
      }
      
      private function §<$o§(param1:MouseEvent) : void
      {
         var _loc2_:§?%4§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§8!n§)
         {
            if(!_loc2_.getProfile())
            {
               _loc3_ = this.§"%e§.indexOf(this.§@%0§);
               this.§#!E§[_loc3_].§%!g§();
               §"$t§.§!!1§(this.§#!E§[_loc3_].§-$S§(),this.§#!E§[_loc3_].getProfile(),_loc2_.§9$q§);
               _loc2_.§3%,§(this.§#!E§[_loc3_].getProfile());
               _loc2_.§]$o§(this.§#!E§[_loc3_].§-$S§());
               _loc2_.§7"i§(this.§#!E§[_loc3_].getProfile().§2u§());
               _loc2_.§;"U§(this.§#!E§[_loc3_].getProfile().§+!b§());
               _loc2_.setDisabled(false);
               _loc2_.setPressed(true);
               this.§&&#§(false);
               break;
            }
         }
      }
      
      private function removeHandler(param1:MouseEvent) : void
      {
         var _loc2_:§?%4§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§8!n§)
         {
            if(_loc2_.getProfile() == this.§@%0§.profile)
            {
               _loc3_ = this.§"%e§.indexOf(this.§@%0§);
               this.§#!E§[_loc3_].§';§();
               _loc2_.§0"b§();
               _loc2_.reset();
               _loc2_.setDisabled(true);
               _loc2_.setPressed(false);
               this.§&&#§(true);
               this.§1%R§();
            }
         }
      }
      
      private function §-%a§(param1:MouseEvent) : void
      {
         var _loc3_:§?%4§ = null;
         var _loc4_:MercenariesTeamMember = null;
         §8"%§.§'%;§.team = new Vector.<MercenariesTeamMember>(0);
         var _loc2_:Array = [];
         for each(_loc3_ in this.§8!n§)
         {
            for each(_loc4_ in this.§"%e§)
            {
               if(_loc3_.getProfile() == _loc4_.profile)
               {
                  §8"%§.§'%;§.team.push(_loc4_);
                  _loc2_.push(_loc4_.id);
               }
            }
         }
         §%%w§.§,U§(new SetMercenariesTeamMembers(_loc2_));
         §?B§.§8#&§(this.§-"-§,false);
      }
      
      private function §-"-§() : void
      {
         this.hide();
         §8"%§.§'%;§.§=!;§();
      }
      
      private function §&&#§(param1:Boolean) : void
      {
         this.§5"+§.setVisible(param1);
         this.removeBtn.setVisible(!param1);
         this.§5"+§.setDisabled(this.§^U§);
         §>!-§.setDisabled(!this.§^U§);
      }
      
      private function §1%R§() : void
      {
         var _loc2_:§?%4§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§?%4§ = null;
         var _loc1_:int = int(this.§8!n§.length);
         for each(_loc2_ in this.§8!n§)
         {
            _loc3_ = this.§8!n§.indexOf(_loc2_) + 1;
            if(_loc3_ < §?B§.§4&§ && !_loc2_.getProfile())
            {
               _loc4_ = _loc3_;
               while(_loc4_ < _loc1_)
               {
                  _loc5_ = this.§8!n§[_loc4_];
                  if(_loc5_.getProfile())
                  {
                     §"$t§.§!!1§(_loc5_.§-$S§(),_loc5_.getProfile(),_loc2_.§9$q§);
                     _loc2_.§3%,§(_loc5_.getProfile());
                     _loc2_.§]$o§(_loc5_.§-$S§());
                     _loc2_.§7"i§(_loc5_.getProfile().§2u§());
                     _loc2_.§;"U§(_loc5_.getProfile().§+!b§());
                     _loc2_.setDisabled(false);
                     _loc5_.§0"b§();
                     _loc5_.reset();
                     _loc5_.setPressed(false);
                     _loc5_.setDisabled(true);
                     break;
                  }
                  _loc4_++;
               }
            }
         }
         if(this.§8!n§[0].getProfile())
         {
            this.§`#O§(null,this.§8!n§[0]);
         }
      }
      
      private function get §^U§() : Boolean
      {
         var _loc1_:§?%4§ = null;
         for each(_loc1_ in this.§8!n§)
         {
            if(!_loc1_.getProfile())
            {
               return false;
            }
         }
         return true;
      }
      
      private function §`%D§(param1:UserProfile) : Boolean
      {
         var _loc2_:§?%4§ = null;
         for each(_loc2_ in this.§8!n§)
         {
            if(_loc2_.getProfile() == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.§<"i§();
         this.§`#O§(null,this.§8!n§[0].getProfile() ? this.§8!n§[0] : this.§#!E§[0]);
      }
      
      override public function hide() : void
      {
         var _loc2_:§?%4§ = null;
         super.hide();
         this.paramsPanel.setVisible(false);
         this.§5"+§.setVisible(false);
         this.removeBtn.setVisible(false);
         var _loc1_:Vector.<§?%4§> = this.§#!E§.concat(this.§8!n§);
         for each(_loc2_ in _loc1_)
         {
            _loc2_.§';§();
            _loc2_.setPressed(false);
         }
      }
      
      private function §<"i§() : void
      {
         var _loc1_:MercenariesTeamMember = null;
         var _loc2_:§?%4§ = null;
         §4"0§.§@#u§(this.§8!n§,§8"%§.§'%;§.§%",§);
         for each(_loc1_ in §8"%§.§'%;§.team)
         {
            for each(_loc2_ in this.§#!E§)
            {
               if(_loc2_.getProfile() == _loc1_.profile)
               {
                  _loc2_.§%!g§();
               }
            }
         }
      }
      
      public function playAnimations() : void
      {
      }
      
      public function stopAnimations() : void
      {
      }
   }
}

