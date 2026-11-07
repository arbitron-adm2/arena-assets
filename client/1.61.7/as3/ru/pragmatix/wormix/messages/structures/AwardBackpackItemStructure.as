package ru.pragmatix.wormix.messages.structures
{
   import §8$V§.*;
   
   public class AwardBackpackItemStructure
   {
      
      public var weaponId:int;
      
      public var count:int;
      
      public var stuffId:int;
      
      public var expireHours:int;
      
      public function AwardBackpackItemStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "AwardBackpackItemStructure{" + "weaponId=" + this.weaponId + ";count=" + this.count + ";stuffId=" + this.stuffId + ";expireHours=" + this.expireHours + "}";
      }
   }
}

