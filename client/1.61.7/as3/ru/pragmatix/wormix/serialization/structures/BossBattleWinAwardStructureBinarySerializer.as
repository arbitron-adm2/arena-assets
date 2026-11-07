package ru.pragmatix.wormix.serialization.structures
{
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §##j§.§0!-§;
   import §#P§.§`o§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §,"v§.§@#&§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §6",§.§[%w§;
   import §7!B§.§`"d§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
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
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class BossBattleWinAwardStructureBinarySerializer implements §@#&§
   {
      
      public function BossBattleWinAwardStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:BossBattleWinAwardStructure = new BossBattleWinAwardStructure();
         _loc4_.money = _loc3_.readInt();
         _loc4_.realMoney = _loc3_.readInt();
         _loc4_.experience = _loc3_.readInt();
         var _loc5_:int = 0;
         var _loc6_:int = int(_loc3_.readUnsignedShort());
         while(_loc5_ < _loc6_)
         {
            _loc3_.readShort();
            _loc4_.awardItems[_loc5_] = AwardBackpackItemStructure(§<!h§.§@%$§(AwardBackpackItemStructure).deserializeStructure(_loc3_,null));
            _loc5_++;
         }
         return _loc4_;
      }
   }
}

