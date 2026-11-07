package ru.pragmatix.wormix.serialization.client
{
   import § !P§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§#$!§;
   import §##j§.§7,§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §+&<§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §0%z§.§&%&§;
   import §;!J§.*;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.client.LeaveFromChat;
   import ru.pragmatix.wormix.utils.§7&5§;
   import vk.*;
   
   public class LeaveFromChatBinarySerializer implements §&"a§
   {
      
      public function LeaveFromChatBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 303;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:LeaveFromChat = LeaveFromChat(param1);
         var _temp_1:* = new §^!V§();
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return new LeaveFromChat();
      }
   }
}

