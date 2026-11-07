package ru.pragmatix.wormix.messages.client
{
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §1&-§.§-#B§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §?#g§.§-!k§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import flash.display.BitmapData;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class PostToChat
   {
      
      public var profileName:String;
      
      public var message:String;
      
      public var action:int;
      
      public function PostToChat(param1:String = "", param2:String = "", param3:int = 0)
      {
         super();
         this.action = param3;
         this.profileName = param1 || "";
         this.message = param2;
      }
   }
}

