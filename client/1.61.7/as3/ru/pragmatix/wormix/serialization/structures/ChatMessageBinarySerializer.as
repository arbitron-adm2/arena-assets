package ru.pragmatix.wormix.serialization.structures
{
   import §!!i§.§@&&§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&#E§.§4##§;
   import §,"v§.§@#&§;
   import §0&F§.UpgradeEvent;
   import §2"L§.§^$y§;
   import §2"v§.§@G§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class ChatMessageBinarySerializer implements §@#&§
   {
      
      public function ChatMessageBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:ChatMessage = new ChatMessage();
         _loc4_.id = _loc3_.readUnsignedInt();
         _loc4_.action = _loc3_.readShort();
         _loc4_.logDate = _loc3_.readInt();
         _loc4_.socialId = _loc3_.readByte();
         _loc4_.profileId = _loc3_.readInt();
         _loc4_.profileStringId = _loc3_.readUTF() || _loc4_.profileId.toString();
         _loc4_.profileName = _loc3_.readUTF();
         _loc4_.message = _loc3_.readUTF();
         _loc4_.params = _loc3_.readUTF();
         return _loc4_;
      }
   }
}

