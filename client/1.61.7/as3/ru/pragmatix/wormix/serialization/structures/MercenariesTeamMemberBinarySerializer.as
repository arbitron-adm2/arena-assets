package ru.pragmatix.wormix.serialization.structures
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class MercenariesTeamMemberBinarySerializer implements §@#&§
   {
      
      public function MercenariesTeamMemberBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:MercenariesTeamMember = new MercenariesTeamMember();
         _loc3_.id = param1.readByte();
         _loc3_.level = param1.readByte();
         _loc3_.race = param1.readByte();
         _loc3_.armor = param1.readByte();
         _loc3_.attack = param1.readByte();
         _loc3_.hat = param1.readShort();
         _loc3_.art = param1.readShort();
         _loc3_.skin = param1.readShort();
         _loc3_.active = Boolean(param1.readByte());
         _loc3_.backpack = [];
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.readUnsignedShort());
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.backpack[_loc4_] = §<!h§.§@%$§(BackpackItemShortStructure).deserializeStructure(param1,null);
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

