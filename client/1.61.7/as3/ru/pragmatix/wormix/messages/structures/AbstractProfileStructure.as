package ru.pragmatix.wormix.messages.structures
{
   import §,"v§.§9%d§;
   import §@$§.§`&C§;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   
   public class AbstractProfileStructure
   {
      
      public var id:uint;
      
      public var name:String;
      
      public var socialId:String;
      
      public var socialNetId:int;
      
      public var money:int;
      
      public var realMoney:int;
      
      public var rating:int;
      
      public var reactionRate:int;
      
      public var rank:int;
      
      public var skin:int;
      
      public var clanMember:ClanMemberStructure;
      
      public function AbstractProfileStructure()
      {
         super();
      }
   }
}

