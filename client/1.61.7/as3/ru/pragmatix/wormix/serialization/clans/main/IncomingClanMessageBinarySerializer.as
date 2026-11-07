package ru.pragmatix.wormix.serialization.clans.main
{
   import §##j§.*;
   import §'&"§.§,&3§;
   import §'&"§.§8$D§;
   import §'&"§.§=!x§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import config.§^"2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.physics.§<#`§;
   
   public class IncomingClanMessageBinarySerializer implements §&"a§
   {
      
      public function IncomingClanMessageBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:IncomingClanMessage = new IncomingClanMessage();
         param1.readUnsignedShort();
         _loc3_.message = ClanChatMessageTO(§<!h§.§@%$§(ClanChatMessageTO).deserializeStructure(param1,null));
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.CHAT_MESSAGE_EVENT;
      }
   }
}

