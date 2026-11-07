package ru.pragmatix.wormix.serialization.clans.structures
{
   import § &5§.§=#P§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'"N§.*;
   import §'$Z§.§2#f§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §7$t§.§&!e§;
   import §8$Z§.§9!&§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §]$v§.§]%_§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ClanChatMessageTOBinarySerializer implements §@#&§
   {
      
      public function ClanChatMessageTOBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ClanChatMessageTO = null;
         _loc3_ = new ClanChatMessageTO();
         _loc3_.actionCode = param1.readInt();
         _loc3_.logDate = param1.readInt();
         _loc3_.publisherSocialId = param1.readShort();
         _loc3_.publisherProfileId = param1.readInt();
         _loc3_.publisherName = param1.readUTF();
         _loc3_.memberSocialId = param1.readShort();
         _loc3_.memberProfileId = param1.readInt();
         _loc3_.memberName = param1.readUTF();
         _loc3_.params = param1.readUTF();
         return _loc3_;
      }
   }
}

