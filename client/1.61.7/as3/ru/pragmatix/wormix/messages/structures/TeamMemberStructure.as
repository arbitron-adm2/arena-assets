package ru.pragmatix.wormix.messages.structures
{
   import §`%&§.§5$1§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class TeamMemberStructure extends UnitStructure
   {
      
      public var ownerId:uint;
      
      public var socialOwnerId:String;
      
      public var experience:int;
      
      public var teamMemberType:int;
      
      public var isActive:Boolean = true;
      
      public function TeamMemberStructure()
      {
         super();
      }
      
      override public function toString() : String
      {
         return "TeamMemberStructure{ownerId=" + String(this.ownerId) + ",socialOwnerId=" + String(this.socialOwnerId) + ",armor=" + String(armor) + ",attack=" + String(attack) + ",level=" + String(level) + ",groupCount=" + String(groupCount) + ",hat=" + String(hatId) + ",race=" + String(raceId) + ",skin=" + String(skin) + ",artifact=" + String(artifactId) + ",experience=" + String(this.experience) + ",teamMemberType=" + String(this.teamMemberType) + ",isActive=" + String(this.isActive) + ",name=" + name + "}";
      }
   }
}

