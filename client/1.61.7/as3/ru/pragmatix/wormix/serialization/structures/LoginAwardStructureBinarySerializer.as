package ru.pragmatix.wormix.serialization.structures
{
   import §#$e§.§!a§;
   import §'!Z§.§1"-§;
   import §,"v§.§@#&§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class LoginAwardStructureBinarySerializer implements §@#&§
   {
      
      public function LoginAwardStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:LoginAwardStructure = new LoginAwardStructure();
         _loc3_.awardType = param1.readShort();
         var _loc4_:uint = param1.readUnsignedShort();
         _loc3_.awards = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.awards[_loc5_] = §<!h§.§@%$§(GenericAwardStructure).deserializeStructure(param1,null);
            _loc5_++;
         }
         _loc3_.attach = param1.readUTF();
         return _loc3_;
      }
   }
}

