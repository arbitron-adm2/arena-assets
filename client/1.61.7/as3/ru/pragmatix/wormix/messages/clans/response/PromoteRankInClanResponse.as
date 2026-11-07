package ru.pragmatix.wormix.messages.clans.response
{
   import §%L§.§%%w§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   
   public class PromoteRankInClanResponse extends CommonClanResponse
   {
      
      public var socialId:int;
      
      public var profileId:int;
      
      public var rank:int;
      
      public function PromoteRankInClanResponse()
      {
         super();
      }
   }
}

