package ru.pragmatix.wormix.serialization.structures
{
   import §"#x§.§'"$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §3#a§.§-!`§;
   import §5"J§.§"&B§;
   import §<%c§.*;
   import §?$K§.§=z§;
   import §@!N§.§""L§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.BossAchieves;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   
   public class GladiatorUnitStructureBinarySerializer implements §@#&§
   {
      
      public function GladiatorUnitStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:GladiatorUnitStructure = GladiatorUnitStructure(param1);
         param2.writeByte(_loc4_.raceId);
         param2.writeByte(_loc4_.armor);
         param2.writeByte(_loc4_.attack);
         param2.writeShort(_loc4_.hatId);
         param2.writeShort(_loc4_.artifactId);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:GladiatorUnitStructure = new GladiatorUnitStructure();
         _loc3_.raceId = param1.readByte();
         _loc3_.armor = param1.readByte();
         _loc3_.attack = param1.readByte();
         _loc3_.hatId = param1.readShort();
         _loc3_.artifactId = param1.readShort();
         return _loc3_;
      }
   }
}

