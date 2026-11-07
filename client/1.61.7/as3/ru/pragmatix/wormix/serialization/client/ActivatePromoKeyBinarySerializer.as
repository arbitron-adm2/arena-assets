package ru.pragmatix.wormix.serialization.client
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-&5§.§?#c§;
   import §0!§.§6#z§;
   import §0"L§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2$]§.*;
   import §3#a§.§-!`§;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §<!W§.*;
   import §<%c§.*;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §[" §.*;
   import §[%§.*;
   import §^"y§.*;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.ActivatePromoKey;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class ActivatePromoKeyBinarySerializer implements §&"a§
   {
      
      public function ActivatePromoKeyBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ActivatePromoKey = ActivatePromoKey(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.key);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ActivatePromoKey = new ActivatePromoKey();
         _loc3_.key = param1.readUTF();
         return _loc3_;
      }
   }
}

