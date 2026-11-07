package ru.pragmatix.wormix.serialization.client
{
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   
   public class IncreaseAchievementsBinarySerializer implements §&"a§
   {
      
      public function IncreaseAchievementsBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 3003;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc6_:int = 0;
         var _loc3_:IncreaseAchievements = IncreaseAchievements(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.sessionId);
         var _loc7_:uint = _loc3_.achievementsIndex.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeInt(_loc3_.achievementsIndex[_loc6_]);
            _loc6_++;
         }
         _loc7_ = _loc3_.achievementsRise.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeInt(_loc3_.achievementsRise[_loc6_]);
            _loc6_++;
         }
         _loc7_ = _loc3_.boolAchievements.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeInt(_loc3_.boolAchievements[_loc6_]);
            _loc6_++;
         }
         _loc5_.writeUnsignedInt(_loc3_.timeSequence);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc5_:int = 0;
         var _loc3_:IncreaseAchievements = new IncreaseAchievements();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.sessionId = _loc4_.readUTF();
         var _loc6_:uint = _loc4_.readUnsignedShort();
         _loc3_.achievementsIndex = [];
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc3_.achievementsIndex[_loc5_] = _loc4_.readInt();
            _loc5_++;
         }
         _loc3_.achievementsRise = [];
         _loc6_ = _loc4_.readUnsignedShort();
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc3_.achievementsRise[_loc5_] = _loc4_.readInt();
            _loc5_++;
         }
         _loc3_.boolAchievements = [];
         _loc6_ = _loc4_.readUnsignedShort();
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc3_.boolAchievements[_loc5_] = _loc4_.readInt();
            _loc5_++;
         }
         _loc3_.timeSequence = _loc4_.readUnsignedInt();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

