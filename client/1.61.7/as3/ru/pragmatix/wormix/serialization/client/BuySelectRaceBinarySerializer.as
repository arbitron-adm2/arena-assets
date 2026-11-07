package ru.pragmatix.wormix.serialization.client
{
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §&"c§.§!!q§;
   import §'$Z§.§2#f§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §4$b§.§2m§;
   import §7$t§.§&!e§;
   import §8$Z§.§9!&§;
   import §<V§.§!&-§;
   import §>%S§.§^!V§;
   import §@!N§.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class BuySelectRaceBinarySerializer implements §&"a§
   {
      
      public function BuySelectRaceBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 50;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuySelectRace = BuySelectRace(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.raceId);
         _loc5_.writeByte(_loc3_.skinId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuySelectRace = new BuySelectRace();
         _loc3_.raceId = param1.readShort();
         _loc3_.skinId = param1.readByte();
         return _loc3_;
      }
   }
}

