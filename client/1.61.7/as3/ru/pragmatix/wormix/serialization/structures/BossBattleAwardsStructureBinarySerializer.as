package ru.pragmatix.wormix.serialization.structures
{
   import §#P§.§`o§;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §,$J§.§,$O§;
   import §0%"§.§[!^§;
   import §7$t§.*;
   import §8#<§.§!#^§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]7§.§0'§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class BossBattleAwardsStructureBinarySerializer implements §@#&§
   {
      
      public function BossBattleAwardsStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:BossBattleAwardsStructure = new BossBattleAwardsStructure();
         var _loc5_:int = 0;
         var _loc6_:int = int(_loc3_.readUnsignedShort());
         while(_loc5_ < _loc6_)
         {
            _loc3_.readShort();
            _loc4_.bossAwards[_loc5_] = BossBattleAwardStructure(§<!h§.§@%$§(BossBattleAwardStructure).deserializeStructure(_loc3_,null));
            _loc5_++;
         }
         _loc5_ = 0;
         _loc6_ = int(_loc3_.readUnsignedShort());
         while(_loc5_ < _loc6_)
         {
            _loc3_.readShort();
            _loc4_.heroicAwards[_loc5_] = HeroicBossBattleAwardStructure(§<!h§.§@%$§(HeroicBossBattleAwardStructure).deserializeStructure(_loc3_,null));
            _loc5_++;
         }
         return _loc4_;
      }
   }
}

