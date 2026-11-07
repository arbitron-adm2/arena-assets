package ru.pragmatix.wormix.serialization.structures
{
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&!m§.§;#[§;
   import §,"v§.§@#&§;
   import §-!U§.§&%j§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §2"L§.§,'§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §@!N§.§""L§;
   import §@!i§.§,! §;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class TemporalStuffStructureBinarySerializer implements §@#&§
   {
      
      public function TemporalStuffStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:TemporalStuffStructure = TemporalStuffStructure(param1);
         param2.writeShort(_loc4_.stuffId);
         param2.writeInt(_loc4_.expireDate);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:int = param1.readShort();
         var _loc4_:int = param1.readInt();
         return new TemporalStuffStructure(_loc3_,_loc4_);
      }
   }
}

