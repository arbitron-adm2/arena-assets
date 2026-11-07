package §@$§
{
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#P§.§`o§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §2#H§.§,"R§;
   import §3#T§.Helicopter;
   import §7"Q§.§%!o§;
   import §7$t§.§2& §;
   import §8$Z§.§9"t§;
   import §<%k§.§`!v§;
   import §@!N§.§2"e§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §+%>§ extends §%!o§
   {
      
      protected var cells:Vector.<§&&H§> = new Vector.<§&&H§>(0);
      
      protected var bg:DisplayObject;
      
      protected var clanMemberTO:ClanMemberTO;
      
      protected var userProfile:UserProfile;
      
      protected var §]$e§:Function;
      
      protected var §1$W§:Boolean = true;
      
      protected var §%"e§:Boolean = true;
      
      protected var isMe:Boolean;
      
      protected var teamMemberType:int;
      
      public function §+%>§(param1:UserProfile = null, param2:ClanMemberTO = null)
      {
         super(new Sprite());
         this.bg = §6#A§.§!&6§(§+"'§.§1$A§);
         §?!C§(this.bg);
         if(param1)
         {
            this.§3%,§(param1,param2);
         }
      }
      
      public function update(param1:UserProfile, param2:ClanMemberTO = null) : void
      {
         this.§6"k§();
         if(param1)
         {
            this.§3%,§(param1,param2);
         }
      }
      
      public function §3%,§(param1:UserProfile, param2:ClanMemberTO = null) : void
      {
         this.clanMemberTO = param2;
         this.userProfile = param1;
         if(param1 == null && param2 != null)
         {
            this.userProfile = §`#p§.§"!6§(param2.socialProfileId.toString());
         }
         this.§9e§(param2);
         this.isMe = this.userProfile.equals(Application.userProfile);
         if(this.cells.length > 0)
         {
            this.§6"k§();
         }
         if(param1)
         {
            this.§5%i§();
         }
      }
      
      private function §9e§(param1:ClanMemberTO) : void
      {
         if(param1)
         {
            if(this.userProfile.§54§().§1#&§ != param1.socialId)
            {
               this.userProfile.setSocialType(§7"n§.§9&,§(param1.socialId));
            }
            return;
         }
         §4! §.§`$@§(this.userProfile);
      }
      
      protected function §5%i§() : void
      {
      }
      
      public function §`#P§() : uint
      {
         return this.cells.length;
      }
      
      protected function §<%5§(param1:Function, param2:String, param3:String, param4:Boolean = false) : §&&H§
      {
         var _loc6_:§&&H§ = null;
         var _loc5_:§&&H§ = new §&&H§(param1,param2,param3,param4);
         addChild(_loc5_);
         var _loc7_:int = 3;
         if(this.cells.length > 0)
         {
            _loc6_ = this.cells[this.cells.length - 1];
            if(!_loc6_.§#!g§ && param4 || _loc6_.§#!g§ && !param4)
            {
               _loc6_.§9%x§(true);
               _loc7_ += 2;
            }
            §`o§.§1$T§(_loc5_.getContainer(),_loc6_.getContainer(),_loc7_);
         }
         else
         {
            _loc5_.y = 8;
         }
         this.cells.push(_loc5_);
         this.bg.height = _loc5_.y + _loc5_.height + 12;
         return _loc5_;
      }
      
      protected function §<#C§() : void
      {
         this.§<%5§(this.§'!V§,§`&C§.DUEL,§0$N§.CONTEXT_MENU_DUEL);
      }
      
      protected function §5&G§() : void
      {
         this.§<%5§(this.§!!E§,§`&C§.§4"x§,§0$N§.CALL_TO_LOCAL_BATTLE);
      }
      
      protected function §+$C§() : void
      {
         var _loc1_:int = Application.userProfile.clanMember.rank;
         this.§<%5§(this.§2&8§,§`&C§.§&$Z§,_loc1_ == §`&$§.§+#8§ ? §0$N§.DELETE_CLAN_LABEL : §0$N§.EXIT_CLAN_LABEL,true);
      }
      
      protected function §3%`§() : void
      {
         this.§<%5§(this.§6%$§,§`&C§.§"#g§,§0$N§.SHOW_CLAN_INFO_BTN,true);
      }
      
      protected function §"&D§() : void
      {
         if(Application.userProfile.clanMember.clanId != 0 && Application.userProfile.clanMember.rank != §`&$§.§7!^§ && !this.userProfile.§!#E§())
         {
            this.§<%5§(this.§+"W§,§`&C§.§"#g§,§0$N§.INIVTE_TO_CLAN_POPUP_MENU_ITEM,true);
         }
      }
      
      protected function §0%C§() : void
      {
         if(this.userProfile.§54§().equals(§8"%§.context.§54§()))
         {
            if(!§8"%§.§?!W§.inBattle || Boolean(§8"%§.§?!W§.§4"m§) && Boolean(!§8"%§.§?!W§.§4"m§.§=$S§().§?$p§))
            {
               this.§<%5§(this.§""E§,§`&C§.INFO,§0$N§.USER_PAGE);
            }
         }
      }
      
      protected function §7&B§() : void
      {
         this.§<%5§(this.§%!6§,§`&C§.§9%`§,§0$N§.COPY_ID);
      }
      
      private function §%!6§(param1:Event) : void
      {
         if(this.userProfile)
         {
            §2"e§.§^&5§(this.userProfile.getId().toString());
         }
      }
      
      public function §6"k§() : void
      {
         var _loc1_:§&&H§ = null;
         for each(_loc1_ in this.cells)
         {
            removeChild(_loc1_);
            _loc1_.destroy();
         }
         this.cells.length = 0;
      }
      
      override public function §<$8§(param1:int, param2:int) : void
      {
         if(this.§`#P§() == 0)
         {
            return;
         }
         super.§<$8§(param1,param2);
      }
      
      override public function destroy() : void
      {
         this.§6"k§();
         _removeChild(this.bg);
         this.bg = null;
         super.destroy();
      }
      
      private function §'!V§(param1:Event) : void
      {
         if(Social.settings.§7%N§())
         {
            §8"%§.§?!W§.§@&A§(this.userProfile,false,this.userProfile.§54§().§1#&§);
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.COMING_SOON,§,#W§.§6!m§);
         }
         hide();
      }
      
      private function §!!E§(param1:MouseEvent = null) : void
      {
         §8"%§.§?!W§.§?%U§(this.userProfile);
         hide();
      }
      
      private function §2&8§(param1:Event) : void
      {
         §8"%§.§!&I§.common.§3&6§(§"$I§.getInstance().hide);
         hide();
      }
      
      private function §+"W§(param1:MouseEvent = null) : void
      {
         var msgText:String = null;
         var event:MouseEvent = param1;
         var myProfile:UserProfile = Application.userProfile;
         if(myProfile.clanMember.clanId == 0)
         {
            §,#W§.§'!+§(§0$N§.TITLE_ATTENTION,§0$N§.§%! §("PLAYER_NOT_IN_CLAN"),§,#W§.§6!m§).show();
         }
         else if(myProfile.clanMember.rank == §`&$§.§7!^§)
         {
            §,#W§.§'!+§(§0$N§.TITLE_ATTENTION,§0$N§.§%! §("RESTRICTION_ON_RANK_AT_INVITE"),§,#W§.§6!m§).show();
         }
         else if(this.userProfile.§!#E§())
         {
            §,#W§.§'!+§(§0$N§.TITLE_ATTENTION,§0$N§.§%! §("FRIEND_ALREADY_IN_CLAN"),§,#W§.§6!m§).show();
         }
         else if(this.userProfile.getLevel() < §@C§.§;k§)
         {
            msgText = §0%§.format(§0$N§.§%! §("ERR_INVITE_LOW_LEVEL_FRIEND"),{"level":§@C§.§;k§});
            §,#W§.§'!+§(§0$N§.TITLE_ATTENTION,msgText,§,#W§.§6!m§).show();
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.§%! §("CONFIRM_INVITE_TO_CLAN"),§,#W§.§`$x§,function():void
            {
               §8"%§.§!&I§.member.§6%Q§(userProfile,§]$e§,§1$W§,§%"e§);
            });
         }
         hide();
      }
      
      protected function §6%$§(param1:MouseEvent = null) : void
      {
         var _loc2_:int = this.userProfile.clanMember.clanId;
         if(_loc2_ != 0)
         {
            §9"t§.§]"N§(_loc2_);
         }
         hide();
      }
      
      private function §""E§(param1:Event) : void
      {
         §4! §.§"%U§(this.userProfile);
         hide();
      }
   }
}

