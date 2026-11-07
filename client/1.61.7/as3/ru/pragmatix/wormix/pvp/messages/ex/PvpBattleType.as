package ru.pragmatix.wormix.pvp.messages.ex
{
   import com.greensock.events.LoaderEvent;
   import flash.events.Event;
   
   public class PvpBattleType
   {
      
      private static const list:Vector.<PvpBattleType> = new Vector.<PvpBattleType>(0);
      
      public static const PVE_FRIEND:PvpBattleType = new PvpBattleType(1);
      
      public static const PVE_PARTNER:PvpBattleType = new PvpBattleType(2);
      
      public static const FRIEND_PVP:PvpBattleType = new PvpBattleType(3);
      
      public static const WAGER_PVP_DUEL:PvpBattleType = new PvpBattleType(4);
      
      public static const WAGER_PVP_2X2:PvpBattleType = new PvpBattleType(6);
      
      public static const WAGER_PVP_2X2_FRIEND:PvpBattleType = new PvpBattleType(7);
      
      public static const WAGER_PVP_3_FOR_ALL:PvpBattleType = new PvpBattleType(8);
      
      private var §9!4§:int;
      
      public function PvpBattleType(param1:int)
      {
         super();
         this.§9!4§ = param1;
         list.push(this);
      }
      
      public static function valueOf(param1:uint) : PvpBattleType
      {
         var _loc2_:PvpBattleType = null;
         for each(_loc2_ in list)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get id() : int
      {
         return this.§9!4§;
      }
      
      public function toString() : String
      {
         return "PvpBattleType {" + " id=" + this.§9!4§ + " }";
      }
   }
}

