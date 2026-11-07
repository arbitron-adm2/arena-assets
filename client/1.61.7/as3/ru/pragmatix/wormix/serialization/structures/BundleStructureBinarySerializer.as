package ru.pragmatix.wormix.serialization.structures
{
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#",§.§+!h§;
   import §#P§.§`o§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §,"v§.§@#&§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §5#`§.§%&5§;
   import §7!B§.§&"T§;
   import §<$q§.*;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BundleStructureBinarySerializer implements §@#&§
   {
      
      public function BundleStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:BundleStructure = new BundleStructure();
         _loc3_.expireInSeconds = param1.readInt();
         _loc3_.code = param1.readUTF();
         _loc3_.order = param1.readInt();
         _loc3_.discount = param1.readInt();
         _loc3_.votes = param1.readFloat();
         _loc3_.items = [];
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.readUnsignedShort());
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.items[_loc4_] = §<!h§.§@%$§(GenericAwardStructure).deserializeStructure(param1,null);
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

