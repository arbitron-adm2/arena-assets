package ru.pragmatix.wormix.messages.clans.response
{
   import §#k§.§9$v§;
   import §8$V§.*;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class AuditActionsResponse extends CommonClanResponse
   {
      
      public var actions:Vector.<ClanAuditActionTO> = new Vector.<ClanAuditActionTO>();
      
      public function AuditActionsResponse()
      {
         super();
      }
   }
}

