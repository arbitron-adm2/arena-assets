package ru.pragmatix.wormix.serialization.server
{
   import § !P§.*;
   import §"%H§.§'%u§;
   import §#k§.§9$v§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0$_§;
   import §65§.§5#A§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.ResetParametersResult;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   
   public class ResetParametersResultBinarySerializer implements §&"a§
   {
      
      public function ResetParametersResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10016;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ResetParametersResult = ResetParametersResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.result);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ResetParametersResult = new ResetParametersResult();
         _loc3_.result = param1.readShort();
         return _loc3_;
      }
   }
}

