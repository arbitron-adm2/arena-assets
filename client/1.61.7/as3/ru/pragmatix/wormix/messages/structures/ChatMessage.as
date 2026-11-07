package ru.pragmatix.wormix.messages.structures
{
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §2B§.§#&E§;
   import §7$t§.§=?§;
   import §^#[§.§?"&§;
   import flash.text.TextFieldType;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ChatMessage
   {
      
      public static const POST_TO_CHAT:int = 0;
      
      public static const CRAFT_LEGENDARY:int = 1;
      
      public static const DELETED_MESSAGE:int = 2;
      
      public static const POST_STICKER:int = 3;
      
      public static const ADMIN:int = 4;
      
      public static const ADMIN_PINNED:int = 5;
      
      public var id:uint;
      
      public var action:int;
      
      public var logDate:int;
      
      public var socialId:int;
      
      public var profileId:int;
      
      public var profileStringId:String;
      
      public var profileName:String;
      
      public var message:String;
      
      public var params:String;
      
      public var isDeleted:Boolean;
      
      public function ChatMessage()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ChatMessage{ " + " id=" + this.id + " action=" + this.action + " logDate=" + this.logDate + " socialId=" + this.socialId + " profileId=" + this.profileId + " profileStringId=" + this.profileStringId + " profileName=" + this.profileName + " params=" + this.params + " message=" + this.message + " }";
      }
      
      public function clone() : ChatMessage
      {
         var _loc1_:ChatMessage = new ChatMessage();
         _loc1_.id = this.id;
         _loc1_.action = this.action;
         _loc1_.logDate = this.logDate;
         _loc1_.socialId = this.socialId;
         _loc1_.profileId = this.profileId;
         _loc1_.profileStringId = this.profileStringId;
         _loc1_.profileName = this.profileName;
         _loc1_.params = this.params;
         _loc1_.message = this.message;
         return _loc1_;
      }
   }
}

