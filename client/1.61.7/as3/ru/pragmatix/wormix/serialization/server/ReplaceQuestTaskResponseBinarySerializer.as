package ru.pragmatix.wormix.serialization.server
{
   import § "L§.§1%b§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §7$1§.§;$n§;
   import §<!^§.§'$e§;
   import flash.geom.ColorTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.ReplaceQuestTaskResponse;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class ReplaceQuestTaskResponseBinarySerializer implements §&"a§
   {
      
      public function ReplaceQuestTaskResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return ServerCommands.REPLACE_QUEST_TASK_RESPONSE;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ReplaceQuestTaskResponse = new ReplaceQuestTaskResponse();
         var _loc4_:int = param1.readShort();
         _loc3_.error = _loc4_;
         var _loc5_:int = param1.readShort();
         _loc3_.newTaskId = _loc5_;
         var _loc6_:String = param1.readUTF();
         _loc3_.taskValues = _loc6_;
         var _loc7_:int = param1.readInt();
         _loc3_.replaceMoneyPrice = _loc7_;
         return _loc3_;
      }
   }
}

