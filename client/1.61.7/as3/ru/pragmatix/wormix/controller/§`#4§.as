package ru.pragmatix.wormix.controller
{
   import §!L§.§`#p§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §-"Q§.§2!@§;
   import §0%[§.§0%§;
   import §=$#§.§ b§;
   import §@!N§.§2"e§;
   import §`"p§.GlobalChatTab;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.client.LeaveFromChat;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.server.ChatMessageEvent;
   import ru.pragmatix.wormix.messages.server.JoinToChatResult;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §`#4§
   {
      
      private static const §>$7§:int = §0#2§.§>!U§ * 30;
      
      private var messages:Vector.<ChatMessage> = new Vector.<ChatMessage>(0);
      
      private var §7#H§:Boolean;
      
      private var §&$X§:Boolean;
      
      public function §`#4§()
      {
         super();
         §%%w§.§##$§(JoinToChatResult,this.§;!S§);
         §%%w§.§##$§(PrivateChatMessage,this.§6$L§);
      }
      
      private function §;!S§(param1:§9$v§) : void
      {
         var ids:Array;
         var result:JoinToChatResult = null;
         var msg:ChatMessage = null;
         var event:§9$v§ = param1;
         result = JoinToChatResult(event.message);
         this.§7#H§ = true;
         §%%w§.§##$§(ChatMessageEvent,this.§9t§);
         this.messages = result.messages;
         ids = [];
         for each(msg in result.messages)
         {
            if(!msg.profileName && ids.indexOf(msg.profileId) == -1)
            {
               ids.push(msg.profileId);
            }
         }
         if(ids.length)
         {
            §`#p§.§#&2§(ids,function(param1:Vector.<UserProfile>):void
            {
               var _loc2_:UserProfile = null;
               for each(msg in result.messages)
               {
                  for each(_loc2_ in param1)
                  {
                     if(msg.profileId == _loc2_.getId() && !msg.profileName)
                     {
                        msg.profileName = _loc2_.§'&;§();
                        _loc2_.setSocialType(§7"n§.§9&,§(msg.socialId));
                        break;
                     }
                  }
               }
               updateChatPanel();
            });
         }
         else
         {
            this.updateChatPanel();
         }
      }
      
      public function updateChatPanel() : void
      {
         var _loc1_:§2!@§ = Application.§5!>§.§<!z§;
         if(this.§7#H§ && _loc1_.§7"s§() && _loc1_.§]#h§() is GlobalChatTab)
         {
            _loc1_.§^J§();
         }
      }
      
      private function §9t§(param1:§9$v§) : void
      {
         var result:ChatMessageEvent = null;
         var action:int = 0;
         var i:int = 0;
         var split:Array = null;
         var deletedMessageId:int = 0;
         var deletedMessagePublisherId:int = 0;
         var chatMessage:ChatMessage = null;
         var indexOf:Number = NaN;
         var msgText:String = null;
         var event:§9$v§ = param1;
         result = ChatMessageEvent(event.message);
         if(result.state == ChatMessageEvent.SUCCESS)
         {
            action = result.message.action;
            if(action == ChatMessage.DELETED_MESSAGE)
            {
               i = this.messages.length - 1;
               while(i > -1)
               {
                  if(this.messages[i].action == ChatMessage.DELETED_MESSAGE && this.messages[i].isDeleted)
                  {
                     this.messages.splice(i,1);
                  }
                  i--;
               }
               this.messages.push(result.message);
               split = result.message.params.split(",");
               deletedMessageId = int(split[0]);
               deletedMessagePublisherId = int(split[1]);
               for each(chatMessage in this.messages)
               {
                  if(chatMessage.id == deletedMessageId)
                  {
                     indexOf = this.messages.indexOf(chatMessage);
                     if(indexOf > -1)
                     {
                        this.messages.splice(indexOf,1);
                        this.updateChatPanel();
                        break;
                     }
                  }
               }
            }
            else if(action == ChatMessage.POST_TO_CHAT || action == ChatMessage.CRAFT_LEGENDARY)
            {
               this.messages.push(result.message);
               if(result.message.profileName)
               {
                  this.updateChatPanel();
               }
               else
               {
                  §`#p§.§#&2§([result.message.profileId],function(param1:Vector.<UserProfile>):void
                  {
                     if(param1.length)
                     {
                        param1[0].setSocialType(§7"n§.§9&,§(result.message.socialId));
                        result.message.profileName = param1[0].§'&;§();
                     }
                     updateChatPanel();
                  });
               }
            }
            else if(action == ChatMessage.ADMIN || action == ChatMessage.ADMIN_PINNED)
            {
               this.messages.push(result.message);
               this.updateChatPanel();
            }
         }
         else
         {
            switch(result.state)
            {
               case ChatMessageEvent.ILLEGAL_STATE:
                  msgText = §0$N§.GLOBAL_CHAT_ILLEGAL_STATE;
                  break;
               case ChatMessageEvent.NOT_ALLOWED:
                  msgText = §0$N§.GLOBAL_CHAT_NOT_ALLOWED;
                  break;
               case ChatMessageEvent.TOO_FAST:
                  msgText = §0$N§.GLOBAL_CHAT_TOO_FAST;
                  break;
               case ChatMessageEvent.RESTRICTED:
                  msgText = §0$N§.CHAT_RESTRICTED;
                  break;
               case ChatMessageEvent.ILLEGAL_ACTION:
                  msgText = §0$N§.GLOBAL_CHAT_ILLEGAL_ACTION;
            }
            if(msgText)
            {
               §,#W§.§'!+§(§0$N§.TITLE_ERROR,msgText,§,#W§.§6!m§).show();
            }
         }
      }
      
      private function §6$L§(param1:§9$v§) : void
      {
         var result:PrivateChatMessage = null;
         var event:§9$v§ = param1;
         result = PrivateChatMessage(event.message);
         if(§8"%§.§?!W§.inBattle || §8"%§.§?!W§.§3#r§)
         {
            §`#p§.§#&2§([result.fromProfileId],function(param1:Vector.<UserProfile>):void
            {
               var _loc3_:String = null;
               var _loc2_:String = §2"e§.NA;
               if(param1.length)
               {
                  _loc2_ = param1[0].§'&;§() || §2"e§.NA;
               }
               if(result.predefinedMsgType == PrivateChatMessage.CHALLENGE_PLAYERS_TO_FIGHT)
               {
                  _loc3_ = §0%§.format(§0$N§.BATTLE_REQUEST_ATTEMPT,{"name":_loc2_});
               }
               if(_loc3_)
               {
                  §8"%§.§?!W§.§!#S§(_loc3_,0,null,true,§ b§.§?!X§,false);
               }
            });
         }
      }
      
      public function §%&7§() : void
      {
         if(!this.§7#H§ && Application.§5!>§.§<!z§.§7"s§())
         {
            §%%w§.§,U§(new JoinToChat());
         }
      }
      
      public function §=!d§() : void
      {
         if(this.§7#H§)
         {
            this.§7#H§ = false;
            §%%w§.§-"j§(ChatMessageEvent,this.§9t§);
            §%%w§.§,U§(new LeaveFromChat());
         }
      }
      
      public function postMessage(param1:String) : void
      {
         §%%w§.§,U§(new PostToChat(Application.userProfile.§'&;§(),param1,ChatMessage.POST_TO_CHAT));
      }
      
      public function §9"x§() : Vector.<ChatMessage>
      {
         return this.messages;
      }
      
      public function get §%!c§() : Boolean
      {
         return this.§7#H§;
      }
      
      public function get §]"s§() : Boolean
      {
         return this.§&$X§;
      }
      
      public function §6!D§(param1:int) : void
      {
         this.§&$X§ = param1 > 0 && §0#2§.§[&>§(param1) < §>$7§;
      }
   }
}

