package ru.pragmatix.wormix.messages.clans.main.server
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §+$=§.§6#A§;
   import §0!§.§6#z§;
   import §2!-§.HpChangeEvent;
   import §4#2§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §<!W§.§;#A§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class ListClansRequestMain
   {
      
      public var searchPhrase:String;
      
      public var reviewStates:Vector.<int> = new Vector.<int>();
      
      public var offset:int;
      
      public var limit:int;
      
      public function ListClansRequestMain(param1:String)
      {
         super();
         this.searchPhrase = param1;
      }
   }
}

