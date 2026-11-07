package ru.pragmatix.wormix.serialization.clans.response
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-"N§.§"k§;
   import §0%[§.§0%§;
   import §3"_§.§?#w§;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §9%k§.§0"^§;
   import §=!p§.§1e§;
   import §=&!§.§4$z§;
   import §@!i§.§"-§;
   import §["3§.*;
   import §]$&§.§2&2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanErrorResponse;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class LoginClanErrorResponseBinarySerializer implements §&"a§
   {
      
      public function LoginClanErrorResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:LoginClanErrorResponse = new LoginClanErrorResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.LOGIN_ERROR_RESPONSE;
      }
   }
}

