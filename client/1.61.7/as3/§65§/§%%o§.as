package §65§
{
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §2B§.§^%y§;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §@!N§.§3!3§;
   import §@!i§.§<#&§;
   import §@8§.§%Z§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import §`#x§.*;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.LowerRankInClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.LowerRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.utils.*;
   
   public class §%%o§ extends §`"C§
   {
      
      public function §%%o§(param1:String, param2:int, param3:int = 1)
      {
         super(param1,param2,param3);
      }
      
      override public function place(param1:§+%]§) : void
      {
         super.place(param1);
         Application.scene.addEventListener(§0%v§.SOT,this.onNextTurn);
      }
      
      override public function clear() : void
      {
         if(!§&%M§)
         {
            Application.scene.removeEventListener(§0%v§.SOT,this.onNextTurn);
            super.clear();
         }
      }
      
      protected function onNextTurn(param1:Event) : void
      {
         this.§7$d§();
         if(++counter.value >= duration.value && duration.value != -1)
         {
            this.clear();
         }
      }
      
      protected function §7$d§() : void
      {
      }
   }
}

