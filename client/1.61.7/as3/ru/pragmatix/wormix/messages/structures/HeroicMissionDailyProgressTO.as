package ru.pragmatix.wormix.messages.structures
{
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class HeroicMissionDailyProgressTO
   {
      
      public var defeatCount:int;
      
      public var winCount:int;
      
      public function HeroicMissionDailyProgressTO()
      {
         super();
      }
      
      public function toString() : String
      {
         return "HeroicMissionDailyProgressTO{" + " defeatCount=" + this.defeatCount + " winCount=" + this.winCount + " }";
      }
   }
}

