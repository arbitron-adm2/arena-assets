package ru.pragmatix.wormix.messages.clans.structures
{
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   
   public class ClanTO
   {
      
      public static const SCOPE_HEADER:int = 0;
      
      public static const SCOPE_MEMBER_HEADER:int = 1;
      
      public static const SCOPE_ALL:int = 65535;
      
      public var id:int;
      
      public var name:String;
      
      public var level:int;
      
      public var size:int;
      
      public var rating:int;
      
      public var seasonRating:int;
      
      public var joinRating:int;
      
      public var createDate:int;
      
      public var emblem:Vector.<uint> = new Vector.<uint>();
      
      public var clanDescription:String;
      
      public var reviewState:int;
      
      public var topPlace:int;
      
      public var prevSeasonTopPlace:int;
      
      public var members:Vector.<ClanMemberTO> = new Vector.<ClanMemberTO>(0);
      
      public var isExitClosed:Boolean;
      
      public var treasury:int;
      
      public var medalPrice:int;
      
      public var cashedMedals:int;
      
      public function ClanTO()
      {
         super();
      }
      
      public function isBlocked() : Boolean
      {
         return this.reviewState == -1;
      }
   }
}

