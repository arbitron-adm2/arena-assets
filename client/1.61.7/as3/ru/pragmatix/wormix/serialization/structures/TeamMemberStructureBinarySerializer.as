package ru.pragmatix.wormix.serialization.structures
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§@#&§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import config.achievements.§^t§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class TeamMemberStructureBinarySerializer implements §@#&§
   {
      
      public function TeamMemberStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:TeamMemberStructure = TeamMemberStructure(param1);
         param2.writeUnsignedInt(_loc4_.ownerId);
         param2.writeByte(_loc4_.armor);
         param2.writeByte(_loc4_.attack);
         param2.writeByte(_loc4_.level);
         param2.writeInt(_loc4_.experience);
         param2.writeShort(_loc4_.hatId);
         param2.writeByte(_loc4_.raceId);
         param2.writeByte(_loc4_.skin);
         param2.writeShort(_loc4_.artifactId);
         param2.writeUTF(_loc4_.socialOwnerId);
         param2.writeUTF(_loc4_.name);
         param2.writeShort(_loc4_.teamMemberType);
         param2.writeBoolean(_loc4_.isActive);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:TeamMemberStructure = new TeamMemberStructure();
         _loc3_.ownerId = param1.readUnsignedInt();
         _loc3_.armor = param1.readByte();
         _loc3_.attack = param1.readByte();
         _loc3_.level = param1.readByte();
         _loc3_.experience = param1.readInt();
         _loc3_.hatId = param1.readShort();
         _loc3_.raceId = param1.readByte();
         _loc3_.skin = param1.readByte();
         _loc3_.artifactId = param1.readShort();
         var _loc4_:String = param1.readUTF();
         if(!_loc4_)
         {
            _loc3_.socialOwnerId = _loc3_.ownerId.toString();
         }
         else
         {
            _loc3_.socialOwnerId = _loc4_;
         }
         _loc3_.name = param1.readUTF();
         _loc3_.teamMemberType = param1.readShort();
         _loc3_.isActive = param1.readBoolean();
         return _loc3_;
      }
   }
}

