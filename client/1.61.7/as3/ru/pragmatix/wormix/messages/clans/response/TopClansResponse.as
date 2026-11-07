package ru.pragmatix.wormix.messages.clans.response
{
   import §"$+§.§@C§;
   import §0"L§.§+# §;
   import §4&F§.*;
   import §4'§.§`"q§;
   import §<%k§.*;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class TopClansResponse extends CommonClanResponse
   {
      
      public var topClans:Vector.<ClanTO> = new Vector.<ClanTO>();
      
      public var oldPlaces:Array = [];
      
      public var rating:int;
      
      public var oldPlace:int;
      
      public var playerClanPosition:int;
      
      public var startSeasonDate:uint;
      
      public var finishSeasonDate:uint;
      
      public function TopClansResponse()
      {
         super();
      }
   }
}

