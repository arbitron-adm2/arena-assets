package ru.pragmatix.wormix.pvp.messages.client
{
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §8$V§.*;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class PvpEndTurnResponse extends PvpCommand
   {
      
      public var droppedPlayers:Array = [];
      
      public var collectedReagents:Array = [];
      
      public var items:Array = [];
      
      public var battleState:int = 0;
      
      public var droppedUnits:Array = [];
      
      public var participantsHealthInPercent:Array = [];
      
      public function PvpEndTurnResponse()
      {
         super();
      }
   }
}

