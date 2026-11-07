package §?$L§
{
   import § #g§.*;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §#"V§.§!&5§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0"L§.*;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§]2§;
   import §2!-§.DamageEvent;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §4u§.ReagentHint;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§7o§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §="z§.*;
   import §?>§.§]!V§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetColiseumRewardResponse;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   
   public class §&$9§
   {
      
      public function §&$9§()
      {
         super();
      }
      
      public static function §<%]§(param1:TextFormat, param2:Array = null) : TextField
      {
         var _loc3_:TextField = new TextField();
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         if(param1)
         {
            _loc3_.defaultTextFormat = param1;
         }
         if(param2)
         {
            _loc3_.filters = param2;
         }
         _loc3_.selectable = false;
         _loc3_.mouseEnabled = false;
         return _loc3_;
      }
      
      public static function §#$V§(param1:String, param2:TextFormat, param3:Array = null) : TextField
      {
         var _loc4_:TextField = §<%]§(param2,param3);
         _loc4_.text = param1;
         return _loc4_;
      }
      
      public static function §@$T§(param1:String, param2:TextFormat, param3:Array = null) : TextField
      {
         var _loc4_:TextField = §<%]§(param2,param3);
         _loc4_.multiline = true;
         _loc4_.htmlText = param1;
         return _loc4_;
      }
      
      public static function §>%5§(param1:DisplayObjectContainer, param2:String, param3:Boolean = true) : TextField
      {
         var _loc4_:TextField = TextField(param1.getChildByName(param2));
         var _loc5_:TextField = new TextField();
         if(param3)
         {
            _loc5_.defaultTextFormat = _loc4_.getTextFormat();
         }
         _loc5_.x = _loc4_.x;
         _loc5_.y = _loc4_.y;
         _loc5_.width = _loc4_.width;
         _loc5_.height = _loc4_.height;
         _loc5_.selectable = true;
         _loc5_.mouseEnabled = true;
         _loc5_.type = TextFieldType.INPUT;
         param1.addChild(_loc5_);
         param1.swapChildren(_loc4_,_loc5_);
         param1.removeChild(_loc4_);
         return _loc5_;
      }
      
      public static function §2!a§(param1:§`&-§, param2:String, param3:String) : TextField
      {
         var _loc4_:TextField = param1.§'%s§(param2);
         § &!§(_loc4_,param3);
         return _loc4_;
      }
      
      public static function § &!§(param1:TextField, param2:String) : void
      {
         §@%O§(param1,param2 + ":");
      }
      
      public static function §[%F§(param1:§`&-§, param2:String, param3:String) : TextField
      {
         var _loc4_:TextField = param1.§'%s§(param2);
         §@%O§(_loc4_,param3);
         return _loc4_;
      }
      
      public static function §@%O§(param1:TextField, param2:String) : void
      {
         param1.htmlText = "<b>" + param2 + "</b>";
      }
      
      public static function §`F§(param1:TextField, param2:String, param3:TextFormat = null) : void
      {
         if(param3)
         {
            §>&F§(param1,param3);
         }
         param1.text = param2 + ":";
      }
      
      public static function §<#§(param1:§`&-§, param2:String, param3:String, param4:TextFormat = null) : TextField
      {
         var _loc5_:TextField = param1.§'%s§(param2);
         §`F§(_loc5_,param3,param4);
         return _loc5_;
      }
      
      public static function §9"b§(param1:DisplayObject, param2:String, param3:String, param4:TextFormat = null) : TextField
      {
         var _loc5_:TextField = DisplayObjectContainer(param1).getChildByName(param2) as TextField;
         §`F§(_loc5_,param3,param4);
         return _loc5_;
      }
      
      public static function §>&F§(param1:TextField, param2:TextFormat, param3:String = null) : void
      {
         param1.embedFonts = true;
         param1.defaultTextFormat = param2;
         if(param3)
         {
            param1.text = param3;
         }
      }
   }
}

