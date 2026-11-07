package ru.pragmatix.wormix.pvp.messages.ex
{
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class RejectBattleOffer extends PvpLogin
   {
      
      public static const ID:uint = 1003;
      
      public var battleId:uint;
      
      public var manual:Boolean;
      
      public function RejectBattleOffer()
      {
         super();
      }
      
      override public function toString() : String
      {
         return "RejectBattleOffer{" + "battleId=" + this.battleId + ",manual=" + this.manual + "}";
      }
   }
}

