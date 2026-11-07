package ru.pragmatix.wormix.messages.clans.response
{
   import §%# §.§##U§;
   import §-@§.§0"e§;
   import §2#s§.*;
   import §6",§.§[%w§;
   import §@!N§.§2"e§;
   import flash.events.Event;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   
   public class InviteToClanResponse extends CommonClanResponse
   {
      
      public var interopCode:int;
      
      public var invites:Vector.<ClanInviteTO> = new Vector.<ClanInviteTO>();
      
      public function InviteToClanResponse()
      {
         super();
      }
   }
}

