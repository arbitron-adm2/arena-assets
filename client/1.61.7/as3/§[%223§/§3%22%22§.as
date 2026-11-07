package §["3§
{
   import § !8§.§`!d§;
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import § %?§.§4s§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#"V§.§<"4§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&#E§.*;
   import §&#h§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,$J§.§0%G§;
   import §-%B§.*;
   import §-G§.§&"7§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §2#s§.*;
   import §2o§.§]#;§;
   import §3"@§.§##L§;
   import §3#T§.Boomerang;
   import §4!!§.§76§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §4u§.§!$F§;
   import §4u§.§^%>§;
   import §7"Q§.§0$L§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§^$E§;
   import §8#<§.§^#O§;
   import §8#o§.§1@§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§>#r§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.AssembleEquip;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§3!=§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3""§ extends §>#r§
   {
      
      private static const §6"B§:uint = 70;
      
      private static const §%$R§:uint = 10;
      
      private static const §6!C§:uint = 25;
      
      private var reforgeTip:MovieClip;
      
      private var question:MovieClip;
      
      private var itemIcon:§3U§;
      
      private var §<9§:§3U§;
      
      private var craftFuzyBtn:§?%>§;
      
      private var craftRubyBtn:§?%>§;
      
      private var craftFuzyDisabled:§`&-§;
      
      private var progressCont:MovieClip;
      
      private var §>" §:TextField;
      
      private var maxQuality:TextField;
      
      private var tips:TextField;
      
      private var progressLabel:TextField;
      
      private var §&%l§:TextField;
      
      private var §2#D§:Boolean;
      
      private var §>#n§:Boolean;
      
      private var §""z§:Boolean;
      
      private var §&#l§:Boolean;
      
      private var §=$s§:Boolean;
      
      private var §=#U§:int;
      
      private var §+!q§:int;
      
      private var §'$c§:int;
      
      private var §9$S§:uint;
      
      private var info:CraftEquipInfoHint;
      
      private var §4%G§:Boolean;
      
      public function §3""§()
      {
         super(§6#A§.§!&6§(§+"'§.§4"%§));
         this.reforgeTip = container.getChildByName("reforgeTip") as MovieClip;
         this.reforgeTip.visible = false;
         this.reforgeTip.stop();
         this.question = container.getChildByName("question") as MovieClip;
         this.question.mouseEnabled = false;
         var _loc1_:DisplayObjectContainer = DisplayObjectContainer(container.getChildByName("itemIconContainer"));
         this.itemIcon = new §3U§(_loc1_.getChildByName("icon"),true);
         this.§<9§ = new §3U§(_loc1_.getChildByName("iconGray"),false);
         this.maxQuality = container.getChildByName("maxQuality") as TextField;
         §7&5§.§>&<§(this.maxQuality,§<"G§.§%! §("CRAFTED_MAX_QUALITY"));
         this.tips = container.getChildByName("tips") as TextField;
         §7&5§.§>&<§(this.tips,§0$N§.§%! §("CRAFT_EQUIP_NOT_ENOUGH_REGS"));
         this.progressCont = container.getChildByName("progressCont") as MovieClip;
         this.progressLabel = this.progressCont.getChildByName("text") as TextField;
         this.§&%l§ = this.progressCont.getChildByName("count") as TextField;
         §7&5§.§>&<§(this.progressLabel,§<"G§.§%! §("GUARANTEED_SUCCESS"));
         this.§>" § = container.getChildByName("details") as TextField;
         §7&5§.§>&<§(this.§>" §,§<"G§.§%! §("DETAILS_FOR_CRAFT"));
         this.craftFuzyBtn = §!&5§.§7#[§(getContainer().getChildByName("craftFuzyBtn"));
         this.craftFuzyBtn.§[!u§(this.§]"J§);
         this.craftRubyBtn = §!&5§.§7#[§(getContainer().getChildByName("craftRubyBtn"));
         this.craftRubyBtn.§[!u§(this.§;"O§);
         this.craftFuzyDisabled = new §`&-§(getContainer().getChildByName("craftFuzyDisabled"));
         this.craftFuzyDisabled.setQtip(§0$N§.§%! §("CRAFT_EQUIP_NOT_ENOUGH_REGS"));
         var _loc2_:MovieClip = getContainer().getChildByName("infoBtn") as MovieClip;
         _loc2_.addEventListener(MouseEvent.CLICK,this.§8"-§);
         _loc2_.addEventListener(MouseEvent.MOUSE_OUT,this.§[!P§);
         _loc2_.buttonMode = true;
         this.info = new CraftEquipInfoHint();
         container.addEventListener(§]#;§.BUY_EVENT,this.§`&1§);
      }
      
      private function §[!P§(param1:MouseEvent) : void
      {
         if(this.info.isShown())
         {
            this.info.hide();
         }
      }
      
      private function §8"-§(param1:MouseEvent) : void
      {
         this.info.§<$8§(param1.stageX - this.info.width,param1.stageY);
      }
      
      private function §`&1§(param1:§]#;§) : void
      {
         this.update();
      }
      
      public function §5#J§(param1:int) : void
      {
         this.§=#U§ = param1;
      }
      
      public function §"I§() : void
      {
         var field:TextField = null;
         var n:int = 0;
         var text:String = null;
         var tip:MovieClip = §4"0§.getChildByNameFromCont(this.reforgeTip,"tip") as MovieClip;
         if(tip)
         {
            field = §4"0§.getChildByNameFromCont(tip,"text") as TextField;
            if(field)
            {
               n = int(Math.random() * 6) + 1;
               text = §0$N§.§%! §("RECRAFT_FAIL_POPUP" + n);
               text += "\n" + §0$N§.§%! §("RECRAFT_FAIL_POPUP01");
               text += "\n" + §0$N§.§%! §("RECRAFT_FAIL_POPUP02");
               §7&5§.§>&<§(field,text);
            }
         }
         if(!this.§4%G§)
         {
            this.§4%G§ = true;
            this.reforgeTip.addFrameScript(this.reforgeTip.totalFrames - 1,function(... rest):void
            {
               reforgeTip.visible = false;
               reforgeTip.stop();
            });
         }
      }
      
      public function update() : void
      {
         var _loc1_:UserProfile = null;
         var _loc10_:§5%>§ = null;
         this.§"I§();
         _loc1_ = §@&&§.getProfile();
         var _loc2_:BackpackItem = this.§&$m§();
         var _loc3_:CraftedEquipFamily = §<$c§.§3"d§(this.§=#U§);
         this.§+!q§ = §#&>§.§1_§(_loc3_.getId());
         this.§&#l§ = _loc2_ == null;
         this.§'$c§ = this.§4$<§();
         this.§""z§ = _loc1_.§,%o§().§8&E§(this.§'$c§) != null;
         var _loc4_:BackpackItem = _loc1_.§,%o§().§8&E§(this.§+!q§);
         this.§>#n§ = _loc3_.§>"+§() != null;
         var _loc5_:String = §0$N§.§%! §(this.§""z§ ? "BEST_EQUIP_ALREADY_EXIST" : (this.§&#l§ ? "CRAFT_VARIATION_HINT" : "RECRAFT_VARIATION_HINT"));
         var _loc6_:String = §0$N§.§%! §(!this.§""z§ ? "TRY_YOUR_LUCK" : "GREAT_LUCK");
         container.getChildByName("craftResultBg").visible = !this.§""z§;
         container.getChildByName("starsBg").visible = this.§""z§;
         this.info.§#7§(_loc6_);
         this.info.setText(_loc5_);
         var _loc7_:§!$F§ = §^%>§.§]!§(this.§>&B§());
         this.itemIcon.setItem(_loc4_ ? _loc4_.getRecord() : _loc3_,_loc7_);
         this.itemIcon.§&k§().visible = !this.§&#l§;
         this.§<9§.setItem(_loc3_);
         this.§<9§.setVisible(this.§&#l§);
         this.itemIcon.setVisible(!this.§&#l§);
         this.question.visible = this.§&#l§;
         var _loc8_:TextField = container.getChildByName("itemName") as TextField;
         if(this.§""z§)
         {
            _loc10_ = _loc3_.§]"!§(this.§'$c§);
            §1!S§.§ "4§(_loc10_,_loc8_);
         }
         else
         {
            _loc8_.textColor = 8611924;
            §&$9§.§>&F§(_loc8_,§"-§.§+$m§,this.§&#l§ ? _loc3_.§7%z§() : §<"G§.§%! §("BEST_CRAFT_CHANCE"));
         }
         _loc8_.y = _loc8_.numLines > 1 ? 104 - _loc8_.getLineMetrics(0).height * 0.5 : 104;
         this.§2#D§ = true;
         if(_loc3_.§,X§() > 1)
         {
            this.§2#D§ = _loc1_.getLevel() >= _loc3_.§,X§();
         }
         if(_loc3_.getRequiredRating() > 0)
         {
            this.§2#D§ = _loc1_.getRating() >= _loc3_.getRequiredRating();
         }
         this.§^!0§();
         this.§0!4§(_loc3_);
         this.§>" §.visible = !this.§""z§;
         this.maxQuality.visible = this.§""z§;
         this.tips.visible = !this.§""z§ && this.§2#D§ && !this.§=$s§;
         this.craftFuzyBtn.setVisible(!this.§""z§);
         this.craftRubyBtn.setVisible(!this.§""z§);
         this.craftFuzyBtn.setDisabled(!this.§2#D§ || !this.§=$s§);
         this.craftRubyBtn.setDisabled(!this.§2#D§);
         this.craftFuzyDisabled.setVisible(this.§2#D§ && !this.§""z§ && !this.§=$s§);
         this.§2%V§();
         var _loc9_:int = this.progressCont.visible ? int(this.progressCont.y - this.craftFuzyBtn.height - 5) : int(this.progressCont.y);
         this.craftFuzyBtn.y = this.craftRubyBtn.y = this.craftFuzyDisabled.y = _loc9_;
      }
      
      private function §^!0§() : void
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:CraftedEquipFamily = null;
         var _loc8_:Vector.<§-$6§> = null;
         var _loc10_:§-$6§ = null;
         var _loc11_:§?%Q§ = null;
         var _loc12_:§&!e§ = null;
         var _loc13_:int = 0;
         var _loc1_:DisplayObjectContainer = getContainer().getChildByName("reagentsPanel") as DisplayObjectContainer;
         var _loc2_:Array = [];
         var _loc3_:uint = 0;
         while(_loc3_ < _loc1_.numChildren)
         {
            _loc2_.push(_loc1_.getChildAt(_loc3_));
            _loc3_++;
         }
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.name != "bg")
            {
               _loc1_.removeChild(_loc4_);
            }
         }
         _loc5_ = [];
         _loc6_ = [];
         _loc7_ = §<$c§.§3"d§(this.§=#U§);
         this.§9$S§ = 0;
         this.§=$s§ = true;
         _loc8_ = !this.§&#l§ && this.§>#n§ ? _loc7_.§=%k§() : _loc7_.§]#x§();
         if(!this.§&#l§)
         {
            _loc8_.unshift(new §-$6§(this.§+!q§,1));
         }
         var _loc9_:§`!d§ = §@&&§.getProfile().getRace();
         for each(_loc10_ in _loc8_)
         {
            if(_loc10_.id >= §0%G§.§;9§)
            {
               _loc12_ = §<$c§.§8&E§(_loc10_.id,_loc9_);
               _loc11_ = new §-%q§(this.§=#U§);
               _loc11_.setItem(_loc12_,_loc10_.quantity);
               _loc5_.push(_loc11_);
               if(!_loc11_.§7$@§())
               {
                  this.§2#D§ = false;
               }
            }
            else
            {
               _loc12_ = §1@§.§`$M§(_loc10_.id);
               _loc11_ = new §@%^§();
               _loc11_.setItem(_loc12_,_loc10_.quantity);
               _loc6_.push(_loc11_);
               _loc13_ = Math.max(0,_loc10_.quantity - §@%^§(_loc11_).getCurrentCount());
               if(_loc13_ > 0)
               {
                  this.§=$s§ = false;
                  this.§9$S§ += _loc13_ * _loc12_.§4$n§();
               }
            }
            §<"4§(_loc11_).setVisible(!this.§""z§);
         }
         this.§9$S§ = uint(Math.round(this.§9$S§ / 100));
         this.§`Y§(_loc1_,_loc5_,_loc6_);
         if(!this.§&#l§)
         {
            _loc8_.splice(0,1);
         }
      }
      
      private function §`Y§(param1:DisplayObjectContainer, param2:Array, param3:Array) : void
      {
         var _loc7_:§<"4§ = null;
         var _loc4_:Sprite = new Sprite();
         _loc4_.y = §6!C§;
         param1.addChild(_loc4_);
         var _loc5_:Array = param2.concat(param3);
         var _loc6_:uint = 0;
         while(_loc6_ < _loc5_.length)
         {
            _loc7_ = _loc5_[_loc6_];
            _loc4_.addChild(_loc7_.getContainer());
            _loc7_.getContainer().x = (§6"B§ + §%$R§) * _loc6_;
            _loc6_++;
         }
         _loc4_.x = (param1.width - _loc5_.length * §6"B§) * 0.5 - §%$R§;
      }
      
      private function §0!4§(param1:CraftedEquipFamily) : void
      {
         var _loc2_:§'$2§ = !this.§&#l§ && this.§>#n§ ? param1.§>"+§() : param1.§%"]§();
         §4"0§.§2!,§(this.craftFuzyBtn,"text",String(_loc2_.ingamePrice),"",§"-§.§6"j§);
         §4"0§.§2!,§(this.craftRubyBtn,"text",String(_loc2_.realPrice + this.§9$S§),"",§"-§.§6"j§);
         §4"0§.§@"T§(this.craftFuzyBtn);
         §4"0§.§@"T§(this.craftRubyBtn);
         §7&5§.§?$k§(this.craftFuzyDisabled.§'%s§("text"),String(_loc2_.ingamePrice));
         §4"0§.§5%o§(this.craftFuzyDisabled.§#!`§());
      }
      
      private function §2%V§() : void
      {
         var _loc1_:Object = null;
         var _loc2_:CraftedEquipFamily = null;
         var _loc3_:int = 0;
         if(this.§""z§ || this.§&#l§)
         {
            this.progressCont.visible = false;
            return;
         }
         this.progressCont.visible = true;
         _loc1_ = §8"%§.§2!d§.§9#M§;
         _loc2_ = §<$c§.§3"d§(this.§=#U§);
         _loc3_ = _loc2_.getId();
         var _loc4_:int = int(_loc1_[_loc3_]);
         var _loc5_:int = §^#O§.§+r§(this.§+!q§,this.§=#U§,_loc2_.§1#§().length);
         §7&5§.§?$k§(this.§&%l§,_loc4_ + " / " + _loc5_);
         this.progressCont.fill.width = this.progressCont.back.width / _loc5_ * _loc4_;
      }
      
      private function §]"J§(param1:Event) : void
      {
         var _loc2_:CraftedEquipFamily = §<$c§.§3"d§(this.§=#U§);
         var _loc3_:§'$2§ = !this.§&#l§ && this.§>#n§ ? _loc2_.§>"+§() : _loc2_.§%"]§();
         if(§4! §.§7"-§(Application.userProfile,§+$A§.INGAME,_loc3_))
         {
            §8"%§.§9"<§.§],§(_loc2_.getId(),§+$A§.INGAME,this.§@#b§);
         }
      }
      
      private function §;"O§(param1:Event) : void
      {
         var _loc2_:CraftedEquipFamily = §<$c§.§3"d§(this.§=#U§);
         var _loc3_:§'$2§ = !this.§&#l§ && this.§>#n§ ? _loc2_.§>"+§() : _loc2_.§%"]§();
         var _loc4_:§'$2§ = new §'$2§(_loc3_.ingamePrice,_loc3_.realPrice + this.§9$S§);
         if(§4! §.§7"-§(Application.userProfile,§+$A§.REAL,_loc4_))
         {
            §8"%§.§9"<§.§],§(_loc2_.getId(),§+$A§.REAL,this.§@#b§);
         }
      }
      
      private function §@#b§(param1:int, param2:int) : void
      {
         var _loc4_:UserProfile = null;
         if(this.§9$S§)
         {
            _loc4_ = Application.userProfile;
            _loc4_.§]!c§(_loc4_.§@$D§() - this.§9$S§);
            Application.§5!>§.§&!s§(_loc4_.§@$D§());
         }
         var _loc3_:CraftedEquipFamily = §<$c§.§3"d§(this.§=#U§);
         this.§9%2§(new §4s§(param1,param2,_loc3_));
      }
      
      private function §9%2§(param1:§4s§) : void
      {
         var _loc2_:CraftEquipCompleteDialog = null;
         if(param1.result == 0)
         {
            if(this.§&#l§ || this.§+!q§ != param1.equipId)
            {
               _loc2_ = new CraftEquipCompleteDialog(param1.§;#J§,param1.equipId);
               _loc2_.show();
            }
            else
            {
               this.reforgeTip.visible = true;
               this.reforgeTip.gotoAndPlay(0);
            }
            §5f§.§8#&§(this.update);
         }
         else
         {
            §,#W§.§'!+§(§0$N§.TITLE_ERROR,"Ошибка крафта " + param1.result,§,#W§.§6!m§).show();
            Application.loginfo("ошибка крафта " + param1.result);
         }
         this.update();
      }
      
      private function §&$m§() : BackpackItem
      {
         var _loc3_:BackpackItem = null;
         var _loc4_:§5%>§ = null;
         var _loc1_:§;! § = §@&&§.getProfile().§,%o§();
         var _loc2_:CraftedEquipFamily = §<$c§.§3"d§(this.§=#U§);
         for each(_loc4_ in _loc2_.§1#§())
         {
            _loc3_ = _loc1_.§8&E§(_loc4_.§&!H§());
            if(_loc3_)
            {
               break;
            }
         }
         return _loc3_;
      }
      
      private function §4$<§() : int
      {
         var _loc3_:§5%>§ = null;
         var _loc1_:CraftedEquipFamily = §<$c§.§3"d§(this.§=#U§);
         var _loc2_:int = -1;
         for each(_loc3_ in _loc1_.§1#§())
         {
            if(_loc3_.§&!H§() > _loc2_)
            {
               _loc2_ = _loc3_.§&!H§();
            }
         }
         return _loc2_;
      }
      
      private function §##v§() : §&!e§
      {
         return §<$c§.§8&E§(this.§4$<§(),Application.userProfile.getRace());
      }
      
      private function §^%6§() : int
      {
         var _loc3_:§5%>§ = null;
         var _loc1_:CraftedEquipFamily = §<$c§.§3"d§(this.§=#U§);
         var _loc2_:int = -1;
         for each(_loc3_ in _loc1_.§1#§())
         {
            if(_loc3_.§&!H§() > this.§+!q§)
            {
               _loc2_ = _loc3_.§&!H§();
               break;
            }
         }
         return _loc2_ > -1 ? _loc2_ : this.§'$c§;
      }
      
      private function §>&B§() : §&!e§
      {
         return §<$c§.§8&E§(this.§^%6§(),Application.userProfile.getRace());
      }
   }
}

