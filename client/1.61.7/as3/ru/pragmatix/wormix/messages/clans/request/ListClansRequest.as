package ru.pragmatix.wormix.messages.clans.request
{
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §'"N§.§4&5§;
   import §0!Y§.§#!Z§;
   import §0"L§.§@#n§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §@$§.§`&C§;
   import §[%§.Dragon;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class ListClansRequest
   {
      
      public var searchPhrase:String;
      
      public var reviewStates:Vector.<int> = new Vector.<int>();
      
      public var offset:int;
      
      public var limit:int;
      
      public function ListClansRequest(param1:String)
      {
         super();
         this.searchPhrase = param1;
      }
   }
}

