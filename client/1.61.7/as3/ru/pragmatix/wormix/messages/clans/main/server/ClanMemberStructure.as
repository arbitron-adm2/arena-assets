package ru.pragmatix.wormix.messages.clans.main.server
{
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §&&6§.§8"O§;
   import §'"N§.*;
   import §-%B§.§-"o§;
   import §0&F§.§`"^§;
   import §2"L§.§^$y§;
   import §4$b§.§2m§;
   import §7!B§.§&"T§;
   import §7$t§.§^%%§;
   import §=#g§.§!"X§;
   import §=1§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class ClanMemberStructure
   {
      
      public var rank:int;
      
      public var clanId:int;
      
      public var clanName:String;
      
      public var clanEmblem:Vector.<uint> = new Vector.<uint>();
      
      public var clanRating:int;
      
      public var clanSeasonRating:int;
      
      public var reviewState:int;
      
      public var prevSeasonTopPlace:int;
      
      public function ClanMemberStructure()
      {
         super();
      }
      
      public function isBlocked() : Boolean
      {
         return this.reviewState == -1;
      }
   }
}

