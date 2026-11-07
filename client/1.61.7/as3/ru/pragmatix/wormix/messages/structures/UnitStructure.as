package ru.pragmatix.wormix.messages.structures
{
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §9%W§.§&!P§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class UnitStructure extends AbstractProfileStructure
   {
      
      public var armor:int;
      
      public var attack:int;
      
      public var level:int;
      
      public var groupCount:int;
      
      public var hatId:int;
      
      public var raceId:int;
      
      public var artifactId:int;
      
      public function UnitStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "UnitStructure{armor=" + String(this.armor) + ",attack=" + String(this.attack) + ",level=" + String(this.level) + ",groupCount=" + String(this.groupCount) + ",hat=" + String(this.hatId) + ",race=" + String(this.raceId) + ",skin=" + String(skin) + ",artifact=" + String(this.artifactId) + ",name=" + name + "}";
      }
      
      public function copyFromSimple(param1:SimpleProfileStructure) : void
      {
         id = param1.id;
         socialId = param1.socialId;
         socialNetId = param1.socialNetId;
         name = param1.name;
         this.armor = param1.armor;
         this.attack = param1.attack;
         this.level = param1.level;
         this.hatId = param1.hatId;
         this.raceId = param1.raceId;
         this.artifactId = param1.artifactId;
         skin = param1.skin;
         this.groupCount = param1.groupCount;
         clanMember = param1.clanMember;
         rank = param1.rank;
         rating = param1.rating;
         reactionRate = param1.reactionRate;
         money = param1.money;
         realMoney = param1.realMoney;
      }
   }
}

