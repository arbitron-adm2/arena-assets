package §0%z§
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import § !P§.§]z§;
   import § #m§.§;#^§;
   import § &5§.§!$#§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §#%!§.§ §;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §-!U§.*;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2#s§.§7"N§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4u§.§9!]§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#a§.§>!o§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§&#Z§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §@c§.*;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §@"q§ extends §@& § implements §^c§
   {
      
      public static const §0%#§:int = 1000;
      
      private var awardCellContainer:MovieClip;
      
      private var cells:MovieClip;
      
      private var §>"H§:Array = [];
      
      private var §6"e§:Array = [];
      
      private var §,!]§:§&%&§;
      
      private var getAwardField:TextField;
      
      private var getAwardLabel:TextField;
      
      private var nextLevelField:TextField;
      
      private var nextLevelLabel:TextField;
      
      private var selectBtn:§?%>§;
      
      private var §6!Y§:int = 0;
      
      private var §,8§:int = 0;
      
      private var investedAwardPoints:int = 0;
      
      private var flag:§4#_§;
      
      private var §5"f§:TextField;
      
      private var exclamationMark:MovieClip;
      
      private var §,%O§:MovieClip;
      
      private var §@%q§:MovieClip;
      
      private var §;%J§:MovieClip;
      
      private var profile:UserProfile;
      
      private var §'&%§:int;
      
      private var resetBtn:§?%>§;
      
      private var §'$O§:TextField;
      
      private var §!#R§:Vector.<MovieClip>;
      
      public function §@"q§(param1:Array, param2:§8"@§)
      {
         super(§6#A§.§!&6§("AchievTabAwards"));
         this.§6"e§ = param1;
         §&$9§.§>&F§(§'%s§("loading.text"),§"-§.§+$m§,§0$N§.LOADING);
         var _loc3_:SimpleButton = param2.getContainer() as SimpleButton;
         this.§,%O§ = MovieClip(MovieClip(_loc3_.upState).getChildByName("medal"));
         this.§@%q§ = MovieClip(MovieClip(_loc3_.downState).getChildByName("medal"));
         this.§;%J§ = MovieClip(MovieClip(_loc3_.overState).getChildByName("medal"));
         this.§!#R§ = new <MovieClip>[this.§,%O§,this.§@%q§,this.§;%J§];
         this.§!#R§ = this.§!#R§.concat(§3!3§.§#"R§(§'$a§("loading.loading")));
         this.awardCellContainer = §'$a§("awardCellContainer");
         this.getAwardField = §'%s§("getAwardField");
         this.getAwardField.visible = false;
         this.nextLevelField = §'%s§("nextLevelField");
         this.nextLevelLabel = §'%s§("nextLevelLabel");
         §&$9§.§>&F§(this.nextLevelLabel,§"-§.§+$m§,§0$N§.ACHIEV_POINTS_LABEL);
         this.getAwardLabel = §'%s§("getAwardLabel");
         §&$9§.§`F§(this.getAwardLabel,§0$N§.ACHIEV_AWARD_POINTS_LABEL);
         this.getAwardLabel.visible = false;
         §&$9§.§>&F§(§'%s§("loading.text"),§"-§.§+$m§);
         this.flag = new §4#_§(§'$a§("flag"));
         this.flag.setQtip(§0$N§.AVAILABLE_AWARD,§;#^§.RIGHT,§+"'§.§]!H§);
         this.§5"f§ = §'%s§("flag.points");
         this.§5"f§.embedFonts = true;
         this.§5"f§.defaultTextFormat = §"-§.§6"j§;
         this.§7"w§(false);
         this.selectBtn = §!&5§.§7#[§(getChildByName("selectBtn"));
         this.selectBtn.setText(§0$N§.ACHIEV_SELECT_BUTTON,§"-§.§+$m§);
         this.selectBtn.§[!u§(this.§?%^§);
         this.resetBtn = §!&5§.§7#[§(getChildByName("resetBtn"));
         this.resetBtn.§[!u§(this.§"!=§);
         this.resetBtn.setQtip(§0$N§.RESET_AWARD_ACHIEV_BTN_QTIP,§;#^§.§4!f§);
         this.§'$O§ = §'%s§("priceReset");
         §&$9§.§>&F§(this.§'$O§,§"-§.§6"j§,§]z§.§[!%§.toString());
         §&#F§(false);
         this.exclamationMark = §'$a§("exclamationMark");
         this.exclamationMark.visible = false;
         this.§="3§();
      }
      
      private function §"!=§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         if(this.investedAwardPoints == 0)
         {
            §,#W§.§'!+§(§0$N§.BUTTON_CANCEL,§0$N§.NOT_TAKEN_AWARD_FOR_ACHIEV,§,#W§.§6!m§).show();
         }
         else
         {
            _loc2_ = §"!&§.§#&C§(this.profile);
            _loc3_ = _loc2_ ? §0$N§.RESET_AWARD_ACHIEV_ATTENTION + "\n" : "";
            if(§2$^§.isVipExist())
            {
               _loc4_ = §8"%§.§&S§.§?#k§() ? §0$N§.VIP_FREE_RESET_AWARD_ACHIEVE : "";
               _loc5_ = _loc2_ ? §,#W§.§7"d§ : §,#W§.§6!m§;
               if(_loc2_ || §8"%§.§&S§.§?#k§())
               {
                  new §,#W§(§0$N§.TITLE_ATTENTION,_loc3_ + _loc4_,_loc5_,this.§`"Z§).show();
               }
               else
               {
                  this.§`"Z§();
               }
            }
            else if(Application.userProfile.§@$D§() < §]z§.§[!%§)
            {
               new §>!o§().show();
            }
            else
            {
               §,#W§.§'!+§(§0$N§.TITLE_CONFIRMATION,_loc3_ + §0$N§.TITLE_RESET_AWARD_ACHIEV,§,#W§.§7"d§,this.§`"Z§).show();
            }
         }
      }
      
      private function §`"Z§() : void
      {
         §&#F§(true);
         §8"%§.§@1§.§`"Z§(this.§>%m§);
      }
      
      private function §>%m§(param1:Boolean) : void
      {
         if(param1)
         {
            this.setData(§@&&§.getProfile(),0,this.§6!Y§);
         }
         §&#F§(false);
      }
      
      private function §="3§() : void
      {
         var _loc2_:§&%&§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         this.cells = new MovieClip();
         var _loc1_:int = 7;
         var _loc3_:int = 0;
         var _loc4_:int = int(this.§6"e§.length);
         while(_loc3_ < _loc4_)
         {
            _loc5_ = 0;
            _loc6_ = int(this.§6"e§[_loc3_].length);
            while(_loc5_ < _loc6_)
            {
               _loc2_ = new §&%&§(this.§6"e§[_loc3_][_loc5_].itemId);
               _loc2_.addEventListener(MouseEvent.CLICK,this.§^#]§);
               _loc2_.x = (_loc2_.width + _loc1_) * this.§6"e§[_loc3_][_loc5_].position - 60;
               _loc2_.y = (_loc2_.width + _loc1_) * _loc3_;
               _loc2_.§="p§();
               this.§>"H§[this.§>"H§.length] = _loc2_;
               this.cells.addChild(_loc2_.getContainer());
               _loc5_++;
            }
            _loc3_++;
         }
         this.awardCellContainer.addChild(this.cells);
         §`o§.§4!F§(this.cells);
      }
      
      private function §^#]§(param1:MouseEvent) : void
      {
         var _loc2_:§&%&§ = null;
         var _loc3_:Object = null;
         var _loc4_:Boolean = false;
         this.§,!]§ = §&%&§(param1.target);
         for each(_loc2_ in this.§>"H§)
         {
            if(_loc2_.§##m§() == §&%&§.§&$7§ && this.§,!]§.§##m§() != §&%&§.§9#3§)
            {
               _loc3_ = §"!&§.§]?§(_loc2_.getItem().getId());
               _loc4_ = §"!&§.§ $]§(_loc3_,this.profile);
               if(!_loc4_ && §"!&§.§,&H§(_loc3_,this.profile))
               {
                  _loc2_.setActive();
               }
               else if(_loc4_)
               {
                  _loc2_.§6q§();
               }
               else
               {
                  _loc2_.§="p§();
               }
            }
         }
         if(this.§,!]§.§##m§() == §&%&§.§8#$§)
         {
            this.§,!]§.§0$§();
            if(this.selectBtn.§8,§())
            {
               this.selectBtn.setDisabled(false);
            }
         }
      }
      
      private function §?%^§(param1:MouseEvent) : void
      {
         if(Boolean(this.§,!]§) && this.§,!]§.§##m§() == §&%&§.§&$7§)
         {
            this.§,!]§.setSelected();
            §8"%§.§@1§.§>N§(this.§,!]§.getItem(),this.§ %R§);
            §&#F§(true);
         }
      }
      
      private function § %R§(param1:§&!e§, param2:uint, param3:uint) : void
      {
         var _loc4_:String = null;
         var _loc5_:§,#W§ = null;
         switch(param2)
         {
            case ShopResult.SUCCESS:
               if(param1.getId() == param3)
               {
                  §"!&§.§2#@§(§"!&§.§]?§(param3));
                  ++this.investedAwardPoints;
                  this.§5"f§.text = this.§,8§.toString();
                  §&#F§(false);
                  this.§>$V§(Application.userProfile);
                  Social.§!g§.§"%k§(param1);
                  return;
               }
               _loc4_ = §0$N§.ERROR_HACKING_ATTEMPT;
               break;
            case ShopResult.MIN_REQUIREMENTS_ERROR:
               _loc4_ = §0$N§.ERROR_HACKING_ATTEMPT;
               break;
            case ShopResult.NOT_ENOUGH_MONEY:
               _loc4_ = §0$N§.ERROR_HACKING_ATTEMPT;
               break;
            default:
               _loc4_ = §0$N§.ERROR_SAVING;
         }
         if(_loc4_)
         {
            _loc5_ = new §,#W§(§0$N§.AWARD_LABEL,_loc4_,§,#W§.§6!m§);
            _loc5_.show();
         }
      }
      
      public function §>$V§(param1:UserProfile) : void
      {
         var _loc3_:§&!e§ = null;
         var _loc4_:§&%&§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc10_:§&%&§ = null;
         var _loc11_:BackpackItem = null;
         this.profile = param1;
         var _loc2_:int = 0;
         var _loc7_:* = int(this.§>"H§.length - 1);
         while(_loc7_ > -1)
         {
            _loc5_ = false;
            _loc4_ = this.§>"H§[_loc7_] as §&%&§;
            _loc4_.§="p§();
            _loc3_ = _loc4_.getItem();
            _loc6_ = _loc3_.getId();
            if(_loc3_ is §;#_§)
            {
               _loc11_ = §1!S§.§@!&§(_loc6_,param1.§3%^§());
               if((Boolean(_loc11_)) && _loc11_.isInfinite())
               {
                  _loc5_ = true;
                  _loc4_.setSelected();
                  _loc2_++;
               }
               if(Boolean(_loc11_) && _loc3_ != _loc11_.getRecord())
               {
                  _loc4_.setItem(_loc11_.getRecord());
               }
               else if(!§"!&§.§]?§(_loc6_))
               {
                  _loc4_.setItem(§<$c§.§ !=§(§1!S§.§[!r§(_loc6_)));
               }
            }
            else if(_loc3_ is §=?§ && Boolean(param1.§,%o§().§8&E§(_loc6_)))
            {
               _loc5_ = true;
               _loc4_.setSelected();
               _loc2_++;
            }
            if(!_loc5_ && §"!&§.§ $]§(§"!&§.§]?§(_loc6_),param1))
            {
               _loc4_.§6q§();
            }
            this.§^"z§(_loc6_,_loc4_,_loc5_);
            _loc7_--;
         }
         this.§;$+§(this.investedAwardPoints + 1);
         var _loc8_:int = §0%#§ - this.§6!Y§ % §0%#§;
         §&$9§.§>&F§(this.nextLevelField,§"-§.§+$m§,_loc8_.toString());
         this.§,8§ = Math.max(0,this.§6!Y§ / §0%#§ - this.investedAwardPoints);
         this.getAwardField.text = this.§,8§.toString();
         this.§5"f§.text = this.§,8§.toString();
         if(this.§,8§ <= 0)
         {
            this.§7"w§(false);
            this.§7%2§();
            this.selectBtn.setDisabled(true);
         }
         else
         {
            this.§7"w§(true);
            this.selectBtn.setDisabled(false);
         }
         if(!this.§,!]§)
         {
            this.selectBtn.setDisabled(true);
         }
         this.§1a§(param1);
         var _loc9_:int = this.§6!Y§ - this.investedAwardPoints * §0%#§;
         for each(_loc10_ in this.§>"H§)
         {
            _loc10_.§%%S§(_loc9_,this.§'&%§,param1.§"%D§());
         }
      }
      
      private function §^"z§(param1:int, param2:§&%&§, param3:Boolean) : void
      {
         var _loc7_:int = 0;
         var _loc4_:Object = §"!&§.§]?§(param1);
         var _loc5_:Object = §"!&§.§%"u§(param1);
         var _loc6_:Object = §"!&§.§>!h§(param1);
         if(Boolean(_loc5_) || Boolean(_loc6_))
         {
            this.cells.setChildIndex(param2.getContainer(),this.cells.numChildren - 1);
            _loc7_ = §"!&§.§[#f§(_loc5_ ? int(_loc5_.itemId) : int(_loc6_.itemId)) - §"!&§.§[#f§(param1);
            param2.§^"z§(_loc7_ == 1 ? §&%&§.§ "y§ : §&%&§.§'%8§,true);
            if(param3 || §"!&§.§ $]§(_loc4_,this.profile))
            {
               param2.§^"z§(_loc7_ == 1 ? §&%&§.§;"6§ : §&%&§.§+%N§,true);
            }
         }
      }
      
      private function §7"w§(param1:Boolean) : void
      {
         if(!this.exclamationMark)
         {
            this.exclamationMark = §'$a§("exclamationMark");
         }
         this.exclamationMark.visible = false;
         this.§[%"§(param1);
      }
      
      private function §;$+§(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§&%&§ = null;
         var _loc6_:§&!e§ = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         this.§'&%§ = param1 > §"!&§.§2#B§ ? §"!&§.§2#B§ : param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'&%§)
         {
            _loc3_ = 0;
            _loc4_ = int(this.§6"e§[_loc2_].length);
            while(_loc3_ < _loc4_)
            {
               for each(_loc5_ in this.§>"H§)
               {
                  _loc6_ = _loc5_.getItem();
                  if(this.§6"e§[_loc2_][_loc3_].itemId == _loc6_.getId() && _loc5_.§##m§() != §&%&§.§9#3§)
                  {
                     _loc7_ = this.§6"e§[_loc2_][_loc3_];
                     _loc8_ = §"!&§.§ $]§(_loc7_,this.profile);
                     if(!_loc8_ && §"!&§.§,&H§(_loc7_,this.profile))
                     {
                        _loc5_.setActive();
                     }
                     else if(_loc8_)
                     {
                        _loc5_.§6q§();
                     }
                     else
                     {
                        _loc5_.§="p§();
                     }
                  }
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §7%2§() : void
      {
         var _loc1_:§&%&§ = null;
         for each(_loc1_ in this.§>"H§)
         {
            if(_loc1_.§##m§() != §&%&§.§9#3§ && _loc1_.§##m§() != §&%&§.§<e§)
            {
               _loc1_.§="p§();
            }
         }
      }
      
      private function §[%"§(param1:Boolean = false) : void
      {
         this.§,%O§.visible = param1;
         this.§@%q§.visible = param1;
         this.§;%J§.visible = param1;
      }
      
      private function §1a§(param1:UserProfile) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Boolean = §4! §.isMe(param1);
         if(_loc2_)
         {
            §`o§.§1$T§(this.nextLevelField,this.getAwardLabel,3);
            §`o§.§1$T§(this.nextLevelLabel,this.getAwardLabel,3);
            §`o§.§8#y§(§'$a§("iconAchievPoints"),this.nextLevelField);
         }
         else
         {
            _loc3_ = §'$a§("alignHeight");
            §`o§.§8#y§(this.nextLevelField,_loc3_);
            §`o§.§8#y§(this.nextLevelLabel,_loc3_);
            §`o§.§8#y§(§'$a§("iconAchievPoints"),_loc3_);
         }
         this.selectBtn.setVisible(_loc2_);
         this.getAwardField.visible = false;
         this.getAwardLabel.visible = false;
         this.§2&?§();
      }
      
      private function §2&?§() : void
      {
         var _loc1_:Boolean = §@&&§.getProfile() == Application.userProfile && this.investedAwardPoints != 0;
         this.resetBtn.setVisible(_loc1_);
         this.§'$O§.visible = _loc1_;
         getContainer()["priceMC"].visible = _loc1_;
      }
      
      public function setData(param1:UserProfile, param2:int = 0, param3:int = 0) : void
      {
         this.profile = param1;
         if(param2 >= 0)
         {
            this.investedAwardPoints = param2;
         }
         this.§6!Y§ = param3;
         this.§>$V§(param1);
      }
      
      public function playAnimations() : void
      {
         var _loc1_:§&%&§ = null;
         if(isVisible())
         {
            §3!3§.§<%W§(this.§!#R§);
            for each(_loc1_ in this.§>"H§)
            {
               _loc1_.playAnimations();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:§&%&§ = null;
         §3!3§.§>!j§(this.§!#R§);
         for each(_loc1_ in this.§>"H§)
         {
            _loc1_.stopAnimations();
         }
      }
   }
}

