package ru.pragmatix.wormix.serialization.client
{
   import § $q§.§-%f§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §4f§.§-&§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §<"?§.§3>§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.*;
   import §^§.*;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class AddToGroupBinarySerializer implements §&"a§
   {
      
      public function AddToGroupBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 12;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:AddToGroup = AddToGroup(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.profileId);
         _loc5_.writeShort(_loc3_.moneyType);
         _loc5_.writeShort(_loc3_.teamMemberType);
         _loc5_.writeInt(_loc3_.replaceableId);
         _loc5_.writeBoolean(_loc3_.active);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:AddToGroup = new AddToGroup();
         _loc3_.profileId = param1.readUnsignedInt();
         _loc3_.moneyType = param1.readShort();
         return _loc3_;
      }
   }
}

