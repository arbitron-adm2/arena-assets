package ru.pragmatix.wormix.messages.structures
{
   import § m§.*;
   import §%"1§.§@%;§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §-G§.§&"7§;
   import §2#V§.§-#U§;
   import §4!!§.§76§;
   import §7"Q§.§"&=§;
   import §<%k§.§`!v§;
   import §<V§.*;
   import §=#g§.*;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class WeaponStructure
   {
      
      private var id:uint;
      
      private var count:§&$2§;
      
      public function WeaponStructure(param1:uint = 0, param2:int = 0)
      {
         super();
         this.id = param1;
         this.count = new §&$2§(param2);
      }
      
      public function initFromBackpackItem(param1:BackpackItem) : WeaponStructure
      {
         this.id = param1.getRecord().getId();
         this.count = new §&$2§(param1.getCount());
         return this;
      }
      
      public function getId() : uint
      {
         return this.id;
      }
      
      public function getCount() : int
      {
         return this.count.value;
      }
      
      public function addCount(param1:int) : void
      {
         this.count.value += param1;
      }
      
      public function countIncrement() : void
      {
         ++this.count.value;
      }
      
      public function toString() : String
      {
         return "WpnSt{id=" + String(this.id) + ",count=" + String(this.count.value) + "}";
      }
   }
}

