package com.greensock.loading.display
{
   import § #m§.§;#^§;
   import § $q§.BagMenu;
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#!5§.§>S§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#%!§.*;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0%z§.§#%x§;
   import §0%z§.§,$h§;
   import §0%z§.§1"6§;
   import §0%z§.§@"q§;
   import §0%z§.§@#S§;
   import §0%z§.AchievTabPage;
   import §3#a§.*;
   import §4#`§.*;
   import §5!b§.§8#W§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §9z§.§>"d§;
   import §<!W§.§7!L§;
   import §<%k§.§`!v§;
   import §=#g§.§!"X§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[" §.§ #a§;
   import §[" §.§3$y§;
   import §[" §.§^"c§;
   import §]#[§.§"!I§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.ConnectIcon;
   import ru.pragmatix.wormix.gui.window.§4W§;
   import ru.pragmatix.wormix.gui.window.WeaponTipsPanel;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class ContentDisplay extends Sprite
   {
      
      protected static var _transformProps:Object = {
         "x":1,
         "y":1,
         "scaleX":1,
         "scaleY":1,
         "rotation":1,
         "alpha":1,
         "visible":true,
         "blendMode":"normal",
         "centerRegistration":false,
         "crop":false,
         "scaleMode":"stretch",
         "hAlign":"center",
         "vAlign":"center"
      };
      
      protected var _scaleMode:String = "stretch";
      
      protected var _fitWidth:Number;
      
      protected var _fitHeight:Number;
      
      protected var _hAlign:String = "center";
      
      public var data:*;
      
      protected var _loader:LoaderItem;
      
      protected var _centerRegistration:Boolean;
      
      protected var _vAlign:String = "center";
      
      protected var _rawContent:DisplayObject;
      
      protected var _cropContainer:Sprite;
      
      public var gcProtect:*;
      
      protected var _bgAlpha:Number = 0;
      
      protected var _bgColor:uint;
      
      protected var _crop:Boolean;
      
      public function ContentDisplay(param1:LoaderItem)
      {
         super();
         this.loader = param1;
      }
      
      public function get scaleMode() : String
      {
         return _scaleMode;
      }
      
      public function get crop() : Boolean
      {
         return _crop;
      }
      
      public function get loader() : LoaderItem
      {
         return _loader;
      }
      
      public function get fitHeight() : Number
      {
         return _fitHeight;
      }
      
      public function get bgColor() : uint
      {
         return _bgColor;
      }
      
      public function dispose(param1:Boolean = true, param2:Boolean = true) : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         this.rawContent = null;
         this.gcProtect = null;
         if(_loader != null)
         {
            if(param1)
            {
               _loader.unload();
            }
            if(param2)
            {
               _loader.dispose(false);
               _loader = null;
            }
         }
      }
      
      public function set scaleMode(param1:String) : void
      {
         if(param1 == "none" && _rawContent != null)
         {
            _rawContent.scaleX = _rawContent.scaleY = 1;
         }
         _scaleMode = param1;
         _update();
      }
      
      public function set crop(param1:Boolean) : void
      {
         _crop = param1;
         _update();
      }
      
      public function set loader(param1:LoaderItem) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         _loader = param1;
         if(_loader == null)
         {
            return;
         }
         if(!_loader.hasOwnProperty("setContentDisplay"))
         {
            throw new Error("Incompatible loader used for a ContentDisplay");
         }
         this.name = _loader.name;
         for(_loc3_ in _transformProps)
         {
            if(_loc3_ in _loader.vars)
            {
               _loc2_ = typeof _transformProps[_loc3_];
               this[_loc3_] = _loc2_ == "number" ? Number(_loader.vars[_loc3_]) : (_loc2_ == "string" ? String(_loader.vars[_loc3_]) : Boolean(_loader.vars[_loc3_]));
            }
         }
         _bgColor = uint(_loader.vars.bgColor);
         _bgAlpha = "bgAlpha" in _loader.vars ? Number(_loader.vars.bgAlpha) : ("bgColor" in _loader.vars ? 1 : 0);
         _fitWidth = "fitWidth" in _loader.vars ? Number(_loader.vars.fitWidth) : Number(_loader.vars.width);
         _fitHeight = "fitHeight" in _loader.vars ? Number(_loader.vars.fitHeight) : Number(_loader.vars.height);
         _update();
         if(_loader.vars.container is DisplayObjectContainer)
         {
            (_loader.vars.container as DisplayObjectContainer).addChild(this);
         }
         if(_loader.content != this)
         {
            (_loader as Object).setContentDisplay(this);
         }
         this.rawContent = (_loader as Object).rawContent;
      }
      
      public function get centerRegistration() : Boolean
      {
         return _centerRegistration;
      }
      
      public function get vAlign() : String
      {
         return _vAlign;
      }
      
      public function set fitHeight(param1:Number) : void
      {
         _fitHeight = param1;
         _update();
      }
      
      public function get rawContent() : *
      {
         return _rawContent;
      }
      
      public function set bgAlpha(param1:Number) : void
      {
         _bgAlpha = param1;
         _update();
      }
      
      public function get fitWidth() : Number
      {
         return _fitWidth;
      }
      
      public function get bgAlpha() : Number
      {
         return _bgAlpha;
      }
      
      public function set bgColor(param1:uint) : void
      {
         _bgColor = param1;
         _update();
      }
      
      public function set centerRegistration(param1:Boolean) : void
      {
         _centerRegistration = param1;
         _update();
      }
      
      public function set rawContent(param1:*) : void
      {
         if(_rawContent != null && _rawContent != param1)
         {
            if(_rawContent.parent == this)
            {
               removeChild(_rawContent);
            }
            else if(_rawContent.parent == _cropContainer)
            {
               _cropContainer.removeChild(_rawContent);
               removeChild(_cropContainer);
               _cropContainer = null;
            }
         }
         _rawContent = param1 as DisplayObject;
         if(_rawContent == null)
         {
            return;
         }
         addChildAt(_rawContent as DisplayObject,0);
         _update();
      }
      
      public function set vAlign(param1:String) : void
      {
         _vAlign = param1;
         _update();
      }
      
      protected function _update() : void
      {
         var _loc6_:Matrix = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc1_:Number = _centerRegistration && _fitWidth > 0 ? _fitWidth / -2 : 0;
         var _loc2_:Number = _centerRegistration && _fitHeight > 0 ? _fitHeight / -2 : 0;
         graphics.clear();
         if(_fitWidth > 0 && _fitHeight > 0)
         {
            graphics.beginFill(_bgColor,_bgAlpha);
            graphics.drawRect(_loc1_,_loc2_,_fitWidth,_fitHeight);
            graphics.endFill();
         }
         if(_rawContent == null)
         {
            return;
         }
         var _loc3_:DisplayObject = _rawContent;
         var _loc4_:Number = _loc3_.width;
         var _loc5_:Number = _loc3_.height;
         if(_loader.hasOwnProperty("getClass") && !_loader.scriptAccessDenied)
         {
            _loc6_ = _loc3_.transform.matrix;
            _loc4_ = _loc3_.loaderInfo.width * Math.abs(_loc6_.a) + _loc3_.loaderInfo.height * Math.abs(_loc6_.b);
            _loc5_ = _loc3_.loaderInfo.width * Math.abs(_loc6_.c) + _loc3_.loaderInfo.height * Math.abs(_loc6_.d);
         }
         if(_fitWidth > 0 && _fitHeight > 0)
         {
            _loc7_ = _fitWidth;
            _loc8_ = _fitHeight;
            _loc9_ = _loc7_ - _loc4_;
            _loc10_ = _loc8_ - _loc5_;
            if(_scaleMode != "none")
            {
               _loc11_ = _loc7_ / _loc8_;
               _loc12_ = _loc4_ / _loc5_;
               if(_loc12_ < _loc11_ && _scaleMode == "proportionalInside" || _loc12_ > _loc11_ && _scaleMode == "proportionalOutside")
               {
                  _loc7_ = _loc8_ * _loc12_;
               }
               if(_loc12_ > _loc11_ && _scaleMode == "proportionalInside" || _loc12_ < _loc11_ && _scaleMode == "proportionalOutside")
               {
                  _loc8_ = _loc7_ / _loc12_;
               }
               if(_scaleMode != "heightOnly")
               {
                  _loc3_.width *= _loc7_ / _loc4_;
                  _loc9_ = _fitWidth - _loc7_;
               }
               if(_scaleMode != "widthOnly")
               {
                  _loc3_.height *= _loc8_ / _loc5_;
                  _loc10_ = _fitHeight - _loc8_;
               }
            }
            if(_hAlign == "left")
            {
               _loc9_ = 0;
            }
            else if(_hAlign != "right")
            {
               _loc9_ /= 2;
            }
            if(_vAlign == "top")
            {
               _loc10_ = 0;
            }
            else if(_vAlign != "bottom")
            {
               _loc10_ /= 2;
            }
            if(_crop)
            {
               if(_cropContainer == null || _loc3_.parent != _cropContainer)
               {
                  _cropContainer = new Sprite();
                  this.addChildAt(_cropContainer,this.getChildIndex(_loc3_));
                  _cropContainer.addChild(_loc3_);
               }
               _cropContainer.x = _loc1_;
               _cropContainer.y = _loc2_;
               _cropContainer.scrollRect = new Rectangle(0,0,_fitWidth,_fitHeight);
               _loc3_.x = _loc9_;
               _loc3_.y = _loc10_;
            }
            else
            {
               if(_cropContainer != null)
               {
                  this.addChildAt(_loc3_,this.getChildIndex(_cropContainer));
                  _cropContainer = null;
               }
               _loc3_.x = _loc1_ + _loc9_;
               _loc3_.y = _loc2_ + _loc10_;
            }
         }
         else
         {
            _loc3_.x = _centerRegistration ? _loc4_ / -2 : 0;
            _loc3_.y = _centerRegistration ? _loc5_ / -2 : 0;
         }
      }
      
      public function set fitWidth(param1:Number) : void
      {
         _fitWidth = param1;
         _update();
      }
      
      public function set hAlign(param1:String) : void
      {
         _hAlign = param1;
         _update();
      }
      
      public function get hAlign() : String
      {
         return _hAlign;
      }
   }
}

