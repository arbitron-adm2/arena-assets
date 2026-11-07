package ru.pragmatix.wormix.messages.structures
{
   import §,"v§.§9%d§;
   import §1#p§.Team;
   import §7!B§.§&"T§;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.server.SyncInvestedAwardPointsResult;
   
   public class SimpleProfileStructure
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
      
      public var armor:int;
      
      public var attack:int;
      
      public var level:int;
      
      public var groupCount:int;
      
      public var hatId:int;
      
      public var raceId:int;
      
      public var artifactId:int;
      
      public function SimpleProfileStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "SimpleProfileStructure{" + " id=" + this.id + ", socialId=" + this.socialId + ", socialNetId=" + this.socialNetId + ", name=" + this.name + ", hatId=" + this.hatId + ", raceId=" + this.raceId + ", artifactId=" + this.artifactId + ", armor=" + this.armor + ", attack=" + this.attack + ", level=" + this.level + ", money=" + this.money + ", realMoney=" + this.realMoney + ", reactionRate=" + this.reactionRate + ", rating=" + this.rating + ", groupCount=" + this.groupCount + ", clanMember=" + this.clanMember + ", rank=" + this.rank + ", skin=" + this.skin + " }";
      }
   }
}

