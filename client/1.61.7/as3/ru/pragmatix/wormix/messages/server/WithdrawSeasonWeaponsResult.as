package ru.pragmatix.wormix.messages.server
{
   import § $q§.*;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§[&$§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §4'§.§^"p§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§3$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§;$]§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndBattle;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class WithdrawSeasonWeaponsResult
   {
      
      public var withdrawnWeapons:Vector.<WeaponStructure> = new Vector.<WeaponStructure>(0);
      
      public var compensationInMoney:int;
      
      public var compensationInKeys:int;
      
      public var prevSeasonWeapons:Vector.<int> = new Vector.<int>(0);
      
      public var currentSeasonWeapons:Vector.<int> = new Vector.<int>(0);
      
      public var currentSeasonStuff:Vector.<int> = new Vector.<int>(0);
      
      public function WithdrawSeasonWeaponsResult()
      {
         super();
      }
   }
}

