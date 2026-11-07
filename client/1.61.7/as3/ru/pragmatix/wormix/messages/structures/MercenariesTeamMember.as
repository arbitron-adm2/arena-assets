package ru.pragmatix.wormix.messages.structures
{
   import §2#s§.*;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import flash.display.DisplayObjectContainer;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class MercenariesTeamMember
   {
      
      public var id:int;
      
      public var level:int;
      
      public var race:int;
      
      public var armor:int;
      
      public var attack:int;
      
      public var hat:int;
      
      public var art:int;
      
      public var skin:int;
      
      public var active:Boolean;
      
      public var backpack:Array;
      
      public var profile:UserProfile;
      
      public function MercenariesTeamMember()
      {
         super();
      }
      
      public function toString() : String
      {
         return "MercenariesTeamMember{" + "id=" + this.id + ",level=" + this.level + ",race=" + this.race + ",armor=" + this.armor + ",attack=" + this.attack + ",hat=" + this.hat + ",art=" + this.art + ",hat=" + this.hat + ",skin=" + this.skin + ",active=" + this.active + ",backpack=" + this.backpack + "}";
      }
   }
}

