package ru.pragmatix.wormix.serialization.structures
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§-$s§;
   import §,"v§.§@#&§;
   import §,$J§.§,$O§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §2#8§.§6"a§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class UnitBirthV2BinarySerializer implements §@#&§
   {
      
      public function UnitBirthV2BinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:UnitBirthV2 = UnitBirthV2(param1);
         param2.writeShort(_loc4_.unitId);
         param2.writeBoolean(_loc4_.isPlayerTeam);
         param2.writeInt(_loc4_.hp);
         param2.writeByte(_loc4_.source);
         param2.writeByte(_loc4_.role);
         param2.writeShort(_loc4_.hatId);
         param2.writeShort(_loc4_.kitId);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:UnitBirthV2 = new UnitBirthV2();
         _loc3_.unitId = param1.readShort();
         _loc3_.isPlayerTeam = param1.readBoolean();
         _loc3_.hp = param1.readInt();
         _loc3_.source = param1.readByte();
         _loc3_.role = param1.readByte();
         _loc3_.hatId = param1.readShort();
         _loc3_.kitId = param1.readShort();
         return _loc3_;
      }
   }
}

