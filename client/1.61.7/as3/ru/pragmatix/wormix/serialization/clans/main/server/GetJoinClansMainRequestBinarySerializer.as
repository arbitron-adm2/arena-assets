package ru.pragmatix.wormix.serialization.clans.main.server
{
   import § !P§.*;
   import §>%S§.§^!V§;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   
   public class GetJoinClansMainRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function GetJoinClansMainRequestBinarySerializer()
      {
         super();
      }
      
      override public function getCommandId() : uint
      {
         return 98;
      }
   }
}

