package ru.pragmatix.wormix.messages.server
{
   import §"!C§.§2v§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §+#P§.§8"j§;
   import §,%$§.§0>§;
   import §0%j§.*;
   import §0&F§.§4$T§;
   import §7!B§.§&"T§;
   import §8#<§.§1"k§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §>%I§.§-#f§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.physics.§<#`§;
   
   public class OpenChestResult
   {
      
      public var equipId:int;
      
      public var weaponId:int;
      
      public var weaponCount:int;
      
      public var rubyCount:int;
      
      public var fuzyCount:int;
      
      public var recipeId:int;
      
      public var medalCount:int;
      
      public var mutagenCount:int;
      
      public var experience:int;
      
      public var battles:int;
      
      public var bossToken:int;
      
      public var wagerToken:int;
      
      public var result:int;
      
      public function OpenChestResult()
      {
         super();
      }
      
      public function toString() : String
      {
         return "OpenChestResult{" + "equipId=" + this.equipId + ",weaponId=" + this.weaponId + ",weaponCount=" + this.weaponCount + ",rubyCount=" + this.rubyCount + ",fuzyCount=" + this.fuzyCount + ",recipeId=" + this.recipeId + ",medalCount=" + this.medalCount + ",mutagenCount=" + this.mutagenCount + ",experience=" + this.experience + ",battles=" + this.battles + ",bossToken=" + this.bossToken + ",wagerToken=" + this.wagerToken + ",result=" + this.result + "}";
      }
   }
}

