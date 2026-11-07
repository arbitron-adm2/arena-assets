package ru.pragmatix.wormix.serialization.client
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §+$=§.§6#A§;
   import §+%S§.§3$§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%z§.*;
   import §2#i§.§+%z§;
   import §4#2§.§^S§;
   import §4$b§.§6!G§;
   import §5!9§.§6$,§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.WipeProfile;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class WipeProfileBinarySerializer implements §&"a§
   {
      
      public function WipeProfileBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 48;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:WipeProfile = WipeProfile(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.confirmCode);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:WipeProfile = new WipeProfile();
         _loc3_.confirmCode = param1.readUTF();
         return _loc3_;
      }
   }
}

