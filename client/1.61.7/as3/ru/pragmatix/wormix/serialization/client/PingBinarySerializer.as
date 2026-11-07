package ru.pragmatix.wormix.serialization.client
{
   import §"$+§.§@C§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §+%S§.§ !!§;
   import §+%S§.§"$7§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-&5§.*;
   import §2"L§.§^$y§;
   import §4'§.§`"q§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §9%k§.*;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^"<§.§+%E§;
   import §^"y§.§]#i§;
   import §^4§.§]"8§;
   import flash.display.BitmapData;
   import flash.errors.IllegalOperationError;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class PingBinarySerializer implements §&"a§
   {
      
      public function PingBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 16;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:Ping = Ping(param1);
         var _temp_1:* = new §^!V§();
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return new Ping();
      }
   }
}

