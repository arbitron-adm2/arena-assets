package §-&5§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-8§.§3!x§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §2!-§.DamageEvent;
   import §4$b§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §=!C§.§0"l§;
   import §?#g§.§&"P§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!i§.*;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import config.§28§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class § &8§ extends §>D§
   {
      
      private static const § #n§:uint = 3;
      
      private static const §3&,§:int = 9;
      
      private static const §]$1§:uint = 80;
      
      private var §7%x§:int;
      
      private var §8#M§:int;
      
      private var § &§:Boolean;
      
      private var §^$h§:TextField;
      
      private var compensation:§<q§;
      
      private var §1"_§:Vector.<§`&-§> = new Vector.<§`&-§>(0);
      
      private var icons:Vector.<§3U§> = new Vector.<§3U§>(0);
      
      private var §>&>§:Vector.<§8"@§> = new Vector.<§8"@§>(0);
      
      private var §0V§:Vector.<§4#_§> = new Vector.<§4#_§>(0);
      
      private var §2#c§:Vector.<§4#_§> = new Vector.<§4#_§>(0);
      
      private var §6%d§:Vector.<Point> = new Vector.<Point>(0);
      
      public function § &8§(param1:DisplayObject, param2:Boolean = true)
      {
         var _loc3_:MovieClip = null;
         var _loc4_:DisplayObject = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§`&-§ = null;
         this.§ &§ = param2;
         this.§8#M§ = param2 ? int(§ #n§) : 6;
         this.§7%x§ = param2 ? int(§]$1§) : int(§]$1§ + 10);
         super(param1 as DisplayObjectContainer);
         if(getChildByName("sale"))
         {
            this.§^$h§ = §'%s§("sale");
         }
         §^"o§.autoSize = TextFieldAutoSize.CENTER;
         var _loc5_:int = §'$a§("items").numChildren;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc3_ = §'$a§("items.item" + _loc6_);
            _loc3_.addEventListener(MouseEvent.MOUSE_OVER,this.§-$l§);
            _loc3_.addEventListener(MouseEvent.MOUSE_OUT,this.§6"x§);
            this.§6%d§[_loc6_] = new Point(_loc3_.x,_loc3_.y);
            this.§1"_§[_loc6_] = new §`&-§(_loc3_);
            _loc3_ = §'$a§("items.item" + _loc6_ + ".icon");
            this.icons[_loc6_] = new §3U§(_loc3_,true,false);
            _loc4_ = getChildByName("items.item" + _loc6_ + ".btn");
            this.§>&>§[_loc6_] = new §8"@§(_loc4_);
            §'$a§("items.item" + _loc6_ + ".shadow").visible = false;
            §'$a§("items.item" + _loc6_ + ".exist").visible = false;
            _loc7_ = §6#A§.§!&6§(§+"'§.§%&,§);
            _loc8_ = new §`&-§(_loc7_);
            _loc8_.setQtip(§0$N§.TEMPORAL_ITEM);
            this.§2#c§[_loc6_] = _loc8_;
            this.§1"_§[_loc6_].addChild(_loc8_);
            _loc8_.x = _loc3_.width + 5;
            _loc6_++;
         }
         this.compensation = new §<q§(getChildByName("compensationCont"));
      }
      
      override public function destroy() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = §'$a§("items").numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = §'$a§("items.item" + _loc3_);
            _loc1_.removeEventListener(MouseEvent.MOUSE_OVER,this.§-$l§);
            _loc1_.removeEventListener(MouseEvent.MOUSE_OUT,this.§6"x§);
            this.icons[_loc3_].destroy();
            this.§>&>§[_loc3_].destroy();
            this.§2#c§[_loc3_].destroy();
            this.§1"_§[_loc3_].destroy();
            _loc3_++;
         }
         this.icons.length = 0;
         this.§>&>§.length = 0;
         this.§2#c§.length = 0;
         this.§1"_§.length = 0;
         super.destroy();
      }
      
      private function §6"x§(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         _loc2_ = param1.currentTarget;
         _loc3_ = _loc2_.name;
         var _loc4_:String = _loc3_.substr(_loc3_.length - 1,1);
         this.§>&>§[_loc4_].setPressed(false);
      }
      
      private function §-$l§(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         _loc2_ = param1.currentTarget;
         _loc3_ = _loc2_.name;
         var _loc4_:String = _loc3_.substr(_loc3_.length - 1,1);
         this.§>&>§[_loc4_].setPressed(true);
      }
      
      override public function setItem(param1:§??§) : void
      {
         var _loc2_:§9#x§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:String = null;
         super.setItem(param1);
         §7&5§.§>&<§(§4&D§,param1.§7%z§());
         _loc2_ = §9#x§(param1);
         var _loc3_:uint = _loc2_.§,#Q§().length;
         §^"o§.htmlText = §0$N§.§"%p§;
         this.§-#=§();
         this.§=#o§(_loc2_);
         if(requirements)
         {
            requirements.requirements.htmlText = "";
            if(!this.§ &§ || !(this.compensation.isVisible() && _loc3_ > 6))
            {
               requirements.requirements.htmlText = "<b>" + param1.§]G§() + "</b>";
            }
            if(_loc2_.§,X§() > 1)
            {
               _loc4_ = "#B30000";
               _loc5_ = "#538E06";
               _loc6_ = "<br/><b>" + §0$N§.SHOP_REQUIRED_LEVEL + ": ";
               _loc7_ = _loc2_.§?#1§ ? _loc5_ : _loc4_;
               _loc6_ += "<font color=\'" + _loc7_ + "\'> " + _loc2_.§,X§() + "</b><br/>";
               requirements.requirements.htmlText += _loc6_;
            }
            if(_loc2_.§0!"§)
            {
               requirements.requirements.htmlText += §0$N§.EQUIP_STACKING_NOTIFY;
            }
            if(_loc2_.§8!t§() > 0)
            {
               _loc8_ = _loc2_.§8!t§() / 60 / 60 / 24 + 1;
               if(_loc8_ == 1)
               {
                  _loc9_ = §0$N§.BUNDLE_REMAINING_LAST_DAY;
               }
               else
               {
                  _loc10_ = Social.§-%c§.§4!]§(_loc8_,§0$N§.DAY_PLURALS);
                  _loc9_ = §0%§.format(§0$N§.BUNDLE_TIME_REMAINING,{
                     "count":_loc8_,
                     "days":_loc10_
                  });
               }
               requirements.requirements.htmlText += "<br/>" + _loc9_;
            }
         }
         if(this.§^$h§)
         {
            this.§^$h§.visible = getChildByName("backSale").visible = param1.§,!H§() > 0 && !(this.compensation.isVisible() && _loc3_ > 3);
            if(this.§^$h§.visible)
            {
               §7&5§.§>&<§(this.§^$h§,§0$N§.§%"a§ + " " + param1.§,!H§() + "%");
            }
         }
      }
      
      private function §-#=§() : void
      {
         var _loc1_:§4#_§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         for each(_loc1_ in this.§0V§)
         {
            _loc1_.setQtip("");
            _loc1_.destroy();
            _loc1_ = null;
         }
         this.§0V§.length = 0;
         _loc3_ = 0;
         _loc4_ = int(this.icons.length);
         while(_loc3_ < _loc4_)
         {
            this.icons[_loc3_].setItem(null);
            _loc2_ = §'$a§("items.item" + _loc3_ + ".icon");
            if(_loc2_.numChildren > 1)
            {
               _loc2_.removeChildren(1,_loc2_.numChildren - 1);
            }
            §'$a§("items.item" + _loc3_).visible = false;
            _loc3_++;
         }
      }
      
      public function §=#o§(param1:§9#x§) : void
      {
         var _loc6_:Boolean = false;
         var _loc9_:§7,§ = null;
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         var _loc12_:TextField = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:§6#v§ = null;
         var _loc16_:§`!d§ = null;
         var _loc17_:§&"P§ = null;
         var _loc18_:§6!G§ = null;
         var _loc19_:§4#_§ = null;
         var _loc20_:§&!e§ = null;
         var _loc21_:§;#_§ = null;
         var _loc22_:§=?§ = null;
         var _loc23_:BackpackItem = null;
         var _loc24_:Number = NaN;
         var _loc2_:UserProfile = Application.userProfile;
         var _loc3_:Array = param1.§,#Q§();
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = int(_loc3_.length);
         while(_loc7_ < _loc8_)
         {
            _loc9_ = _loc3_[_loc7_];
            _loc10_ = int(_loc9_.getId());
            _loc11_ = §'$a§("items.item" + _loc7_ + ".icon");
            _loc12_ = §'%s§("items.item" + _loc7_ + ".count");
            _loc13_ = !param1.§+'§(_loc9_) || _loc3_[_loc7_] is §]$X§ && param1.§0#%§(_loc9_);
            this.§2#c§[_loc7_].setVisible(false);
            _loc12_.visible = false;
            if(_loc3_[_loc7_] is §%&G§ || _loc3_[_loc7_] is §6#v§)
            {
               _loc14_ = _loc3_[_loc7_] is §6#v§;
               _loc15_ = _loc3_[_loc7_] as §6#v§;
               _loc16_ = §9%+§.§?%S§()[int(_loc14_ ? §28§.§,%9§(_loc15_.getId()).raceId : _loc10_)];
               _loc17_ = §&"P§.§!%4§(_loc14_ ? int(§28§.§,%9§(_loc15_.getId()).raceId) : _loc10_);
               if(_loc14_)
               {
                  _loc17_.§%#L§(_loc10_);
               }
               _loc18_ = new §6!G§(_loc16_,_loc17_);
               _loc18_.§!$B§();
               _loc11_.addChild(_loc18_.getClip());
               _loc11_.x = _loc11_.width - _loc18_.getClip().width;
               _loc11_.y = _loc11_.height - _loc18_.getClip().height;
               _loc19_ = new §4#_§(_loc11_);
               if(_loc14_)
               {
                  _loc19_.setQtip(§0$N§.SKIN + " " + _loc17_.§7%z§(),null,§+"'§.§]!H§);
               }
               else
               {
                  _loc19_.setQtip(§0$N§.RACE + " " + _loc16_.§7%z§(),null,§+"'§.§]!H§);
               }
               this.§0V§.push(_loc19_);
               if(_loc13_)
               {
                  _loc4_ += _loc14_ ? _loc17_.§,$1§() : _loc16_.getRealPrice();
                  _loc5_++;
               }
            }
            else if(_loc3_[_loc7_] is §]$X§ || _loc3_[_loc7_] is §`%g§)
            {
               _loc11_.x = _loc11_.y = 5;
               _loc20_ = §<$c§.§8&E§(_loc10_,_loc2_.getRace());
               _loc21_ = _loc3_[_loc7_] is §`%g§ ? _loc20_ as §;#_§ : null;
               _loc22_ = _loc3_[_loc7_] is §]$X§ ? _loc20_ as §=?§ : null;
               this.icons[_loc7_].setItem(_loc20_);
               this.§2#c§[_loc7_].setVisible(Boolean(_loc22_) && _loc22_.isTemporalItem());
               if(!_loc22_)
               {
               }
               if(Boolean(_loc21_) && !_loc21_.getInfinite())
               {
                  _loc12_.visible = true;
                  _loc12_.text = "x" + §`%g§(_loc3_[_loc7_]).getCount().toString();
               }
               if(_loc13_)
               {
                  if(Boolean(_loc21_) && Boolean(_loc21_.getInfinite()) || Boolean(_loc22_) && Boolean(!_loc22_.isTemporalItem()))
                  {
                     _loc4_ += _loc20_.getRealPrice() * (_loc21_ ? _loc21_.getMaxLevel() : 1);
                     _loc5_++;
                  }
               }
               else if(_loc21_)
               {
                  if(_loc21_.isComplex())
                  {
                     _loc23_ = _loc2_.§3%^§().§8&E§(_loc10_);
                     if((Boolean(_loc23_)) && !_loc23_.§8"I§())
                     {
                        _loc4_ += _loc20_.getRealPrice() * _loc23_.getLevel();
                        _loc5_++;
                        _loc6_ = true;
                     }
                  }
               }
            }
            §'$a§("items.item" + _loc7_ + ".exist").visible = _loc13_;
            §'$a§("items.item" + _loc7_ + ".shadow").visible = _loc9_ is §%&G§;
            _loc7_++;
         }
         this.§%!"§(_loc3_);
         this.compensation.setValue(_loc5_ < _loc3_.length || _loc6_ ? _loc4_ : 0);
         if(this.§ &§)
         {
            _loc24_ = Math.ceil(_loc8_ / this.§8#M§);
            this.compensation.y = getChildByName("items").y + _loc24_ * this.§7%x§;
            if(requirements)
            {
               requirements.y = this.compensation.y + (this.compensation.isVisible() ? this.compensation.height : 0);
            }
            if(Boolean(this.§^$h§ && this.§^$h§.visible) && Boolean(_loc4_ > 0) && _loc3_.length > §3&,§ - § #n§)
            {
               this.§^$h§.visible = getChildByName("backSale").visible = false;
            }
         }
      }
      
      private function §%!"§(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc6_:MovieClip = null;
         _loc2_ = int(param1.length);
         var _loc3_:uint = _loc2_ <= this.§8#M§ ? uint(_loc2_) : uint(_loc2_ * 0.5 + (_loc2_ % 2 == 0 ? 0 : 1));
         var _loc4_:int = this.§7%x§ * this.§8#M§;
         var _loc5_:Number = Math.ceil(_loc2_ / this.§8#M§);
         var _loc7_:int = 0;
         while(_loc7_ < _loc2_)
         {
            _loc6_ = §'$a§("items.item" + _loc7_);
            _loc6_.visible = true;
            _loc6_.x = this.§6%d§[_loc7_].x;
            _loc6_.y = this.§6%d§[_loc7_].y;
            if(this.§ &§ && _loc5_ > 2)
            {
               _loc6_.x = _loc7_ % (§3&,§ / § #n§) * this.§7%x§;
            }
            else
            {
               _loc6_.y = 0;
               if(_loc2_ <= this.§8#M§)
               {
                  _loc6_.x = (_loc4_ - _loc2_ * this.§7%x§) * 0.5 + _loc7_ * this.§7%x§ + (this.§ &§ ? 0 : 20);
               }
               else if(_loc7_ < _loc3_)
               {
                  _loc6_.x = (_loc4_ - _loc3_ * this.§7%x§) * 0.5 + _loc7_ * this.§7%x§;
               }
               else
               {
                  _loc6_.x = (_loc4_ - (_loc2_ - _loc3_) * this.§7%x§) * 0.5 + (_loc7_ - _loc3_) * this.§7%x§;
                  _loc6_.y = this.§7%x§;
               }
            }
            _loc7_++;
         }
      }
      
      public function §^&B§() : §@$K§
      {
         return requirements;
      }
   }
}

