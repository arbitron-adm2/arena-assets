package ru.pragmatix.wormix.serialization.structures
{
   import § !P§.*;
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §'!Z§.§1"-§;
   import §+#m§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §2o§.§]#;§;
   import §4$b§.§6!G§;
   import §7!n§.§[&#§;
   import §9%W§.§&!P§;
   import §="z§.§9%1§;
   import §=7§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.structures.PumpReactionRateStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class PumpReactionRateStructureBinarySerializer implements §@#&§
   {
      
      public function PumpReactionRateStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:PumpReactionRateStructure = PumpReactionRateStructure(param1);
         param2.writeUnsignedInt(_loc4_.friendId);
         param2.writeByte(_loc4_.result);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:PumpReactionRateStructure = new PumpReactionRateStructure();
         _loc3_.friendId = param1.readUnsignedInt();
         _loc3_.result = param1.readByte();
         return _loc3_;
      }
   }
}

