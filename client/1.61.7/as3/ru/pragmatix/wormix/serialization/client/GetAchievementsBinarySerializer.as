package ru.pragmatix.wormix.serialization.client
{
   import §##y§.§9§;
   import §#P§.§`o§;
   import §&#E§.§;"v§;
   import §+%S§.§=t§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-&5§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §1#p§.§"Z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §>%S§.§^!V§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class GetAchievementsBinarySerializer implements §&"a§
   {
      
      public function GetAchievementsBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 3002;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetAchievements = GetAchievements(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.profileId);
         _loc5_.writeByte(_loc3_.investedAwardPoints);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetAchievements = new GetAchievements();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.profileId = _loc4_.readUTF();
         _loc3_.investedAwardPoints = _loc4_.readByte();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

