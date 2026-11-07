package ru.pragmatix.wormix.serialization.client
{
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§'$T§;
   import §+&<§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §0!§.*;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<!W§.*;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §@!N§.§3!3§;
   import §@!i§.§'#E§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import config.§;"I§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ClearName;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class ClearNameBinarySerializer implements §&"a§
   {
      
      public function ClearNameBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 131;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ClearName = ClearName(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.teamMemberId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

