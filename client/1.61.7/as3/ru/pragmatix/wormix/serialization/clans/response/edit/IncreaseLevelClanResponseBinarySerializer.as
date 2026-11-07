package ru.pragmatix.wormix.serialization.clans.response.edit
{
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.*;
   import §9%k§.*;
   import §="z§.§9%1§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class IncreaseLevelClanResponseBinarySerializer implements §&"a§
   {
      
      public function IncreaseLevelClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:IncreaseLevelClanResponse = new IncreaseLevelClanResponse();
         _loc3_.serviceResult = param1.readShort();
         _loc3_.level = param1.readInt();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.INCREASE_LEVEL_CLAN_RESPONSE;
      }
   }
}

