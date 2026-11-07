package ru.pragmatix.wormix.serialization.clans.structures
{
   import §"$+§.*;
   import §,"v§.§@#&§;
   import §@!i§.§!m§;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   
   public class ClanTOBinarySerializer implements §@#&§
   {
      
      public function ClanTOBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ClanTO = new ClanTO();
         _loc3_.id = param1.readInt();
         _loc3_.name = param1.readUTF();
         _loc3_.level = param1.readInt();
         _loc3_.size = param1.readInt();
         _loc3_.rating = param1.readInt();
         _loc3_.seasonRating = param1.readInt();
         _loc3_.joinRating = param1.readInt();
         _loc3_.createDate = param1.readInt();
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_.emblem.push(param1.readUnsignedByte());
            _loc5_++;
         }
         _loc3_.clanDescription = param1.readUTF();
         _loc3_.reviewState = param1.readShort();
         _loc3_.topPlace = param1.readInt();
         _loc3_.prevSeasonTopPlace = param1.readInt();
         _loc4_ = param1.readUnsignedShort();
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.members.push(§<!h§.§@%$§(ClanMemberTO).deserializeStructure(param1,null));
            _loc5_++;
         }
         _loc3_.isExitClosed = param1.readBoolean();
         _loc3_.treasury = param1.readInt();
         _loc3_.medalPrice = param1.readByte();
         _loc3_.cashedMedals = param1.readInt();
         return _loc3_;
      }
   }
}

