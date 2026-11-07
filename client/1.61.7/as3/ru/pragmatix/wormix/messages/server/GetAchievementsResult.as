package ru.pragmatix.wormix.messages.server
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §'!Z§.§6S§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §^4§.§@#J§;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GetAchievementsResult
   {
      
      public var profileId:String;
      
      public var achievementsIndex:Array;
      
      public var achievements:Array;
      
      public var boolAchievements:Array;
      
      public var investedAwardPoints:int;
      
      public var isSecure:Boolean;
      
      public function GetAchievementsResult()
      {
         super();
      }
   }
}

