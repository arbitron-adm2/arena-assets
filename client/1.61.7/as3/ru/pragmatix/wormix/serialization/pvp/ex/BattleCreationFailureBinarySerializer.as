package ru.pragmatix.wormix.serialization.pvp.ex
{
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#$e§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%z§.§&%&§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §4#`§.§]$c§;
   import §6$0§.§=!N§;
   import §6_§.§&$6§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §`%&§.§`§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class BattleCreationFailureBinarySerializer implements §&"a§
   {
      
      public function BattleCreationFailureBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return BattleCreationFailure.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:BattleCreationFailure = new BattleCreationFailure();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.refuserId = _loc3_.readUnsignedInt();
         _loc4_.socialNetId = _loc3_.readByte();
         _loc4_.reason = CallToBattleResultType.valueOf(_loc3_.readShort());
         return _loc4_;
      }
   }
}

