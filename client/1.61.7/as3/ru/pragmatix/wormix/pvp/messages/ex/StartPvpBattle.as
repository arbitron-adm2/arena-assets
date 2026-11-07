package ru.pragmatix.wormix.pvp.messages.ex
{
   public class StartPvpBattle
   {
      
      public static const ID:uint = 2001;
      
      public var battleId:uint;
      
      public var sessionKey:String;
      
      public var playerNum:uint;
      
      public var turnElapsedBeforeOutageMs:uint;
      
      public function StartPvpBattle()
      {
         super();
      }
   }
}

