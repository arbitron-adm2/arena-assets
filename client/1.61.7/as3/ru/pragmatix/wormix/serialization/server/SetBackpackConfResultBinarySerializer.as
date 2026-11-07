package ru.pragmatix.wormix.serialization.server
{
   import § %f§.GasGrenade;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §#k§.§9$v§;
   import §&!?§.§7&>§;
   import §&#h§.§-"F§;
   import §'"N§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §-8§.GasCloud;
   import §0%[§.Cookie;
   import §2#i§.§+%z§;
   import §7$t§.§&!e§;
   import §8$V§.*;
   import §=!p§.§'%#§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.SetBackpackConfResult;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class SetBackpackConfResultBinarySerializer implements §&"a§
   {
      
      public function SetBackpackConfResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10129;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:SetBackpackConfResult = new SetBackpackConfResult();
         _loc4_.result = _loc3_.readShort();
         var _loc5_:§@#&§ = §<!h§.§@%$§(BackpackConfStructure);
         var _loc6_:int = _loc3_.readShort();
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc3_.readShort();
            _loc4_.configs[_loc7_] = _loc5_.deserializeStructure(_loc3_,null);
            _loc7_++;
         }
         _loc4_.activeConfig = _loc3_.readByte();
         return _loc4_;
      }
   }
}

