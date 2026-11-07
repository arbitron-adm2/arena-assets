package ru.pragmatix.wormix.messages.server
{
   import § L§.§`T§;
   import §"#x§.§'"$§;
   import §#",§.*;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §'!Z§.§2!H§;
   import §+$=§.*;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.*;
   import §7$t§.§&!e§;
   import §8$V§.§[#_§;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#o§.§[&7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class ChatMessageEvent
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ILLEGAL_STATE:int = 1;
      
      public static const NOT_ALLOWED:int = 2;
      
      public static const TOO_FAST:int = 3;
      
      public static const RESTRICTED:int = 4;
      
      public static const ILLEGAL_ACTION:int = 5;
      
      public var state:int;
      
      public var message:ChatMessage;
      
      public function ChatMessageEvent()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ChatMessageEvent{ " + " state=" + this.state + " message=" + this.message + " }";
      }
   }
}

