package ru.pragmatix.wormix.messages.server
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §&#E§.§;"v§;
   import §&#h§.§?B§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-@§.*;
   import §2"L§.§,'§;
   import §4$b§.§6!G§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class BuySelectRaceResponse
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public var result:int;
      
      public var costs:Array;
      
      public var race:int;
      
      public var skin:int;
      
      public var isSecure:Boolean;
      
      public var sessionKey:String;
      
      public function BuySelectRaceResponse()
      {
         super();
      }
   }
}

