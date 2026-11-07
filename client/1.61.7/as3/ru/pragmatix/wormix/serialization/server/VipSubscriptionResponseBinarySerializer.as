package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.client.OpenChest;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.server.VipSubscriptionResponse;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class VipSubscriptionResponseBinarySerializer implements §&"a§
   {
      
      public function VipSubscriptionResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10140;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:VipSubscriptionResponse = new VipSubscriptionResponse();
         _loc3_.subscription.id = param1.readInt();
         _loc3_.subscription.§9f§ = param1.readUTF();
         _loc3_.subscription.status = param1.readShort();
         _loc3_.subscription.price = param1.readInt();
         _loc3_.subscription.period = param1.readInt();
         _loc3_.subscription.§+%b§ = param1.readInt();
         _loc3_.subscription.§7%$§ = param1.readInt();
         _loc3_.subscription.§0Y§ = Boolean(param1.readByte());
         _loc3_.subscription.§`#%§ = param1.readShort();
         return _loc3_;
      }
   }
}

