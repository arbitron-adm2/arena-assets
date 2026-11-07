package ru.pragmatix.wormix.messages.structures
{
   import § %f§.§;$y§;
   import § &5§.§=#P§;
   import §"!C§.§"#T§;
   import §&#h§.*;
   import §^#[§.§&$2§;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import ru.pragmatix.wormix.messages.clans.structures.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BossWormStructure
   {
      
      public var isPlayerTeam:Boolean;
      
      public var hp:int;
      
      public function BossWormStructure(param1:Boolean = true, param2:int = 0)
      {
         super();
         this.isPlayerTeam = param1;
         this.hp = param2;
      }
      
      public function toString() : String
      {
         return "BossWormStructure{" + " isPlayerTeam=" + this.isPlayerTeam + ", hp=" + this.hp + " }";
      }
   }
}

