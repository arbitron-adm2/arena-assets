package ru.pragmatix.wormix.serialization.client
{
   import §!$d§.§<$c§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'$j§.§'-§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%z§.§,$h§;
   import §2"L§.§,'§;
   import §7!B§.§&"T§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §[%'§.§<"G§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§5$1§;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class EndTurnBinarySerializer implements §&"a§
   {
      
      public function EndTurnBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 120;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:EndTurn = EndTurn(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:§,'§ = new §,'§(getTimer());
         var _loc6_:ByteArray = new ByteArray();
         _loc6_.writeShort(_loc3_.missionId);
         _loc6_.writeUnsignedInt(_loc3_.battleId);
         var _loc7_:ByteArray = new ByteArray();
         if(_loc3_.turnV2)
         {
            _loc6_.writeShort(TurnStructureV2.VERSION_MARKER);
            §<!h§.§@%$§(TurnStructureV2).serializeStructure(_loc3_.turnV2,_loc7_,null);
         }
         else
         {
            _loc6_.writeShort(_loc5_.§,!q§(1,20));
            §<!h§.§@%$§(TurnStructure).serializeStructure(_loc3_.turn,_loc7_,null);
         }
         _loc6_.writeShort(_loc7_.length);
         _loc6_.writeBytes(_loc7_);
         _loc6_.writeShort(_loc3_.banType);
         _loc6_.writeUTF(_loc3_.banNote);
         _loc6_.writeUTF(_loc3_.sessionKey);
         §6&A§.§,&!§(_loc6_,§["u§.§'&I§);
         _loc4_.§<!§(_loc6_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc6_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:EndTurn = new EndTurn();
         _loc4_.missionId = _loc3_.readShort();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc3_.readShort();
         _loc4_.turn = TurnStructure(§<!h§.§@%$§(TurnStructure).deserializeStructure(_loc3_,null));
         _loc4_.banType = _loc3_.readShort();
         _loc4_.banNote = _loc3_.readUTF();
         _loc4_.sessionKey = _loc3_.readUTF();
         var _loc5_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
         }
         return _loc4_;
      }
   }
}

