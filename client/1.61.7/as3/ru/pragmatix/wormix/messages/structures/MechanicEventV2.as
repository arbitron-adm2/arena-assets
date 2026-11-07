package ru.pragmatix.wormix.messages.structures
{
   import §@<§.§+%]§;
   import flash.events.MouseEvent;
   
   public class MechanicEventV2
   {
      
      public static const TYPE_DODGE:int = 1;
      
      public static const TYPE_BLOCK:int = 2;
      
      public static const TYPE_REGEN:int = 3;
      
      public static const TYPE_LEECH:int = 4;
      
      public static const TYPE_FORTITUDE:int = 5;
      
      public static const TYPE_EXPLOSION_DEATH:int = 6;
      
      public static const TYPE_WEAPON_PICKUP:int = 7;
      
      public static const TYPE_LAND_DESTROYED:int = 8;
      
      public static const TYPE_LAND_COUNTED:int = 9;
      
      public var unitId:int;
      
      public var type:int;
      
      public var amount:int;
      
      public var sourceItemId:int;
      
      public function MechanicEventV2(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.unitId = param1;
         this.type = param2;
         this.amount = param3;
         this.sourceItemId = param4;
      }
      
      public function toString() : String
      {
         return "{#" + this.unitId + " t=" + this.type + " a=" + this.amount + (this.sourceItemId > 0 ? " src=" + this.sourceItemId : "") + "}";
      }
   }
}

