package ru.pragmatix.wormix.serialization.clans.request
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"%H§.*;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §6",§.§[%w§;
   import §9&+§.§>&5§;
   import §<%k§.§`!v§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §^4§.§@#J§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.PostToClanChatRequest;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class PostToClanChatRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function PostToClanChatRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:PostToClanChatRequest = PostToClanChatRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTF(_loc2_.text);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.POST_TO_CHAT_REQUEST;
      }
   }
}

