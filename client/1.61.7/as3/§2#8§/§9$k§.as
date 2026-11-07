package §2#8§
{
   import § $q§.§-%f§;
   import § $q§.§1$Y§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"!C§.§"#T§;
   import §"% §.*;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#x§.*;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@#K§.§-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §[%'§.§<"G§;
   import §[%§.Cat;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9$k§ extends §1$Y§
   {
      
      private static const §0!O§:String = "membersModeGroup";
      
      private var friendsBtn:§8"@§;
      
      private var mercenaryBtn:§8"@§;
      
      private var clanBtn:§8"@§;
      
      protected var §3!a§:§>k§;
      
      protected var emptyPanel:§`&-§;
      
      protected var unitCard:§]&!§;
      
      private var fuzyBtn:§?%>§;
      
      private var rubyBtn:§?%>§;
      
      private var description:TextField;
      
      protected var §&$z§:§'$2§;
      
      protected var callback:Function;
      
      protected var selected:UserProfile;
      
      public function §9$k§(param1:Function = null)
      {
         super(§6#A§.§!&6§(§+"'§.§&!8§));
         this.callback = param1;
         this.§3!a§ = new §>k§(getChildByName("soclanExistPanel"));
         this.§3!a§.setVisible(false);
         this.emptyPanel = new §`&-§(getChildByName("emptyPanel"));
         this.emptyPanel.setVisible(false);
         §&$9§.§>&F§(this.emptyPanel.§'%s§("text"),§"-§.§+$m§,§<"G§.§%! §("NO_PROFILES_FOR_ADD_TO_TEAM"));
         this.friendsBtn = §!&5§.§;#z§(getChildByName("friendBtn"),§0!O§);
         this.friendsBtn.setText(§<"G§.§%! §("MEMBER_FRIEND_BTN"),§"-§.§+$m§);
         this.friendsBtn.§[!u§(this.§?$d§);
         this.mercenaryBtn = §!&5§.§;#z§(getChildByName("mercenaryBtn"),§0!O§);
         this.mercenaryBtn.setText(§<"G§.§%! §("MEMBER_MERCENARY_BTN"),§"-§.§+$m§);
         this.mercenaryBtn.§[!u§(this.§@$6§);
         this.clanBtn = §!&5§.§;#z§(getChildByName("soclanBtn"),§0!O§);
         this.clanBtn.setText(§<"G§.§%! §("MEMBER_SOCLAN_BTN"),§"-§.§+$m§);
         this.clanBtn.§[!u§(this.§&" §);
         this.clanBtn.setDisabled(!Application.userProfile.§!#E§());
         this.fuzyBtn = §!&5§.§7#[§(getChildByName("fuzyBtn"));
         this.fuzyBtn.§[!u§(this.§9%T§);
         this.rubyBtn = §!&5§.§7#[§(getChildByName("rubyBtn"));
         this.rubyBtn.§[!u§(this.§ #!§);
         this.unitCard = new §]&!§(getChildByName("unitCard"));
         this.description = §'%s§("description");
         this.mercenaryBtn.setPressed(true);
         this.§@$6§();
      }
      
      private static function §,"b§(param1:UserProfile, param2:UserProfile) : int
      {
         if(param1.getLevel() > param2.getLevel())
         {
            return -1;
         }
         if(param1.getLevel() < param2.getLevel())
         {
            return 1;
         }
         return 0;
      }
      
      private static function §@#]§(param1:Array) : Boolean
      {
         var _loc2_:UserProfile = null;
         for each(_loc2_ in param1)
         {
            if(!Application.userProfile.§?%$§(_loc2_.getId()))
            {
               return false;
            }
         }
         return true;
      }
      
      private static function § e§(param1:Array, param2:Boolean) : Array
      {
         var _loc4_:UserProfile = null;
         var _loc5_:UserProfile = null;
         var _loc3_:Array = [];
         for each(_loc5_ in param1)
         {
            _loc4_ = _loc5_.§`!D§();
            if(param2)
            {
               _loc4_.§7"i§(null);
               _loc4_.§;"U§(null);
            }
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      override protected function §%&9§() : void
      {
         §7%c§ = false;
         super.§%&9§();
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         var _loc5_:UserProfile = null;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         super.§3u§(param1,param2,param3);
         var _loc4_:§-%f§ = §-%f§(param1);
         _loc4_.setQtip("");
         if(param2)
         {
            _loc5_ = UserProfile(param2);
            _loc6_ = Application.userProfile.§?%$§(_loc5_.getId());
            _loc7_ = _loc5_.getId() < 0 && !§4&A§.§'![§(_loc5_.getId()).§[$j§;
            _loc4_.setDisabled(_loc6_);
            if(_loc6_)
            {
               _loc4_.setQtip(§0$N§.ALREADY_IN_TEAM_QTIP + (_loc7_ ? ". " + §0$N§.NOT_FITTABLE_MERC_NOTE : ""));
            }
            else if(_loc7_)
            {
               _loc4_.setQtip(§0$N§.NOT_FITTABLE_MERC_NOTE);
            }
         }
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§-%f§ = new §-%f§(param1 as MovieClip,null,true);
         _loc2_.§@%X§().§^#r§();
         _loc2_.removeHint();
         _loc2_.§[#"§(false);
         return _loc2_;
      }
      
      private function §?$d§(param1:Event) : void
      {
         this.§3!a§.setVisible(false);
         this.emptyPanel.setVisible(false);
         §&#F§(true);
         store = new §?#8§(§4#B§.numChildren);
         update();
      }
      
      private function §@$6§(param1:Event = null) : void
      {
         var _loc5_:§+%7§ = null;
         var _loc6_:UserProfile = null;
         this.§5"t§();
         this.§3!a§.setVisible(false);
         this.emptyPanel.setVisible(false);
         §&#F§(true);
         var _loc2_:Array = [];
         var _loc3_:Vector.<§+%7§> = §4&A§.§1!O§();
         var _loc4_:uint = uint(Application.userProfile.getLevel());
         for each(_loc5_ in _loc3_)
         {
            _loc6_ = _loc5_.§>#q§();
            §0$c§.§;&>§(§2=§.MERCENARY,_loc6_,_loc4_,_loc5_);
            _loc2_.push(_loc6_);
         }
         store = new §<#D§(_loc2_,§4#B§.numChildren);
         update();
      }
      
      private function §&" §(param1:Event) : void
      {
         var _loc5_:ClanMemberTO = null;
         this.§5"t§();
         this.§]#4§();
         var _loc2_:ClanTO = §]#i§.§?H§(Application.userProfile.clanMember.clanId);
         if(_loc2_)
         {
            this.emptyPanel.setVisible(false);
            §&#F§(true);
            var _loc3_:Array = [];
            var _loc4_:int = Application.userProfile.getId();
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_.members;
            for each(_loc6_ in _loc7_)
            {
               var _temp_1:* = _loc6_;
               _loc5_ = _loc6_;
               if(_loc5_.profileId != _loc4_)
               {
                  _loc3_.push(_loc5_.socialProfileId);
               }
            }
            §`#p§.§#&2§(_loc3_,this.§^!_§);
            return;
         }
         this.emptyPanel.setVisible(true);
         §&#F§(false);
      }
      
      private function §^!_§(param1:Vector.<UserProfile>) : void
      {
         var _loc4_:UserProfile = null;
         if(this.§4!^§() != §2=§.§"!$§)
         {
            return;
         }
         var _loc2_:Array = [];
         var _loc3_:int = Application.userProfile.getLevel();
         for each(_loc4_ in param1)
         {
            if(Boolean(_loc4_) && _loc4_.getLevel() <= _loc3_)
            {
               _loc2_.push(_loc4_);
            }
         }
         this.store = new §<#D§(_loc2_,§4#B§.numChildren);
         §&#F§(false);
         update();
      }
      
      private function §5"t§() : void
      {
         if(store is §?#8§)
         {
            §?#8§(store).setActive(false);
            store = null;
         }
      }
      
      protected function §]#4§() : void
      {
         this.§3!a§.setVisible(false);
         this.§1$,§();
      }
      
      protected function §1$,§() : void
      {
         if(!§0$c§.§6%s§())
         {
            this.§3!a§.setVisible(true);
         }
      }
      
      override protected function §,B§(param1:Event) : void
      {
         var _loc2_:UserProfile = null;
         super.§,B§(param1);
         if(Boolean(param1.target) && param1.target is §-%f§)
         {
            _loc2_ = UserProfile(§-%f§(param1.target).getItem());
            if(_loc2_)
            {
               this.§@$`§(_loc2_);
            }
         }
      }
      
      override public function setData(param1:Array) : void
      {
         throw new IllegalOperationError();
      }
      
      override protected function §;""§(param1:Array) : void
      {
         var _loc2_:§-%f§ = null;
         var _loc3_:UserProfile = null;
         var _loc4_:§+%7§ = null;
         if(isShown())
         {
            param1 = § e§(param1,this.friendsBtn.isPressed());
            if(!this.mercenaryBtn.isPressed())
            {
               param1.sort(§,"b§);
            }
            if(!§@#]§(param1))
            {
               super.§;""§(param1);
               if(this.mercenaryBtn.isPressed())
               {
                  for each(_loc2_ in cells)
                  {
                     _loc4_ = §4&A§.§'![§(UserProfile(_loc2_.getItem()).getId());
                     _loc2_.§[#"§(_loc4_.isNew,_loc4_.isNew ? §^"p§.§9%t§ : null);
                  }
               }
               else
               {
                  for each(_loc2_ in cells)
                  {
                     _loc2_.§[#"§(false);
                  }
               }
               _loc3_ = getSelected() as UserProfile;
               if(_loc3_)
               {
                  this.§@$`§(_loc3_);
                  this.unitCard.setVisible(true);
                  this.fuzyBtn.setVisible(true);
                  this.rubyBtn.setVisible(true);
               }
               else
               {
                  this.unitCard.setVisible(false);
                  this.fuzyBtn.setVisible(false);
                  this.rubyBtn.setVisible(false);
               }
            }
            else
            {
               this.emptyPanel.setVisible(true);
               §&#F§(false);
            }
         }
      }
      
      private function §@$`§(param1:UserProfile) : void
      {
         var teamMemberType:int;
         var ownerLevel:uint;
         var canAdd:Boolean;
         var profile:UserProfile = param1;
         if(this.clanBtn.isPressed())
         {
            this.description.htmlText = §0$N§.CLAN_MATE_MEMBER_TITLE;
         }
         else if(this.friendsBtn.isPressed())
         {
            this.description.htmlText = §0$N§.FRIEND_TEAM_MEMBER_TITLE;
         }
         else if(this.mercenaryBtn.isPressed())
         {
            this.description.htmlText = §0$N§.MERCENARY_TEAM_MEMBER_TITLE;
         }
         this.selected = profile = profile.§`!D§();
         teamMemberType = this.§4!^§();
         this.§&$z§ = §5&4§.§9Z§(profile,profile.getLevel(),teamMemberType);
         this.§-5§();
         ownerLevel = uint(Application.userProfile.getLevel());
         if(teamMemberType == §2=§.FRIEND)
         {
            if(Social.settings.§<#G§() && profile.getLevel() > ownerLevel)
            {
               profile.§1G§.§@">§(ownerLevel);
            }
         }
         if(profile.getRace().equals(Race.ALIEN.§]!D§()))
         {
            this.description.htmlText += §<"G§.§%! §("ALIEN_TEAM_MEMBER_TITLE");
            §8"%§.§%!m§.§"%x§(profile.getId(),function(param1:int, param2:int):void
            {
               profile.§&$g§(Race.§3!4§(param1));
               profile.§?!0§(param1,param2);
               unitCard.§@$`§(profile);
            });
         }
         else
         {
            this.unitCard.§@$`§(profile);
         }
         this.fuzyBtn.setText(this.§&$z§.ingamePrice.toString(),§"-§.§6"j§);
         this.rubyBtn.setText(this.§&$z§.realPrice.toString(),§"-§.§6"j§);
         canAdd = this.§!P§();
         this.fuzyBtn.setDisabled(!canAdd);
         this.rubyBtn.setDisabled(!canAdd);
         §4"0§.§@"T§(this.fuzyBtn);
         §4"0§.§@"T§(this.rubyBtn);
      }
      
      protected function §-5§() : void
      {
      }
      
      private function §9%T§(param1:Event) : void
      {
         this.§]%5§(§+$A§.INGAME,this.§&$z§.ingamePrice);
      }
      
      private function § #!§(param1:Event) : void
      {
         this.§]%5§(§+$A§.REAL,this.§&$z§.realPrice);
      }
      
      protected function §]%5§(param1:§+$A§, param2:uint) : void
      {
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc3_:UserProfile = this.selected;
         var _loc4_:int = this.§4!^§();
         if(Application.userProfile.§'$k§())
         {
            _loc5_ = §0$c§.§5G§(Application.userProfile);
            _loc6_ = §<!9§.§4p§(Application.userProfile.getLevel());
            _loc7_ = §0$c§.§1!B§(Application.userProfile);
            _loc8_ = _loc5_ < _loc6_ && _loc7_ < 1;
            §8"%§.§%!m§.§]%5§(_loc3_,param1,param2,_loc4_,_loc8_,this.§<$u§);
         }
         else
         {
            §,#W§.§[#r§(§0"-§.TITLE_ATTENTION,§0$N§.CAN_NOT_ADD_IN_GROUP);
         }
      }
      
      protected function §<$u§(param1:Boolean) : void
      {
         if(this.callback != null)
         {
            this.callback(param1);
            this.callback = null;
         }
         if(param1)
         {
            if(this.clanBtn.isPressed())
            {
               this.§]#4§();
            }
            update();
            hide();
         }
      }
      
      protected function §4!^§() : int
      {
         if(this.friendsBtn.isPressed())
         {
            return §2=§.FRIEND;
         }
         if(this.mercenaryBtn.isPressed())
         {
            return §2=§.MERCENARY;
         }
         return §2=§.§"!$§;
      }
      
      private function §!P§() : Boolean
      {
         var _loc2_:Vector.<UserProfile> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:UserProfile = this.selected || getSelected() as UserProfile;
         if(_loc1_)
         {
            _loc2_ = Application.userProfile.§"]§();
            _loc3_ = 0;
            _loc4_ = int(_loc2_.length);
            while(_loc3_ < _loc4_)
            {
               if(_loc2_[_loc3_].equals(_loc1_))
               {
                  return false;
               }
               _loc3_++;
            }
            return true;
         }
         return false;
      }
   }
}

