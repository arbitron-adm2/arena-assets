package ru.pragmatix.wormix.serialization.structures
{
   import §!$D§.§2$^§;
   import §"#x§.§'"$§;
   import §#",§.§+!h§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §3"@§.§##L§;
   import §4#2§.§,%g§;
   import §4'§.§#"l§;
   import §5!9§.§6$,§;
   import §7$t§.§2"y§;
   import §<%k§.§`!v§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class UnitDeathV2BinarySerializer implements §@#&§
   {
      
      public function UnitDeathV2BinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:UnitDeathV2 = UnitDeathV2(param1);
         param2.writeShort(_loc4_.unitId);
         param2.writeByte(_loc4_.cause);
         param2.writeInt(_loc4_.remainingHp);
         param2.writeShort(_loc4_.killerWeaponId);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:UnitDeathV2 = new UnitDeathV2();
         _loc3_.unitId = param1.readShort();
         _loc3_.cause = param1.readByte();
         _loc3_.remainingHp = param1.readInt();
         _loc3_.killerWeaponId = param1.readShort();
         return _loc3_;
      }
   }
}

