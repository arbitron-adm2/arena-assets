package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §@!i§.§"-§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   
   public class GetPromocodeBonusResultBinarySerializer implements §&"a§
   {
      
      public function GetPromocodeBonusResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10142;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetPromocodeBonusResult = new GetPromocodeBonusResult();
         _loc3_.result = param1.readShort();
         var _loc4_:uint = param1.readUnsignedShort();
         _loc3_.awards = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.awards[_loc5_] = §<!h§.§@%$§(GenericAwardStructure).deserializeStructure(param1,null);
            _loc5_++;
         }
         return _loc3_;
      }
   }
}

