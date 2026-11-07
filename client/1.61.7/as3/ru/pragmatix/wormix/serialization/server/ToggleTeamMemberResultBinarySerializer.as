package ru.pragmatix.wormix.serialization.server
{
   import §%"1§.§@%;§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §3#T§.§;#Q§;
   import §7!B§.§&"T§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §[$<§.§"#"§;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class ToggleTeamMemberResultBinarySerializer implements §&"a§
   {
      
      public function ToggleTeamMemberResultBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ToggleTeamMemberResult = new ToggleTeamMemberResult();
         _loc3_.result = param1.readShort();
         _loc3_.teamMemberId = param1.readInt();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 10106;
      }
   }
}

