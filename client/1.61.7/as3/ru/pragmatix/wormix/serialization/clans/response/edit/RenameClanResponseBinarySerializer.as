package ru.pragmatix.wormix.serialization.clans.response.edit
{
   import § $q§.§-%f§;
   import §!$D§.*;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §4'§.§`"q§;
   import §5"J§.§4!m§;
   import §7"Q§.§0$L§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<#&§;
   import §@!i§.§@$&§;
   import avmplus.getQualifiedClassName;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.edit.RenameClanResponse;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class RenameClanResponseBinarySerializer implements §&"a§
   {
      
      public function RenameClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:RenameClanResponse = new RenameClanResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.RENAME_CLAN_RESPONSE;
      }
   }
}

