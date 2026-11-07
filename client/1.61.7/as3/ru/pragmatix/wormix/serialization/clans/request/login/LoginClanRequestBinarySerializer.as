package ru.pragmatix.wormix.serialization.clans.request.login
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §&#E§.§4##§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §3#a§.§-!`§;
   import §<%c§.*;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §[%§.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class LoginClanRequestBinarySerializer extends LoginClanBaseBinarySerializer
   {
      
      public function LoginClanRequestBinarySerializer()
      {
         super();
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.LOGIN_REQUEST;
      }
   }
}

