package ru.pragmatix.wormix.messages.clans.structures
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class ClanChatMessageTO
   {
      
      public var actionCode:int;
      
      public var logDate:int;
      
      public var publisherSocialId:int;
      
      public var publisherProfileId:int;
      
      public var publisherName:String;
      
      public var memberSocialId:int;
      
      public var memberProfileId:int;
      
      public var memberName:String;
      
      public var params:String = "";
      
      public function ClanChatMessageTO()
      {
         super();
      }
   }
}

