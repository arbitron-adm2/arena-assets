package ru.pragmatix.wormix.messages.server
{
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §2!-§.WaterLevelChangedEvent;
   import §2B§.§#&E§;
   import §7$t§.§=?§;
   import §;$8§.§6"E§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class UserIsBanned
   {
      
      public var reason:int;
      
      public var endDate:uint;
      
      public var profileId:uint;
      
      public function UserIsBanned()
      {
         super();
      }
      
      public function toString() : String
      {
         return "UserIsBanned{reason=" + String(this.reason) + ",endDate=" + String(this.endDate) + ",profileId=" + String(this.profileId) + "}";
      }
   }
}

