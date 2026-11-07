package ru.pragmatix.wormix.messages.server
{
   import § !8§.§`!d§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §#"V§.§<"4§;
   import §&!m§.§-$6§;
   import §,$J§.§0%G§;
   import §2o§.§]#@§;
   import §4$b§.§6!G§;
   import §6",§.§[%w§;
   import §7$t§.§&!e§;
   import §8#o§.§1@§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §["3§.§-%q§;
   import §["3§.§?%Q§;
   import §["3§.§@%^§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.social.Social;
   
   public class SendWipeConfirmCodeResponse
   {
      
      public static const OK:int = 0;
      
      public static const DAILY_LIMIT_EXCEEDED:int = 1;
      
      public static const TODAY_ALREADY_WIPED:int = 2;
      
      public static const WRONG_MOBILE_NUMBER:int = 3;
      
      public static const ERROR:int = 3;
      
      public var result:int;
      
      public function SendWipeConfirmCodeResponse()
      {
         super();
      }
   }
}

