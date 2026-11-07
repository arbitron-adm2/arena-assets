package §@!N§
{
   import § !8§.§`!d§;
   import § #9§.§"$t§;
   import § $q§.§<"]§;
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#5§.§!&"§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §&"c§.§!!q§;
   import §&&6§.§+"§;
   import §'!Z§.§2!%§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%o§.*;
   import §-"N§.§+#R§;
   import §-%B§.§-"o§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.§1&6§;
   import §0&F§.§0$_§;
   import §02§.§<%[§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §3#T§.*;
   import §4$b§.§6!G§;
   import §5#`§.§%&5§;
   import §7!B§.§&"T§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#a§.§>!o§;
   import §9%W§.§&!P§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=1§.*;
   import §=7§.§?%4§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?o§.§?!x§;
   import §@!i§.§"-§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §[$<§.§>"9§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import config.achievements.§`&<§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §4"0§
   {
      
      public static var §9&"§:String = "";
      
      public static const §]#§:String = "vk";
      
      public static const §0#z§:String = "ok";
      
      public static const §@B§:String = "fb";
      
      public static const §@#R§:String = "mm";
      
      public static const §8&%§:Array = [§]#§,§0#z§,§@B§,§@#R§];
      
      public static const §]%?§:String = "borderLight";
      
      public static const §`a§:String = "borderDark";
      
      public static const §8&6§:String = "";
      
      public function §4"0§()
      {
         super();
      }
      
      public static function §2%i§(param1:SimpleButton, param2:String, param3:String) : void
      {
         var overState:DisplayObjectContainer;
         var downState:DisplayObjectContainer;
         var button:SimpleButton = param1;
         var newObjectName:String = param2;
         var path:String = param3;
         var replaceObjectOnState:Function = function(param1:DisplayObjectContainer, param2:String, param3:String):void
         {
            var _loc4_:DisplayObject = null;
            var _loc5_:DisplayObject = null;
            _loc4_ = param1.getChildByName(param3);
            param1.removeChild(_loc4_);
            _loc5_ = §6#A§.§!&6§(param2);
            _loc5_.x = _loc4_.x;
            _loc5_.y = _loc4_.y;
            _loc5_.name = _loc4_.name;
            param1.addChild(_loc5_);
         };
         var upState:DisplayObjectContainer = DisplayObjectContainer(button.upState);
         replaceObjectOnState(upState,newObjectName,path);
         overState = DisplayObjectContainer(button.overState);
         replaceObjectOnState(overState,newObjectName,path);
         downState = DisplayObjectContainer(button.downState);
         replaceObjectOnState(downState,newObjectName,path);
      }
      
      public static function §>&F§(param1:SimpleButton, param2:TextFormat, param3:String = null) : void
      {
         §;%o§(param1,"text",param3,param2);
      }
      
      public static function §;%o§(param1:SimpleButton, param2:String, param3:String, param4:TextFormat = null) : void
      {
         §3!s§(param1.upState as DisplayObjectContainer,param2,param3,param4);
         §3!s§(param1.overState as DisplayObjectContainer,param2,param3,param4);
         §3!s§(param1.downState as DisplayObjectContainer,param2,param3,param4);
      }
      
      public static function §3!s§(param1:DisplayObjectContainer, param2:String, param3:String, param4:TextFormat = null) : void
      {
         var _loc5_:TextField = param1.getChildByName(param2) as TextField;
         if(param4)
         {
            §&$9§.§>&F§(_loc5_,param4,param3);
         }
         else
         {
            _loc5_.text = param3;
         }
      }
      
      public static function §2!,§(param1:§?%>§, param2:String, param3:String, param4:String = "", param5:TextFormat = null) : void
      {
         var _loc7_:DisplayObjectContainer = null;
         var _loc6_:SimpleButton = param1.simpleButton;
         if(_loc6_.upState)
         {
            _loc7_ = _loc6_.upState as DisplayObjectContainer;
            §1!F§(_loc7_,param2,param3,param4,param5);
         }
         if(_loc6_.overState)
         {
            _loc7_ = _loc6_.overState as DisplayObjectContainer;
            §1!F§(_loc7_,param2,param3,param4,param5);
         }
         if(_loc6_.downState)
         {
            _loc7_ = _loc6_.downState as DisplayObjectContainer;
            §1!F§(_loc7_,param2,param3,param4,param5);
         }
      }
      
      public static function §1!F§(param1:DisplayObjectContainer, param2:String, param3:String, param4:String = "", param5:TextFormat = null) : void
      {
         var _loc7_:DisplayObjectContainer = null;
         var _loc6_:TextField = getChildByNameFromCont(param1,param2) as TextField;
         if(!_loc6_)
         {
            if(param4 != "")
            {
               _loc7_ = getChildByNameFromCont(param1,param4) as DisplayObjectContainer;
               if((Boolean(_loc7_)) && _loc7_.numChildren > 0)
               {
                  _loc6_ = getChildByNameFromCont(_loc7_,param2) as TextField;
               }
            }
         }
         if(_loc6_)
         {
            if(param5)
            {
               §&$9§.§>&F§(_loc6_,param5,param3);
            }
            else
            {
               _loc6_.text = param3;
            }
            if(_loc6_.multiline && _loc6_.numLines > 1)
            {
            }
            _loc6_.visible = param3 != "";
         }
      }
      
      public static function §@"T§(param1:§?%>§, param2:String = "text", param3:String = "") : void
      {
         var _loc5_:DisplayObjectContainer = null;
         var _loc4_:SimpleButton = param1.simpleButton;
         if(_loc4_.upState)
         {
            _loc5_ = _loc4_.upState as DisplayObjectContainer;
            §5%o§(_loc5_,param2,param3);
         }
         if(_loc4_.overState)
         {
            _loc5_ = _loc4_.overState as DisplayObjectContainer;
            §5%o§(_loc5_,param2,param3);
         }
         if(_loc4_.downState)
         {
            _loc5_ = _loc4_.downState as DisplayObjectContainer;
            §5%o§(_loc5_,param2,param3);
         }
      }
      
      public static function §5%o§(param1:DisplayObjectContainer, param2:String = "text", param3:String = "") : void
      {
         var _loc7_:DisplayObjectContainer = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:uint = 0;
         var _loc11_:uint = 0;
         var _loc4_:TextField = getChildByNameFromCont(param1,param2) as TextField;
         var _loc5_:DisplayObject = param1.getChildByName("icon");
         var _loc6_:uint = param1.width * 0.5;
         if(!_loc4_ && param3 != "")
         {
            _loc7_ = getChildByNameFromCont(param1,param3) as DisplayObjectContainer;
            if(_loc7_)
            {
               _loc4_ = getChildByNameFromCont(_loc7_,param2) as TextField;
               if(!_loc5_)
               {
                  _loc5_ = _loc7_.getChildByName("icon");
               }
               _loc6_ = _loc7_.width * 0.5;
            }
         }
         if(_loc4_)
         {
            _loc8_ = _loc4_.text;
            _loc4_.autoSize = TextFieldAutoSize.LEFT;
            _loc4_.text = _loc8_;
            if(_loc5_)
            {
               _loc9_ = 5;
               _loc10_ = _loc5_.width + _loc4_.width;
               _loc11_ = _loc10_ * 0.5;
               _loc5_.x = _loc6_ - _loc11_ - _loc9_;
               _loc4_.x = _loc5_.x + _loc5_.width + _loc9_;
            }
         }
      }
      
      public static function §;#f§(param1:§?%>§, param2:String = "text", param3:String = "price", param4:String = "") : void
      {
         var _loc6_:DisplayObjectContainer = null;
         var _loc5_:SimpleButton = param1.simpleButton;
         if(_loc5_.upState)
         {
            _loc6_ = _loc5_.upState as DisplayObjectContainer;
            §#D§(_loc6_,param2,param3,param4);
         }
         if(_loc5_.overState)
         {
            _loc6_ = _loc5_.overState as DisplayObjectContainer;
            §#D§(_loc6_,param2,param3,param4);
         }
         if(_loc5_.downState)
         {
            _loc6_ = _loc5_.downState as DisplayObjectContainer;
            §#D§(_loc6_,param2,param3,param4);
         }
      }
      
      public static function §#D§(param1:DisplayObjectContainer, param2:String = "text", param3:String = "price", param4:String = "") : void
      {
         var _loc9_:DisplayObjectContainer = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:int = 0;
         var _loc13_:uint = 0;
         var _loc14_:uint = 0;
         var _loc5_:TextField = getChildByNameFromCont(param1,param2) as TextField;
         var _loc6_:TextField = getChildByNameFromCont(param1,param3) as TextField;
         var _loc7_:DisplayObject = param1.getChildByName("icon");
         var _loc8_:uint = param1.width * 0.5;
         if(!_loc5_ && !_loc6_ && param4 != "")
         {
            _loc9_ = getChildByNameFromCont(param1,param4) as DisplayObjectContainer;
            if(_loc9_)
            {
               _loc5_ = getChildByNameFromCont(_loc9_,param2) as TextField;
               _loc6_ = getChildByNameFromCont(_loc9_,param3) as TextField;
               if(!_loc7_)
               {
                  _loc7_ = _loc9_.getChildByName("icon");
               }
               _loc8_ = _loc9_.width * 0.5;
            }
         }
         if(Boolean(_loc5_) && Boolean(_loc6_))
         {
            _loc10_ = _loc5_.text;
            _loc11_ = _loc6_.text;
            _loc5_.autoSize = TextFieldAutoSize.LEFT;
            _loc6_.autoSize = TextFieldAutoSize.RIGHT;
            _loc5_.text = _loc10_;
            _loc6_.text = _loc11_;
            if(_loc7_)
            {
               _loc12_ = 5;
               _loc13_ = _loc7_.width + _loc5_.width + _loc6_.width + _loc12_ * 2;
               _loc14_ = _loc13_ * 0.5;
               _loc5_.x = _loc8_ - _loc14_;
               _loc6_.x = _loc5_.x + _loc5_.width + _loc12_;
               _loc7_.x = _loc6_.x + _loc6_.width + _loc12_;
            }
         }
      }
      
      public static function §[#b§(param1:§?%>§, param2:String = "", param3:String = "") : Array
      {
         var button:§?%>§ = param1;
         var childName:String = param2;
         var subcontName:String = param3;
         var getChildFromCont:Function = function(param1:DisplayObjectContainer, param2:String, param3:String, param4:Array):void
         {
            var _loc6_:DisplayObjectContainer = null;
            var _loc5_:DisplayObject = getChildByNameFromCont(param1,param2);
            if(!_loc5_)
            {
               _loc6_ = getChildByNameFromCont(param1,param3) as DisplayObjectContainer;
               if(_loc6_)
               {
                  _loc5_ = getChildByNameFromCont(_loc6_,param2);
               }
            }
            if(_loc5_)
            {
               param4[param4.length] = _loc5_;
               _loc5_ = null;
            }
         };
         var simple:SimpleButton = button.simpleButton;
         var childs:Array = [];
         if(simple.upState)
         {
            getChildFromCont(simple.upState as DisplayObjectContainer,childName,subcontName,childs);
         }
         if(simple.overState)
         {
            getChildFromCont(simple.overState as DisplayObjectContainer,childName,subcontName,childs);
         }
         if(simple.downState)
         {
            getChildFromCont(simple.downState as DisplayObjectContainer,childName,subcontName,childs);
         }
         return childs;
      }
      
      public static function §@F§(param1:§?%>§, param2:String = "", param3:String = "", param4:Boolean = true) : void
      {
         var _loc5_:Array = §[#b§(param1,param2,param3);
         var _loc6_:int = 0;
         var _loc7_:int = int(_loc5_.length);
         while(_loc6_ < _loc7_)
         {
            if(_loc5_[_loc6_])
            {
               _loc5_[_loc6_].visible = param4;
            }
            _loc6_++;
         }
      }
      
      public static function getChildByNameFromCont(param1:DisplayObjectContainer, param2:String = "") : DisplayObject
      {
         var _loc3_:DisplayObject = null;
         var _loc5_:* = undefined;
         var _loc6_:SimpleButton = null;
         var _loc7_:Sprite = null;
         §9&"§ += "-";
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_.name == param2)
            {
               _loc3_ = _loc5_;
               break;
            }
            if(_loc5_ is TextField)
            {
            }
            if(_loc5_ is SimpleButton)
            {
               _loc6_ = SimpleButton(_loc5_);
               if(Boolean(_loc6_.upState) && _loc6_.upState is DisplayObjectContainer)
               {
                  _loc7_ = _loc6_.upState as Sprite;
                  getChildByNameFromCont(_loc7_ as DisplayObjectContainer);
               }
               if(Boolean(_loc6_.overState) && _loc6_.overState is DisplayObjectContainer)
               {
                  _loc7_ = _loc6_.overState as Sprite;
                  getChildByNameFromCont(_loc7_ as DisplayObjectContainer);
               }
               if(Boolean(_loc6_.downState) && _loc6_.downState is DisplayObjectContainer)
               {
                  _loc7_ = _loc6_.downState as Sprite;
                  getChildByNameFromCont(_loc7_ as DisplayObjectContainer);
               }
            }
            if(_loc5_ is DisplayObjectContainer)
            {
               if(_loc5_.numChildren > 0)
               {
                  getChildByNameFromCont(_loc5_ as DisplayObjectContainer);
               }
            }
            _loc4_++;
         }
         §9&"§ = §9&"§.substr(0,§9&"§.length - 1);
         return _loc3_;
      }
      
      public static function §##W§(param1:DisplayObjectContainer, param2:String, param3:String = "borderLight") : DisplayObject
      {
         var _loc9_:DisplayObject = null;
         var _loc4_:DisplayObject = param1.getChildByName(param2);
         _loc4_.parent.removeChild(_loc4_);
         var _loc5_:DisplayObjectContainer = §6#A§.§!&6§(§+"'§.§>%L§) as DisplayObjectContainer;
         _loc5_["borderLight"].visible = param3 == §]%?§;
         _loc5_["borderDark"].visible = param3 == §`a§;
         _loc5_.x = _loc4_.x + _loc4_.width * 0.5 - _loc5_.width * 0.5;
         _loc5_.y = _loc4_.y;
         var _loc6_:String = §]#§;
         switch(§8"%§.§[f§.getType())
         {
            case §7"n§.MM:
               _loc6_ = §@#R§;
               break;
            case §7"n§.OK:
               _loc6_ = §0#z§;
               break;
            case §7"n§.FB:
               _loc6_ = §@B§;
         }
         var _loc7_:int = 0;
         var _loc8_:int = int(§8&%§.length);
         while(_loc7_ < _loc8_)
         {
            if(§8&%§[_loc7_] != _loc6_)
            {
               _loc5_.removeChild(_loc5_[§8&%§[_loc7_]]);
            }
            _loc7_++;
         }
         if(param3 == §8&6§)
         {
            _loc9_ = _loc5_.getChildByName(_loc6_);
            _loc9_.x = _loc9_.y = -2.5;
         }
         param1.addChild(_loc5_);
         return _loc5_.getChildByName(_loc6_);
      }
      
      public static function §0$%§(param1:DisplayObject, param2:UserProfile = null) : §?%>§
      {
         if(param1 is SimpleButton)
         {
            return new §#$w§(SimpleButton(param1),param2);
         }
         if(param1 is MovieClip)
         {
         }
         return null;
      }
      
      public static function §-!S§(param1:DisplayObject) : §?%>§
      {
         if(!(param1 is SimpleButton))
         {
            if(param1 is MovieClip)
            {
               return new §!"$§(MovieClip(param1));
            }
         }
         return null;
      }
      
      public static function §@#u§(param1:Vector.<§?%4§>, param2:Vector.<UserProfile>, param3:Boolean = false) : void
      {
         var _loc6_:UserProfile = null;
         var _loc7_:§6!G§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.length);
         while(_loc4_ < _loc5_)
         {
            if(param1[_loc4_].getProfile())
            {
               param1[_loc4_].§0"b§();
               param1[_loc4_].reset();
               param1[_loc4_].setPressed(false);
            }
            if(param2.length > 0 && param2.length > _loc4_)
            {
               _loc6_ = param2[_loc4_];
               _loc7_ = §"$t§.§!!1§(param1[_loc4_].§-$S§(),_loc6_,param1[_loc4_].§9$q§);
               param1[_loc4_].§]$o§(_loc7_);
               param1[_loc4_].§3%,§(_loc6_);
               param1[_loc4_].§7"i§(_loc6_.§2u§());
               param1[_loc4_].§;"U§(_loc6_.§+!b§());
               param1[_loc4_].setDisabled(false);
            }
            else
            {
               param1[_loc4_].setDisabled(true);
            }
            _loc4_++;
         }
      }
      
      public static function §^%T§(param1:§`&-§, param2:int) : void
      {
         §#%'§(param1.§#!`§(),param2);
      }
      
      public static function §]$u§(param1:§?%>§, param2:int) : void
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc3_:SimpleButton = param1.simpleButton;
         if(_loc3_.upState)
         {
            _loc4_ = _loc3_.upState as DisplayObjectContainer;
            §#%'§(_loc4_,param2);
         }
         if(_loc3_.overState)
         {
            _loc4_ = _loc3_.overState as DisplayObjectContainer;
            §#%'§(_loc4_,param2);
         }
         if(_loc3_.downState)
         {
            _loc4_ = _loc3_.downState as DisplayObjectContainer;
            §#%'§(_loc4_,param2);
         }
      }
      
      public static function §#%'§(param1:DisplayObjectContainer, param2:int) : DisplayObject
      {
         var _loc4_:MovieClip = null;
         var _loc3_:DisplayObject = param1.getChildByName(param1.name + "_FillSpace");
         if(param1.numChildren > 1 && _loc3_ == null)
         {
            _loc4_ = new MovieClip();
            _loc4_.name = param1.name + "_FillSpace";
            _loc4_.graphics.beginFill(16742520,0);
            _loc4_.graphics.drawRect(0,0,param1.width,param1.height + param2);
            _loc4_.graphics.endFill();
            param1.addChildAt(_loc4_,0);
            return _loc4_;
         }
         return _loc3_;
      }
      
      public static function §"$L§(param1:SimpleButton, param2:§&!e§) : void
      {
         §"$e§(param1.upState,param2);
         §"$e§(param1.overState,param2);
         §"$e§(param1.downState,param2);
      }
      
      public static function §"$e§(param1:DisplayObject, param2:§&!e§) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:MovieClip = null;
         var _loc5_:Number = NaN;
         if(param1)
         {
            _loc3_ = param1 as DisplayObjectContainer;
            _loc4_ = §'+§.getMenuIcon(param2);
            if(_loc4_)
            {
            }
            _loc4_.filters = [§2!%§.§`#F§];
            _loc5_ = _loc3_.width * 0.5;
            §`o§.§7!S§(_loc4_,_loc5_,_loc5_);
            _loc3_.addChild(_loc4_);
            §`o§.§0#P§(_loc4_,_loc3_);
         }
      }
      
      public static function §;%Y§(param1:SimpleButton, param2:String) : void
      {
         §2k§(param1.upState,§6#A§.§!&6§(param2));
         §2k§(param1.overState,§6#A§.§!&6§(param2));
         §2k§(param1.downState,§6#A§.§!&6§(param2));
      }
      
      public static function §2k§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         if(param1)
         {
            _loc3_ = param1 as DisplayObjectContainer;
            _loc3_.addChild(param2);
         }
      }
   }
}

