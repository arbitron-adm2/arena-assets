package ru.pragmatix.wormix.serialization.client
{
   import §!$D§.§2$^§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%z§.§?$E§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §2!-§.DamageEvent;
   import §2#W§.PvpChestBox;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7$t§.§2& §;
   import §7$t§.§^$E§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import §[%§.*;
   import §]$&§.§2&2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.client.Login;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.structures.*;
   
   public class LoginBinarySerializer implements §&"a§
   {
      
      public function LoginBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:Login = Login(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.id);
         _loc5_.writeUnsignedInt(_loc3_.referrerId);
         _loc5_.writeUTF(_loc3_.authKey);
         _loc5_.writeInt(this.§<$p§(_loc3_.version));
         var _loc6_:uint = 0;
         var _loc7_:uint = _loc3_.ids.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeUnsignedInt(_loc3_.ids[_loc6_]);
            _loc6_++;
         }
         _loc5_.writeByte(_loc3_.socialCode);
         _loc7_ = _loc3_.params.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeUTF(_loc3_.params[_loc6_]);
            _loc6_++;
         }
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      private function §<$p§(param1:String) : int
      {
         var _loc2_:Array = param1.split(".");
         return _loc2_.length == 4 ? int((int(_loc2_[0]) << 24) + (int(_loc2_[1]) << 16) + (int(_loc2_[2]) << 8) + int(_loc2_[3])) : 1;
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

