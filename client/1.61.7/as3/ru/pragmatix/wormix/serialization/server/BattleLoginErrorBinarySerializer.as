package ru.pragmatix.wormix.serialization.server
{
   import §+$=§.§6#A§;
   import §+%S§.§9"i§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginErrorType;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BattleLoginErrorBinarySerializer implements §&"a§
   {
      
      public function BattleLoginErrorBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 2004;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         §[&G§.§5%b§("deserialize BattleLoginError");
         var _loc3_:BattleLoginError = new BattleLoginError();
         _loc3_.error = BattleLoginErrorType.valueOf(param1.readShort());
         return _loc3_;
      }
   }
}

