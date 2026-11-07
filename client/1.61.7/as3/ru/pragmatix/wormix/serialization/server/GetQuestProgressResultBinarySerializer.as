package ru.pragmatix.wormix.serialization.server
{
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §@$§.§`&C§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GetQuestProgressResultBinarySerializer implements §&"a§
   {
      
      public function GetQuestProgressResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10117;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetQuestProgressResult = new GetQuestProgressResult();
         _loc3_.questStructures = [];
         var _loc4_:int = param1.readShort();
         _loc3_.error = _loc4_;
         var _loc5_:int = 0;
         var _loc6_:int = int(param1.readUnsignedShort());
         while(_loc5_ < _loc6_)
         {
            param1.readShort();
            _loc3_.questStructures[_loc5_] = QuestProgressStructure(§<!h§.§@%$§(QuestProgressStructure).deserializeStructure(param1,null));
            _loc5_++;
         }
         return _loc3_;
      }
   }
}

