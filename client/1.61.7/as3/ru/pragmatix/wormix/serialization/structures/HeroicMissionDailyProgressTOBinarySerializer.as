package ru.pragmatix.wormix.serialization.structures
{
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §,"v§.§@#&§;
   import §0%[§.§0%§;
   import §7!B§.§&"T§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class HeroicMissionDailyProgressTOBinarySerializer implements §@#&§
   {
      
      public function HeroicMissionDailyProgressTOBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:HeroicMissionDailyProgressTO = new HeroicMissionDailyProgressTO();
         _loc4_.defeatCount = _loc3_.readInt();
         _loc4_.winCount = _loc3_.readInt();
         return _loc4_;
      }
   }
}

