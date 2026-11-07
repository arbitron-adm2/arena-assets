package ru.pragmatix.wormix.serialization.structures
{
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §,"v§.§@#&§;
   import §2#H§.§1%I§;
   import §2o§.§]#;§;
   import §=#g§.*;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   
   public class ShopItemStructureBinarySerializer implements §@#&§
   {
      
      public function ShopItemStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:ShopItemStructure = ShopItemStructure(param1);
         param2.writeUnsignedInt(_loc4_.id);
         param2.writeInt(_loc4_.count);
         param2.writeInt(_loc4_.moneyType);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ShopItemStructure = new ShopItemStructure();
         _loc3_.id = param1.readUnsignedInt();
         _loc3_.count = param1.readInt();
         _loc3_.moneyType = param1.readInt();
         return _loc3_;
      }
   }
}

