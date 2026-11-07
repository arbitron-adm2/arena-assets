package ru.pragmatix.wormix.serialization.client
{
   import § !8§.§9%+§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-@§.§-#m§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §2#x§.§]s§;
   import §4#`§.§+!l§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.*;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §[%§.Cat;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.SendWipeConfirmCode;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class SendWipeConfirmCodeBinarySerializer implements §&"a§
   {
      
      public function SendWipeConfirmCodeBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 52;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SendWipeConfirmCode = SendWipeConfirmCode(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _temp_2:* = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.level);
         _loc5_.writeInt(_loc3_.experience);
         _loc5_.writeInt(_loc3_.rating);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:SendWipeConfirmCode = new SendWipeConfirmCode();
         _loc3_.level = param1.readInt();
         _loc3_.experience = param1.readInt();
         _loc3_.rating = param1.readInt();
         return _loc3_;
      }
   }
}

