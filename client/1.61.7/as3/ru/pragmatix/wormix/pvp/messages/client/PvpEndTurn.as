package ru.pragmatix.wormix.pvp.messages.client
{
   import §#",§.ReturnFriendRequestMenu;
   import §0%[§.§1%"§;
   import §4'§.§`"q§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   
   public class PvpEndTurn extends PvpCommand
   {
      
      public var eliminated:Array = [];
      
      public var collectedReagents:Array = [];
      
      public var items:Array = [];
      
      public var battleState:int = 0;
      
      public var forced:Boolean = false;
      
      public var banType:int = 0;
      
      public var banNote:String = "";
      
      public var droppedUnits:Array = [];
      
      public var participantsHealthInPercent:Array = [];
      
      public function PvpEndTurn()
      {
         super();
      }
   }
}

