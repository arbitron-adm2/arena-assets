package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §9%W§.§&!P§;
   import §^#[§.§&$2§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   
   public class GetBundlesResultBinarySerializer implements §&"a§
   {
      
      public function GetBundlesResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10116;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc6_:int = 0;
         var _loc3_:GetBundlesResult = new GetBundlesResult();
         _loc3_.bundles = [];
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.readUnsignedShort());
         while(_loc4_ < _loc5_)
         {
            _loc6_ = param1.readShort();
            _loc3_.bundles[_loc4_] = BundleStructure(§<!h§.§@%$§(BundleStructure).deserializeStructure(param1,null));
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

