package ru.pragmatix.wormix.serialization.structures
{
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9![§.§^§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?"j§.*;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §^"y§.*;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class SelectStuffResultStructureBinarySerializer implements §@#&§
   {
      
      public function SelectStuffResultStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:SelectStuffResultStructure = new SelectStuffResultStructure();
         _loc3_.profileId = param1.readInt();
         _loc3_.resultHat = param1.readShort();
         _loc3_.hatId = param1.readShort();
         _loc3_.resultArtifact = param1.readShort();
         _loc3_.artifactId = param1.readShort();
         return _loc3_;
      }
   }
}

