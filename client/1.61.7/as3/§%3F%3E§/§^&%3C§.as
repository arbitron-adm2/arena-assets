package §?>§
{
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"Z§.§+$A§;
   import §,&8§.§@r§;
   import §02§.§#$%§;
   import §02§.§<!v§;
   import §1#p§.§2=§;
   import §5$]§.§-$Z§;
   import §5$]§.§3& §;
   import §8$V§.§^#§;
   import §@!N§.§2"e§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.house.team.§]%p§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §^&<§ extends §]%p§
   {
      
      private const §9$Y§:int = 15;
      
      private const §<$G§:int = 3;
      
      private var §`$#§:§?%>§;
      
      private var btnReplace:§?%>§;
      
      private var btnActivate:§?%>§;
      
      private var btnDeactivate:§?%>§;
      
      private var §0$B§:§?%>§;
      
      private var §'$&§:§?%>§;
      
      private var textName:TextField;
      
      private var textType:TextField;
      
      private var profile:UserProfile;
      
      private var cell:§3$B§;
      
      private var inputBack:§`&-§;
      
      public function §^&<§(param1:DisplayObjectContainer, param2:§]!V§)
      {
         super(param1,param2);
         this.btnReplace = §!&5§.§7#[§(getChildByName("btnReplace"));
         this.btnReplace.setQtip(§0$N§.REPLACE_LABEL,§;#^§.§4!f§,§+"'§.§3%y§);
         this.btnReplace.§[!u§(this.§""P§);
         this.btnDeactivate = §!&5§.§7#[§(getChildByName("btnDeactivate"));
         this.btnDeactivate.setQtip(§0$N§.TO_RESERVE_LABEL,§;#^§.§4!f§,§+"'§.§3%y§);
         this.btnDeactivate.§[!u§(this.§^"0§);
         if(§'#y§ is §<!v§)
         {
            this.btnActivate = §!&5§.§7#[§(getChildByName("btnActivate"));
            this.btnActivate.setQtip(§0$N§.TO_BATTLE_LABEL,§;#^§.§4!f§,§+"'§.§3%y§);
            this.btnActivate.§[!u§(this.§^"0§);
         }
         this.§`$#§ = §!&5§.§7#[§(getChildByName("btnTakeOff"));
         this.§`$#§.setQtip(§0$N§.GET_OFF_BTN_HINT,§;#^§.§4!f§,§+"'§.§3%y§);
         this.§`$#§.§[!u§(this.§2%7§);
         this.§0$B§ = §!&5§.§7#[§(getChildByName("btnOk"));
         this.§0$B§.setQtip(§0$N§.SAVE_BTN,§;#^§.§4!f§,§+"'§.§3%y§);
         this.§0$B§.§[!u§(this.§4"S§);
         this.§'$&§ = §!&5§.§7#[§(getChildByName("btnReset"));
         this.§'$&§.setQtip(§0$N§.BUTTON_RESET,§;#^§.§4!f§,§+"'§.§3%y§);
         this.§'$&§.§[!u§(this.§`$9§);
         this.inputBack = new §`&-§(getChildByName("inputBack"));
         getChildByName("inputBack").addEventListener(MouseEvent.CLICK,this.§>"?§);
         this.textType = §'%s§("textType");
         this.textName = §'%s§("textName");
         this.textName.maxChars = this.§9$Y§;
      }
      
      private function §2%7§(param1:Event) : void
      {
         var event:Event = param1;
         var room:TeamRoom = Application.§5!>§.§^P§.team;
         var char:§0!7§ = this.cell as §0!7§;
         §8"%§.§0$1§.§!$z§(char,room.§<!F§(),room.§'$3§(char),function():void
         {
            if(§4! §.isMe(cell.getProfile()))
            {
               cell.setItem(cell.getItem());
            }
         });
      }
      
      public function §3%,§(param1:UserProfile, param2:§3$B§ = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:int = 0;
         this.profile = param1;
         this.cell = param2;
         _loc3_ = param1 != null;
         var _loc4_:Boolean = §4! §.isMe(param1);
         _loc5_ = §@&&§.isMe();
         var _loc6_:Boolean = !_loc5_;
         var _loc7_:int = §0$c§.§5G§(§@&&§.getProfile());
         var _loc8_:uint = §<!9§.§4p§(§@&&§.getProfile().getLevel());
         var _loc9_:Boolean = _loc3_ && §2=§.§]!$§(param1);
         var _loc10_:Boolean = Boolean(param1) && §2=§.§9$M§(param1);
         this.§`$#§.setDisabled(!_loc5_ || !_loc3_ || _loc10_);
         this.btnReplace.setDisabled(_loc4_ || _loc6_);
         var _loc11_:Boolean = §'#y§ is §<!v§;
         this.btnDeactivate.setVisible(Boolean(param1) && param1.isActive());
         this.btnDeactivate.setDisabled(_loc4_ || _loc6_ || _loc11_ && (param1 && !param1.isActive()));
         if(_loc11_)
         {
            this.btnActivate.setVisible(Boolean(param1) && !param1.isActive());
            _loc13_ = Boolean(param1) && _loc10_ && §0$c§.§[%f§(§@&&§.getProfile(),true) == 0;
            this.btnActivate.setDisabled(!param1 || param1.isActive() || _loc9_ || _loc7_ >= _loc8_ || _loc10_ && !_loc13_);
         }
         this.textName.text = "";
         var _loc12_:String = "";
         if(_loc3_)
         {
            §7&5§.§>&<§(this.textName,param1.getCharName());
            _loc14_ = param1.§4!^§();
            switch(_loc14_)
            {
               case §2=§.§0"=§:
                  this.inputBack.setDisabled(_loc6_);
                  §'$a§("inputBack").buttonMode = _loc5_;
                  this.inputBack.setQtip(§0$N§.RENAME_LABEL,§;#^§.§[!K§,§+"'§.§3%y§);
                  _loc12_ = _loc5_ ? §0$N§.§6$$§ : §0$N§.§0%P§;
                  break;
               case §2=§.FRIEND:
                  this.inputBack.setQtip("");
                  this.inputBack.setDisabled(true);
                  §'$a§("inputBack").buttonMode = false;
                  _loc12_ = _loc6_ && _loc4_ ? §0$N§.§6$$§ : §0$N§.§0%P§;
                  break;
               case §2=§.MERCENARY:
                  this.inputBack.setDisabled(_loc6_);
                  §'$a§("inputBack").buttonMode = _loc5_;
                  this.inputBack.setQtip(§0$N§.RENAME_LABEL,§;#^§.§[!K§,§+"'§.§3%y§);
                  _loc12_ = §0$N§.§0d§;
                  break;
               case §2=§.§"!$§:
               case §2=§.§2f§:
               case §2=§.§^%&§:
                  this.inputBack.setQtip("");
                  this.inputBack.setDisabled(true);
                  §'$a§("inputBack").buttonMode = false;
                  _loc12_ = §0$N§.§0&A§;
            }
            if(_loc9_)
            {
               if(_loc14_ == §2=§.§2f§)
               {
                  _loc12_ = §0$N§.§@"F§;
               }
               else if(_loc14_ == §2=§.§^%&§)
               {
                  _loc12_ = §0$N§.§%$8§;
               }
               else
               {
                  _loc12_ = §0$N§.§#$c§;
               }
            }
         }
         §7&5§.§>&<§(this.textType,_loc12_);
         this.textName.mouseEnabled = false;
         this.textName.type = TextFieldType.DYNAMIC;
         this.§0$B§.setDisabled(true);
         this.§0$B§.setVisible(_loc5_ && !this.inputBack.§8,§() && Boolean(param1));
         this.§'$&§.setVisible(_loc5_ && !this.inputBack.§8,§() && Boolean(param1) && param1.§;!6§);
      }
      
      public function getProfile() : UserProfile
      {
         return this.profile;
      }
      
      private function §""P§(param1:Event) : void
      {
         §8"%§.§%!m§.§2"X§(this.profile,this);
      }
      
      private function §^"0§(param1:Event) : void
      {
         var _loc2_:Boolean = !this.profile.isActive();
         this.profile.setActive(_loc2_);
         if(§'#y§ is §<!v§)
         {
            §#$%§(this.cell).reset();
            this.cell.setItem(this.profile);
            this.btnActivate.setVisible(_loc2_);
            this.btnDeactivate.setVisible(!_loc2_);
         }
         else if(§'#y§ is §3& §)
         {
            §-$Z§(this.cell).reset();
            this.cell.setItem(null);
         }
         §'#y§.§]#_§(this.profile);
         Application.§5!>§.§^P§.§6X§();
         this.onCancel(null);
         this.profile = null;
      }
      
      private function §>"?§(param1:MouseEvent) : void
      {
         if(this.inputBack.§8,§())
         {
            return;
         }
         this.textName.type = TextFieldType.INPUT;
         this.textName.selectable = true;
         this.textName.mouseEnabled = true;
         if(!this.textName.hasEventListener(TextEvent.TEXT_INPUT))
         {
            this.textName.addEventListener(TextEvent.TEXT_INPUT,this.§=$j§);
            this.textName.addEventListener(Event.CHANGE,this.§=$j§);
         }
      }
      
      private function §=$j§(param1:Event) : void
      {
         var text:String = null;
         var trimmed:String = null;
         var isPermissible:Boolean = false;
         var hasCensure:Boolean = false;
         var censured:String = null;
         var event:Event = param1;
         if(§8"%§.restrictions.§9#]§(§^#§.§8%D§))
         {
            this.textName.removeEventListener(TextEvent.TEXT_INPUT,this.§=$j§);
            this.textName.removeEventListener(Event.CHANGE,this.§=$j§);
            this.textName.type = TextFieldType.DYNAMIC;
            this.textName.selectable = false;
            §,#W§.§6!P§(§0$N§.TITLE_ATTENTION,§0$N§.RENAMES_RESTRICTED + "\n" + §8"%§.restrictions.§9$#§(§^#§.§8%D§),§,#W§.§6!m§,function():void
            {
               textName.text = profile.getCharName();
            });
         }
         else
         {
            text = this.textName.text;
            text = §2"e§.§"%i§(text);
            text = text.replace(§7&5§.§%$u§);
            this.textName.text = text;
            trimmed = §2"e§.§=#$§(text);
            isPermissible = trimmed.length >= this.§<$G§ && trimmed.length <= this.textName.maxChars;
            hasCensure = trimmed.indexOf(§@r§.§!!O§.substr(0,1)) > -1;
            censured = §8"%§.§2#<§.§'#X§(trimmed);
            this.§0$B§.setDisabled(!isPermissible || hasCensure || trimmed == this.profile.getCharName() || censured == this.profile.getCharName());
         }
      }
      
      private function §4"S§(param1:Event) : void
      {
         var _loc2_:§,#W§ = null;
         var _loc3_:String = null;
         this.textName.text = §2"e§.§=#$§(this.textName.text);
         if(§2$^§.isVipExist())
         {
            if(§8"%§.§&S§.§?#k§())
            {
               _loc2_ = new §,#W§(§0$N§.TITLE_ATTENTION,§0$N§.VIP_FREE_RENAME_CHAR,§,#W§.§6!m§,this.§@!x§);
               _loc2_.show();
            }
            else
            {
               this.§@!x§();
            }
         }
         else if(§5&4§.§'%1§.ingamePrice == 0 && §5&4§.§'%1§.realPrice == 0)
         {
            this.§@!x§();
         }
         else
         {
            _loc3_ = §8"%§.§2#<§.§'#X§(this.textName.text);
            new §^$W§(this.profile.getId(),_loc3_,this.§>&C§).show();
         }
      }
      
      private function §@!x§() : void
      {
         this.textName.text = §8"%§.§2#<§.§'#X§(this.textName.text);
         §8"%§.§&"n§.§@!x§(this.profile.getId(),this.textName.text,§+$A§.INGAME,this.§>&C§);
      }
      
      private function §>&C§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0$B§.setDisabled(true);
            this.textName.type = TextFieldType.DYNAMIC;
            this.textName.selectable = false;
            this.textName.mouseEnabled = false;
            this.textName.text = §8"%§.§2#<§.§'#X§(this.textName.text);
            this.profile.§2!§(this.textName.text,true);
            this.profile.§-"§(this.textName.text,true);
            this.§^$@§();
         }
      }
      
      private function §^$@§() : void
      {
         var _loc1_:UserProfile = null;
         var _loc2_:§0!7§ = null;
         var _loc3_:§3$B§ = null;
         for each(_loc1_ in Application.userProfile.§"]§())
         {
            if(_loc1_.getId == this.profile.getId)
            {
               this.cell.setItem(_loc1_);
               if(!§4! §.isMe(this.profile))
               {
                  _loc2_ = this.cell as §0!7§;
                  _loc3_ = Application.§5!>§.§^P§.team.§'$3§(_loc2_) as §3$B§;
                  if(_loc3_)
                  {
                     _loc3_.setItem(_loc1_);
                  }
               }
               break;
            }
         }
      }
      
      private function §`$9§(param1:Event) : void
      {
         var event:Event = param1;
         if(§8"%§.restrictions.§9#]§(§^#§.§8%D§))
         {
            §,#W§.§6!P§(§0$N§.TITLE_ATTENTION,§0$N§.RENAMES_RESTRICTED + "\n" + §8"%§.restrictions.§9$#§(§^#§.§8%D§));
         }
         else
         {
            new §,#W§(§0$N§.TITLE_ATTENTION,§0$N§.RESET_NAME_CONFIRM_MESSAGE,§,#W§.§7"d§,function():void
            {
               §8"%§.§%!m§.§@!z§(profile.getId(),§6$e§);
            }).show();
         }
      }
      
      private function §6$e§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0$B§.setDisabled(true);
            this.textName.type = TextFieldType.DYNAMIC;
            this.textName.selectable = false;
            this.textName.mouseEnabled = false;
            this.§'$&§.setVisible(false);
            this.profile.§@!z§();
            this.textName.text = this.profile.getCharName();
            this.§^$@§();
         }
      }
      
      override protected function onCancel(param1:Event) : void
      {
         if(§'#y§ is §3& §)
         {
            §'#y§.§[#C§(true);
         }
         super.onCancel(param1);
      }
      
      override public function destroy() : void
      {
         getChildByName("inputBack").removeEventListener(MouseEvent.CLICK,this.§>"?§);
         this.textName.removeEventListener(TextEvent.TEXT_INPUT,this.§=$j§);
         this.textName.removeEventListener(Event.CHANGE,this.§=$j§);
         this.cell = null;
         this.profile = null;
         this.inputBack.destroy();
         this.btnReplace.destroy();
         this.btnActivate.destroy();
         this.btnDeactivate.destroy();
         this.§0$B§.destroy();
         super.destroy();
      }
   }
}

