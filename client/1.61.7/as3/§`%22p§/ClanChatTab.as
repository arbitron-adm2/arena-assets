package §`"p§
{
   import § #m§.§;#^§;
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.*;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §0%[§.Cookie;
   import §=!C§.§0"l§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=!C§.ClanMessagePopup;
   import §>!_§.§9@§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class ClanChatTab extends §20§
   {
      
      private static const §7Z§:uint = 31;
      
      private static const COOKIE_NAME_CLAN_PUMP_REACTION_TIME:String = "COOKIE_NAME_CLAN_PUMP_REACTION_TIME";
      
      private static const COOKIE_NAME_CLAN_PUMP_REACTION_AMOUNT:String = "COOKIE_NAME_CLAN_PUMP_REACTION_AMOUNT";
      
      private var §,%4§:int;
      
      private var §!%v§:int;
      
      private var placeholder:MovieClip;
      
      private var findClanBtn:§?%>§;
      
      private var createClan:§?%>§;
      
      private var clanLogo:MovieClip;
      
      private var clanName:TextField;
      
      private var §&$E§:§0"l§;
      
      private var clanMessageBtn:§?%>§;
      
      private var clanInfoBtn:§?%>§;
      
      private var clanReactionBtn:§?%>§;
      
      private var clanReactionBtnDisabled:§4#_§;
      
      private var §^$$§:int = 0;
      
      private var §+$4§:§>S§;
      
      private var §8#>§:DisplayObjectContainer;
      
      private var §+"K§:DisplayObject;
      
      protected var §&%o§:int;
      
      protected var §6&G§:Vector.<§`&-§>;
      
      public function ClanChatTab()
      {
         §9%s§ = §7Z§;
         super(§6#A§.§!&6§(§+"'§.§&%6§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§"&F§();
      }
      
      private function §"&F§() : void
      {
         this.placeholder = §'$a§("placeholder");
         var _loc1_:TextField = TextField(this.placeholder.getChildByName("title"));
         var _loc2_:TextField = TextField(this.placeholder.getChildByName("description"));
         §&$9§.§>&F§(_loc1_,§"-§.§+$m§,§0$N§.NOT_IN_CLAN);
         _loc2_.htmlText = "<b>" + §2"e§.§#"I§(§0$N§.CLAN_CHAT_VELCOME,"#FFE8A3") + "<br>" + §2"e§.§#"I§(§0$N§.CLAN_CHAT_OFFER_CREATE,"#ffffff") + "</b>";
         this.findClanBtn = §!&5§.§7#[§(this.placeholder.findClanBtn);
         this.findClanBtn.setText(§0$N§.§5!1§,§"-§.§+$m§);
         this.findClanBtn.§[!u§(this.§+#@§);
         this.createClan = §!&5§.§7#[§(this.placeholder.createClanBtn);
         this.createClan.setText(§0$N§.§ "n§,§"-§.§+$m§);
         this.createClan.§[!u§(this.§4"g§);
         this.placeholder.visible = false;
         this.§+$4§ = new §>S§(§'$a§("displayInvites"));
         this.§8#>§ = this.§+$4§.§'$a§("content");
         this.§+"K§ = this.§+$4§.getChildByName("content_mask");
         this.§+$4§.setVisible(false);
         this.§&%o§ = this.placeholder.y + this.placeholder.height + 35;
         this.§6&G§ = new Vector.<§`&-§>(0);
      }
      
      private function §+#@§(param1:MouseEvent) : void
      {
         var _loc2_:§2#f§ = §2#f§.getInstance();
         _loc2_.§&g§();
         _loc2_.show();
      }
      
      private function §4"g§(param1:MouseEvent) : void
      {
         var _loc2_:§2#f§ = §2#f§.getInstance();
         _loc2_.§?% §();
         _loc2_.show();
      }
      
      override protected function §+t§() : void
      {
         super.§+t§();
         this.clanLogo = chat.clanLogo;
         this.clanName = chat.clanTitle;
         this.clanMessageBtn = §!&5§.§7#[§(chat.getChildByName("clanMessageBtn"));
         this.clanMessageBtn.§[!u§(this.§+!<§);
         this.§&$E§ = new §0"l§();
         this.clanInfoBtn = §!&5§.§7#[§(chat.getChildByName("clanInfoBtn"));
         this.clanInfoBtn.§[!u§(this.§'$S§);
         this.clanReactionBtn = §!&5§.§7#[§(chat.getChildByName("clanReactionBtn"));
         this.clanReactionBtn.§[!u§(this.§4%A§);
         this.clanReactionBtn.setQtip(§0$N§.§%! §("CLAN_REACTION_PUMP"),§;#^§.§[!K§,§+"'§.§3%y§);
         this.§,%4§ = Cookie.§<`§(COOKIE_NAME_CLAN_PUMP_REACTION_TIME,0);
         this.§!%v§ = Cookie.§<`§(COOKIE_NAME_CLAN_PUMP_REACTION_AMOUNT,0);
         this.clanReactionBtnDisabled = new §4#_§(chat.getChildByName("clanReactionBtnDisabled"));
         this.clanReactionBtnDisabled.setQtip(§0$N§.§%! §("CLAN_REACTION_PUMPED") + " " + this.§!%v§,§;#^§.§[!K§,§+"'§.§3%y§);
      }
      
      private function §4%A§(param1:Event = null) : void
      {
         var _loc4_:ClanMemberTO = null;
         this.clanReactionBtn.setDisabled(true);
         var _loc2_:Array = [];
         var _loc3_:int = Application.userProfile.getId();
         for each(_loc4_ in §]#i§.userClan.members)
         {
            if(_loc3_ != _loc4_.profileId)
            {
               _loc2_[_loc2_.length] = _loc4_.profileId;
            }
         }
         §8"%§.§["$§.§0#N§(_loc2_,this.§^$#§,false);
      }
      
      private function §^$#§(param1:int) : void
      {
         this.§!%v§ = param1;
         this.§,%4§ = §0#2§.§@&6§();
         Cookie.setValue(COOKIE_NAME_CLAN_PUMP_REACTION_TIME,this.§,%4§);
         Cookie.setValue(COOKIE_NAME_CLAN_PUMP_REACTION_AMOUNT,param1);
         this.clanReactionBtn.setVisible(false);
         this.clanReactionBtnDisabled.setQtip(§0$N§.§%! §("CLAN_REACTION_PUMPED") + " " + param1,§;#^§.§[!K§,§+"'§.§3%y§);
      }
      
      override public function §2#d§() : void
      {
         var _loc2_:UserProfile = null;
         var _loc1_:ClanTO = §]#i§.userClan;
         _loc2_ = Application.userProfile;
         var _loc3_:ClanMemberStructure = _loc2_.clanMember;
         this.clanMessageBtn.setVisible(_loc1_ && _loc2_.§!#E§() && _loc3_.clanId == _loc1_.id && _loc3_.rank != §`&$§.§7!^§);
         this.clanReactionBtn.setDisabled(!_loc1_ || _loc1_.members.length < 2);
         this.clanReactionBtn.setVisible(Boolean(_loc1_) && (this.§,%4§ == 0 || !§0#2§.§&%Z§(this.§,%4§)));
         if(_loc1_)
         {
            chat.visible = true;
            this.placeholder.visible = false;
            this.§+$4§.setVisible(false);
            if(this.§^$$§ != _loc1_.id)
            {
               §9#o§();
               this.§^$$§ = _loc1_.id;
               messages.push(this.§&$E§);
            }
            §&$9§.§>&F§(this.clanName,§"-§.§+$m§,_loc1_.name);
            §=%_§.§!-§(this.clanLogo.logo,_loc1_.emblem);
            this.§?# §(§]#i§.§-%d§());
            §"&0§();
            this.clanMessageBtn.setDisabled(§=%_§.§<!5§(_loc2_.getId(),_loc1_).muteMode);
         }
         else
         {
            this.§^$$§ = 0;
            chat.visible = false;
            this.placeholder.visible = true;
            if(!Application.userProfile.§!#E§())
            {
               §]!G§(§]#i§.§="&§().length);
            }
            this.§+$4§.setVisible(true);
            this.§1&1§();
         }
      }
      
      override public function §#$t§(param1:int, param2:int) : void
      {
         super.§#$t§(param1,param2);
         this.§+"K§.width = param1;
         this.§+"K§.height = param2 - this.§&%o§ - 4;
         this.§+$4§.y = this.§&%o§;
         this.§]&"§();
      }
      
      protected function §1&1§() : void
      {
         var _loc4_:ClanInviteStructure = null;
         var _loc5_:§9@§ = null;
         this.§8#>§.removeChildren();
         var _loc1_:Vector.<ClanInviteStructure> = §]#i§.§="&§();
         var _loc2_:int = 0;
         var _loc3_:int = int(_loc1_.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = _loc1_[_loc2_];
            _loc5_ = new §9@§();
            _loc5_.update(_loc4_);
            _loc5_.x = 1;
            this.§8#>§.addChild(_loc5_.getContainer());
            §4"0§.§^%T§(_loc5_,4);
            if(_loc2_ > 0)
            {
               §`o§.§1$T§(_loc5_.getContainer(),this.§8#>§,-this.§8#>§.y);
            }
            _loc2_++;
         }
         this.§]&"§();
      }
      
      protected function §]&"§(param1:Boolean = true) : void
      {
         this.§+$4§.update();
         this.§+$4§.§'$a§("scrollbar").visible = false;
         if(param1)
         {
            this.§+$4§.scrollV = this.§+$4§.maxScrollV;
         }
      }
      
      private function §?# §(param1:ClanNewsTO) : void
      {
         if(param1)
         {
            this.§&$E§.§ !"§(§0$N§.MESSAGE_TO_CLAN,param1.text);
         }
         else
         {
            this.§&$E§.§ !"§(§0$N§.DEFAULT_NEWS_CLAN_TITLE);
         }
      }
      
      override protected function §'%H§() : void
      {
         var _loc5_:§@"h§ = null;
         var _loc6_:§?$3§ = null;
         var _loc1_:Vector.<ClanChatMessageTO> = §]#i§.§#"L§();
         var _loc2_:int = messages.length > 0 ? int(messages.length - 1) : 0;
         var _loc3_:int = §3"J§;
         var _loc4_:int = int(_loc1_.length);
         while(_loc3_ < _loc4_)
         {
            if(_loc1_[_loc3_].actionCode == ClanMessages.POST_TO_CHAT_REQUEST)
            {
               _loc5_ = new §@"h§(_loc1_[_loc3_]);
               _loc5_.§<0§(this.§3#9§);
               messages.push(_loc5_);
            }
            else
            {
               _loc6_ = new §?$3§(_loc1_[_loc3_]);
               messages.push(_loc6_);
            }
            ++§3"J§;
            _loc3_++;
         }
      }
      
      override protected function §%! §(param1:int) : §`&-§
      {
         if(messages[param1] == this.§&$E§ && this.§&$E§.message == "")
         {
            return null;
         }
         return super.§%! §(param1);
      }
      
      override protected function §,U§(param1:Event = null) : void
      {
         super.§,U§(param1);
         if(§][§.text != "")
         {
            §8"%§.§!&I§.common.postMessage(§][§.text);
            §][§.text = "";
         }
      }
      
      override protected function §>%+§() : Boolean
      {
         return Application.userProfile.§!#E§();
      }
      
      private function §'$S§(param1:Event = null) : void
      {
         var _loc2_:§"$I§ = §"$I§.getInstance();
         _loc2_.§[%0§(Application.userProfile.clanMember.clanId);
         _loc2_.show();
         _loc2_.align();
      }
      
      private function §+!<§(param1:Event = null) : void
      {
         var _loc2_:ClanMessagePopup = new ClanMessagePopup();
         _loc2_.show();
      }
      
      private function §3#9§(param1:ClanChatMessageTO) : void
      {
         if(§][§.text == "")
         {
            §][§.text = "@" + §<$&§.§1#a§(param1.publisherName,§@C§.§+#d§) + ": ";
            Application.instance.stage.focus = §][§;
            §][§.setSelection(§][§.text.length,§][§.text.length);
         }
      }
   }
}

