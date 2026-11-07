package ru.pragmatix.wormix.serialization.server
{
   import § m§.§9!^§;
   import §&"c§.§5$n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §9"-§.§?!s§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class AchieveLoginSuccessBinarySerializer implements §&"a§
   {
      
      public function AchieveLoginSuccessBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 13001;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:AchieveLoginSuccess = AchieveLoginSuccess(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.sessionId);
         _loc5_.writeUnsignedInt(_loc3_.loginTime);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:AchieveLoginSuccess = new AchieveLoginSuccess();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.sessionId = _loc4_.readUTF();
         _loc3_.loginTime = _loc4_.readUnsignedInt();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

