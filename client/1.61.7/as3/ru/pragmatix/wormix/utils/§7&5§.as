package ru.pragmatix.wormix.utils
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"$+§.§^$`§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §2!-§.HpChangeEvent;
   import §2"L§.§,'§;
   import §2#i§.§!$A§;
   import §4'§.§^"p§;
   import §6"'§.§&"3§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §?"[§.*;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^"y§.*;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7&5§
   {
      
      public static const §%$u§:RegExp = /<[^>]*>/gi;
      
      public function §7&5§()
      {
         super();
      }
      
      public static function format(param1:String, param2:Object) : String
      {
         var _loc3_:String = null;
         for(_loc3_ in param2)
         {
            param1 = param1.split("{" + _loc3_ + "}").join(param2[_loc3_]);
         }
         return param1;
      }
      
      public static function §4#z§(param1:Number, param2:Number, param3:String = "", param4:TextFormat = null, param5:DisplayObjectContainer = null) : TextField
      {
         var _loc6_:TextField = new TextField();
         if(param4)
         {
            _loc6_.defaultTextFormat = param4;
         }
         _loc6_.selectable = false;
         _loc6_.multiline = true;
         _loc6_.wordWrap = true;
         _loc6_.autoSize = TextFieldAutoSize.LEFT;
         _loc6_.x = param1;
         _loc6_.y = param2;
         if(param3 != "")
         {
            _loc6_.htmlText = param3;
         }
         if(param5)
         {
            param5.addChild(_loc6_);
         }
         return _loc6_;
      }
      
      public static function §>&<§(param1:TextField, param2:String = null) : void
      {
         §&$9§.§>&F§(param1,§"-§.§+$m§,param2);
      }
      
      public static function §?$k§(param1:TextField, param2:String = null) : void
      {
         §&$9§.§>&F§(param1,§"-§.§6"j§,param2);
      }
   }
}

