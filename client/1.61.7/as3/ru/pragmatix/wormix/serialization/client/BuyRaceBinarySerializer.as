package ru.pragmatix.wormix.serialization.client
{
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §%"Z§.§+$A§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §+&<§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §2!-§.DamageEvent;
   import §65§.§`"C§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§&§;
   import §8#<§.§1"k§;
   import §<!W§.§>&@§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §@8§.§5%>§;
   import §]^§.§-$T§;
   import §^"y§.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§"!g§;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BuyRaceBinarySerializer implements §&"a§
   {
      
      public function BuyRaceBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 36;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyRace = BuyRace(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.raceId);
         _loc5_.writeShort(_loc3_.moneyType);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuyRace = new BuyRace();
         _loc3_.raceId = param1.readShort();
         _loc3_.moneyType = param1.readShort();
         return _loc3_;
      }
   }
}

