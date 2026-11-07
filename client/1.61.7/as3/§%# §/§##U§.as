package §%# §
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§!%&§;
   import §##j§.§`%g§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+"m§.§3#[§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §-!U§.§&%j§;
   import §-@§.§0"e§;
   import §0!§.§6#z§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.HpChangeEvent;
   import §2"v§.§@G§;
   import §2#s§.*;
   import §2B§.§#&E§;
   import §3"@§.§#$O§;
   import §4!K§.*;
   import §4!x§.§@& §;
   import §4#2§.*;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.§4!m§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§-!Y§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[$<§.*;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §##U§ extends §@& §
   {
      
      private const §`!i§:int = 15;
      
      private const §3!m§:uint = 57;
      
      private var §8!k§:int = 4;
      
      protected var §[$6§:§`&-§;
      
      protected var §5D§:§`&-§;
      
      protected var §[%k§:§`&-§;
      
      protected var §%"g§:Sprite;
      
      protected var subPanel:DisplayObject;
      
      protected var message:TextField;
      
      protected var §="#§:Vector.<§`&-§> = new Vector.<§`&-§>(0);
      
      protected var §7&+§:Vector.<§`&-§> = new Vector.<§`&-§>(0);
      
      protected var reagents:Vector.<§!%&§> = new Vector.<§!%&§>(0);
      
      protected var bonus:§]+§;
      
      protected var postBtn:§?%>§;
      
      protected var §8"`§:DisplayObjectContainer;
      
      protected var § $Q§:int;
      
      protected var §;"p§:Function;
      
      private var §6%q§:Boolean;
      
      public function §##U§(param1:MovieClip, param2:§]+§, param3:Boolean = true)
      {
         super(param1);
         this.§6%q§ = param3;
         this.bonus = param2;
         this.init();
         this.§ %+§();
      }
      
      public static function §"X§(param1:§]+§, param2:Function = null, param3:Boolean = true) : §##U§
      {
         var _loc4_:MovieClip = null;
         _loc4_ = §6#A§.§!&6§(§+"'§.§0#W§);
         var _loc5_:§##U§ = new §##U§(_loc4_,param1,param3);
         _loc5_.§[$U§();
         _loc5_.§%#p§();
         if(param2 != null)
         {
            _loc5_.§;"p§ = param2;
         }
         else
         {
            §`o§.§9$x§(_loc5_.§>!-§);
            _loc5_.postBtn.getContainer().parent.visible = false;
         }
         return _loc5_;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         if(!panel)
         {
            panel = getChildByName("bgPanel");
         }
         if(!this.subPanel)
         {
            this.subPanel = getChildByName("subPanel");
         }
      }
      
      protected function init() : void
      {
         this.§[$6§ = new §`&-§(getChildByName("awardsPanel"));
         this.§ $Q§ = this.§[$6§.y;
         this.§%"g§ = new Sprite();
         §?!C§(this.§%"g§);
         this.§[%k§ = new §`&-§(this.§%"g§);
         this.message = §'%s§("message");
         this.message.autoSize = TextFieldAutoSize.CENTER;
         this.message.embedFonts = true;
         this.message.wordWrap = true;
         this.message.defaultTextFormat = §"-§.§+$m§;
         this.message.text = "";
         var _loc1_:DisplayObject = §4"0§.§##W§(§#!`§(),"postBtn");
         this.postBtn = §!&5§.§7#[§(_loc1_);
         this.postBtn.setText(§0$N§.BTN_SHARE_NAME,§"-§.§+$m§);
         this.postBtn.§[!u§(this.§&&>§);
         this.§8"`§ = this.postBtn.getContainer().parent;
      }
      
      public function §[$U§() : void
      {
         §#7§(this.bonus.§,k§);
         this.message.htmlText = "<b>" + this.bonus.§8%T§ + "</b>";
         if(this.message.numLines != 3)
         {
            this.§[$6§.y = this.§ $Q§ - (3 - this.message.numLines) * 12;
         }
         else
         {
            this.§[$6§.y = this.§ $Q§;
         }
         if(this.§6%q§)
         {
            this.§8&2§();
            this.§]C§();
         }
      }
      
      private function §8&2§() : void
      {
         if(this.bonus.reaction)
         {
            Application.userProfile.§%`§(-this.bonus.reaction);
            Application.§5!>§.§8$w§();
         }
      }
      
      private function §]C§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(this.bonus.reagents[§#"B§.§;#%§]);
         if(_loc1_ != 0)
         {
            _loc2_ = Application.userProfile.§2!>§().§ %n§(§#"B§.§;#%§) - _loc1_;
            Application.§5!>§.§ &;§().§?$J§(_loc2_);
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§7!$§;
         §%%R§ = §`!v§.§^""§;
         §<"b§ = true;
         §##b§(§0$N§.BUTTON_OK);
      }
      
      protected function § %+§() : void
      {
         this.§%!j§();
         this.§'%S§();
         this.§<$E§();
         this.§,$P§();
         this.§=#q§();
         this.§=9§();
         Application.§5!>§.§8$w§();
      }
      
      private function §7"%§(param1:§`&-§) : void
      {
         var _loc3_:Sprite = null;
         if(this.bonus.type == §8"_§.§"$%§ || this.bonus.type == §8"_§.§0e§)
         {
            this.§8!k§ = 5;
         }
         if(this.§="#§.length == 0 || this.§="#§[this.§="#§.length - 1].§#!`§().numChildren == this.§8!k§)
         {
            _loc3_ = new Sprite();
            this.§[$6§.§?!C§(_loc3_);
            this.§5D§ = new §`&-§(_loc3_);
            this.§="#§.push(this.§5D§);
         }
         this.§5D§.addChild(param1);
         var _loc2_:DisplayObjectContainer = this.§5D§.§#!`§();
         if(_loc2_.numChildren > 1)
         {
            §`o§.§4%4§(param1.getContainer(),_loc2_.getChildAt(_loc2_.numChildren - 2),this.§`!i§);
         }
      }
      
      private function §%!j§() : void
      {
         var _loc1_:UserProfile = Application.userProfile;
         if(this.bonus.money != 0)
         {
            if(this.§6%q§)
            {
               _loc1_.§^<§(_loc1_.§#!G§() - this.bonus.money);
            }
            this.§]"k§(§@a§.§-$$§,this.bonus.money,§0$N§.FUZY_QTIP);
         }
         if(this.bonus.realMoney != 0)
         {
            if(this.§6%q§)
            {
               _loc1_.§]!c§(_loc1_.§@$D§() - this.bonus.realMoney);
            }
            this.§]"k§(§@a§.§7$X§,this.bonus.realMoney,§0$N§.RUBY_QTIP);
         }
         if(this.bonus.reaction != 0)
         {
            this.§]"k§(§@a§.§`&8§,this.bonus.reaction,§0$N§.REACTION_QTIP);
         }
         if(this.bonus.exp != 0 && _loc1_.getLevel() < §<!9§.getMaxLevel())
         {
            this.§]"k§(§@a§.§&$r§,this.bonus.exp,§0$N§.EXPERIENCE);
         }
         if(this.bonus.battleToken != 0)
         {
            this.§]"k§(§@a§.§7"R§,this.bonus.battleToken,§#&E§.§-!l§.§@!1§);
         }
         if(this.bonus.bossToken != 0)
         {
            this.§]"k§(§@a§.§<"h§,this.bonus.bossToken,§#&E§.§#E§.§@!1§);
         }
         if(this.bonus.wagerToken != 0)
         {
            this.§]"k§(§@a§.§=A§,this.bonus.wagerToken,§#&E§.§^5§.§@!1§);
         }
      }
      
      private function §]"k§(param1:String, param2:int, param3:String) : void
      {
         var _loc4_:§`&-§ = null;
         var _temp_1:* = new §`&-§(§6#A§.§!&6§(param1));
         _loc4_ = new §`&-§(§6#A§.§!&6§(param1));
         var _loc5_:TextField = _loc4_.§'%s§("count");
         _loc5_.autoSize = TextFieldAutoSize.LEFT;
         _loc5_.text = param2.toString();
         _loc4_.setQtip(param3);
         this.§7"%§(_loc4_);
      }
      
      private function §'%S§() : void
      {
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:Boolean = false;
         var _loc12_:§&!e§ = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:§;#_§ = null;
         var _loc17_:BackpackItem = null;
         var _loc18_:int = 0;
         var _loc19_:String = null;
         var _loc20_:§`&-§ = null;
         var _loc21_:§3U§ = null;
         var _loc22_:TextField = null;
         var _loc23_:int = 0;
         var _loc1_:Dictionary = this.bonus.items;
         if(!_loc1_ || §-!Y§.§&%Y§(_loc1_) == 0)
         {
            return;
         }
         var _loc2_:UserProfile = Application.userProfile;
         var _loc3_:Boolean = this.bonus.type == §8"_§.§@!7§;
         var _loc4_:Boolean = this.bonus.type == §8"_§.§=$[§;
         var _loc5_:Boolean = this.bonus.type == §8"_§.§"$%§;
         var _loc6_:Boolean = this.bonus.type == §8"_§.§0e§;
         var _loc7_:Array = [];
         var _loc8_:Vector.<§`%g§> = new Vector.<§`%g§>(0);
         for(_loc9_ in _loc1_)
         {
            _loc10_ = parseInt(_loc9_);
            _loc11_ = true;
            _loc12_ = §<$c§.§8&E§(_loc10_,_loc2_.getRace());
            _loc13_ = _loc12_ is §2"y§;
            _loc14_ = _loc12_ is §=?§;
            _loc15_ = _loc12_ is §;#_§;
            _loc16_ = _loc15_ ? _loc12_ as §;#_§ : null;
            if(_loc13_ && !§#$O§.§]A§(_loc10_))
            {
               _loc11_ = false;
            }
            if(_loc15_ && !_loc5_ && !_loc6_)
            {
               _loc17_ = §1!S§.§@!&§(_loc10_,_loc2_.§3%^§());
               if((Boolean(_loc17_)) && Boolean(_loc17_.isInfinite()) && !(_loc16_.isComplex() && int(_loc1_[_loc9_]) > 0))
               {
                  _loc11_ = false;
               }
            }
            if(_loc15_ && (_loc5_ || _loc6_ || _loc3_))
            {
               _loc7_.push(_loc10_);
            }
            if(_loc11_)
            {
               _loc18_ = int(_loc1_[_loc9_]);
               _loc19_ = _loc14_ ? §@a§.§%$f§ : §@a§.§7P§;
               _loc20_ = new §`&-§(§6#A§.§!&6§(_loc19_));
               _loc21_ = new §3U§(_loc20_.getChildByName("icon"),true);
               if(_loc14_ && §=?§(_loc12_).isTemporalItem())
               {
                  _loc23_ = 0;
                  _loc23_ = §0#2§.§!$r§(_loc18_,true);
                  _loc12_.setDuration(_loc23_);
               }
               _loc21_.setItem(_loc12_);
               _loc22_ = _loc20_.§#!`§().getChildByName("count") as TextField;
               if(_loc22_)
               {
                  _loc22_.autoSize = TextFieldAutoSize.LEFT;
                  if(_loc15_)
                  {
                     if(_loc18_ > -1 || _loc6_)
                     {
                        _loc22_.text = _loc18_.toString() + (Boolean(_loc16_) && _loc16_.isComplex() ? "/" + _loc16_.getMaxLevel() : "");
                     }
                     else if(_loc3_)
                     {
                        _loc22_.text = _loc18_.toString();
                     }
                     else
                     {
                        _loc22_.text = "";
                     }
                  }
                  else
                  {
                     _loc22_.text = "";
                  }
               }
               if(_loc14_)
               {
                  this.§7&+§.push(_loc20_);
                  this.§[%k§.addChild(_loc20_);
               }
               else
               {
                  this.§7"%§(_loc20_);
                  if(_loc15_)
                  {
                     _loc8_.push(new §`%g§(_loc10_,_loc18_));
                  }
               }
               if(!this.bonus.§ +§)
               {
                  this.bonus.§ +§ = _loc12_;
               }
            }
         }
         if(_loc5_)
         {
            §@$l§.§0$=§(_loc7_);
         }
         if(_loc4_ || _loc3_)
         {
            §0"e§.§6s§(_loc8_);
         }
      }
      
      private function §<$E§() : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:§;#_§ = null;
         var _loc5_:int = 0;
         var _loc6_:§`&-§ = null;
         var _loc7_:§3U§ = null;
         var _loc8_:TextField = null;
         var _loc1_:Dictionary = this.bonus.§2&4§;
         if(!_loc1_ || §-!Y§.§&%Y§(_loc1_) == 0)
         {
            return;
         }
         for(_loc2_ in _loc1_)
         {
            _loc3_ = parseInt(_loc2_);
            _loc4_ = §<$c§.§ !=§(_loc3_);
            if(_loc4_)
            {
               _loc5_ = int(_loc1_[_loc2_]);
               _loc6_ = new §`&-§(§6#A§.§!&6§(§@a§.§7P§));
               _loc7_ = new §3U§(_loc6_.getChildByName("icon"),true);
               _loc7_.setItem(_loc4_);
               _loc8_ = _loc6_.§#!`§().getChildByName("count") as TextField;
               if(_loc8_)
               {
                  _loc8_.autoSize = TextFieldAutoSize.LEFT;
                  _loc8_.text = _loc5_.toString();
               }
               this.§7"%§(_loc6_);
               if(!this.bonus.§ +§)
               {
                  this.bonus.§ +§ = _loc4_;
               }
            }
         }
      }
      
      protected function §,$P§() : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§`&-§ = null;
         var _loc7_:DisplayObject = null;
         var _loc1_:Dictionary = this.bonus.reagents;
         if(!_loc1_ || §-!Y§.§&%Y§(_loc1_) == 0)
         {
            return;
         }
         var _loc2_:Boolean = this.bonus.type == §8"_§.§=$[§;
         for(_loc3_ in _loc1_)
         {
            _loc4_ = int(_loc3_);
            _loc5_ = §6#A§.§!&6§(§1@§.§`$M§(_loc4_).getMenuIcon());
            _loc6_ = new §`&-§(§6#A§.§!&6§(§@a§.§>!2§));
            this.§7"%§(_loc6_);
            _loc7_ = _loc6_.getChildByName("icon");
            _loc5_.height = _loc7_.height;
            _loc5_.scaleX = _loc5_.scaleY;
            _loc6_._removeChild(_loc7_);
            _loc6_.§?!C§(_loc5_);
            _loc6_.§'%s§("count").autoSize = TextFieldAutoSize.LEFT;
            _loc6_.§'%s§("count").text = _loc1_[_loc3_];
            if(_loc2_)
            {
               this.reagents.push(new §!%&§(_loc4_,_loc1_[_loc3_]));
            }
         }
      }
      
      private function §%#p§() : void
      {
         if(this.§="#§.length == 0 && this.§7&+§.length == 0 && this.bonus.§8%T§ == §0$N§.REFFERAL_BONUS_DEFAULT_MSG)
         {
            this.message.htmlText = "<b>" + §0$N§.REFFERAL_BONUS_EMPTY_MSG + "</b>";
            this.message.y = this.message.parent.height * 0.4;
         }
      }
      
      protected function §=#q§() : void
      {
         var _loc2_:§`&-§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§="#§)
         {
            _loc2_.y = _loc1_ * this.§3!m§;
            if(_loc2_.width < this.§[$6§.width)
            {
               §`o§.§9$x§(_loc2_);
            }
            _loc1_++;
         }
         §`o§.§9$x§(this.§[$6§);
      }
      
      protected function §=9§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7&+§.length)
         {
            if(_loc1_ > 0)
            {
               _loc3_ = this.§7&+§[_loc1_].getContainer();
               §`o§.§4%4§(_loc3_,this.§7&+§[_loc1_ - 1].getContainer(),this.§`!i§);
            }
            _loc1_++;
         }
         if(this.§="#§.length == 0)
         {
            §`o§.§9$x§(this.§[%k§);
            this.§[%k§.y = this.§[$6§.y - 30;
         }
         else if(this.§7&+§.length > 0)
         {
            this.§[%k§.x = 30;
            this.§[%k§.y = this.§[$6§.y - 20;
            §`o§.§4%4§(this.§[$6§.getContainer(),this.§[%k§.getContainer(),20);
            panel.width = this.§[%k§.width + this.§[$6§.width + 100;
            getChildByName("close").x = panel.width - getChildByName("close").width;
            this.subPanel.width = panel.width - 60;
            §`o§.§%&%§(this.message);
            §`o§.§%&%§(§]"a§);
            §`o§.§%&%§(getChildByName("titlePanel"));
            §`o§.§%&%§(this.§8"`§);
            §`o§.§9$x§(§>!-§);
            if(this.§8"`§.visible)
            {
               this.§8"`§.x += this.§8"`§.width * 0.5 + 5;
               §>!-§.x -= §>!-§.width * 0.5 + 5;
            }
         }
         var _loc2_:Number = Math.max(this.§[$6§.height,this.§%"g§.height);
         panel.height = this.message.numLines * 20 + _loc2_ + §>!-§.height + 180;
         this.subPanel.height = height - 130;
         §>!-§.y = this.§8"`§.y = height - 35;
      }
      
      protected function §&&>§(param1:MouseEvent) : void
      {
         if(this.§;"p§ != null)
         {
            this.§;"p§(this.bonus);
         }
         this.onOkClick(null);
      }
      
      override protected function §0!j§(param1:MouseEvent) : void
      {
         this.onOkClick(null);
         super.§0!j§(param1);
      }
      
      override protected function onOkClick(param1:MouseEvent) : void
      {
         var _loc2_:UserProfile = Application.userProfile;
         if(this.bonus.reaction)
         {
            _loc2_.§%`§(this.bonus.reaction);
         }
         if(this.bonus.realMoney)
         {
            _loc2_.§9%D§(this.bonus.realMoney);
         }
         if(this.bonus.money)
         {
            _loc2_.§1%'§(this.bonus.money);
         }
         if(this.bonus.type == §8"_§.§=$[§)
         {
            if(this.bonus.exp > 0)
            {
               LevelUpDialog.§@#X§(this.bonus.exp,null);
            }
            if(this.reagents.length)
            {
               §0"e§.§6s§(null,null,null,this.reagents);
            }
         }
         Application.§5!>§.§8$w§();
         super.onOkClick(param1);
      }
      
      override public function destroy() : void
      {
         var _loc1_:§`&-§ = null;
         super.destroy();
         for each(_loc1_ in this.§="#§)
         {
            _loc1_.destroy();
         }
         for each(_loc1_ in this.§7&+§)
         {
            _loc1_.destroy();
         }
         this.§="#§.length = 0;
         this.§7&+§.length = 0;
         this.reagents.length = 0;
         if(this.§[$6§)
         {
            this.§[$6§.destroy();
         }
      }
   }
}

