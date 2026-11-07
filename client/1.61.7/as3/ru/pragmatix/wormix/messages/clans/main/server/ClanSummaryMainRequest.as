package ru.pragmatix.wormix.messages.clans.main.server
{
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §0&F§.§0%v§;
   import §6",§.§[%w§;
   import §9&+§.§>&5§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class ClanSummaryMainRequest
   {
      
      public var clanId:int;
      
      public var scope:int;
      
      public function ClanSummaryMainRequest(param1:int, param2:int)
      {
         super();
         this.clanId = param1;
         this.scope = param2;
      }
   }
}

