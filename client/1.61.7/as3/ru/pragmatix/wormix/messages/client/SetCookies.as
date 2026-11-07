package ru.pragmatix.wormix.messages.client
{
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §&&6§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §8#<§.§^#O§;
   import §9![§.§^§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §["3§.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class SetCookies
   {
      
      public var names:Array;
      
      public var values:Array;
      
      public function SetCookies(param1:Array, param2:Array)
      {
         super();
         this.names = param1;
         this.values = param2;
      }
      
      public function toString() : String
      {
         return "SetCookies{" + " names=" + this.names + " values=" + this.values + " }";
      }
   }
}

