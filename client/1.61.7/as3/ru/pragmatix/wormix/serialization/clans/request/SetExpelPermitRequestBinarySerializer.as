package ru.pragmatix.wormix.serialization.clans.request
{
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#U§.§'#w§;
   import §2#x§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §9%W§.§&!P§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §]^§.§-$T§;
   import flash.display.DisplayObject;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.SetExpelPermitRequest;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   
   public class SetExpelPermitRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function SetExpelPermitRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:SetExpelPermitRequest = SetExpelPermitRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeShort(_loc2_.socialId);
         _loc3_.writeInt(_loc2_.profileId);
         _loc3_.writeBoolean(_loc2_.value);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.SET_EXPEL_PERMIT_REQUEST;
      }
   }
}

