package §4#2§
{
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §-%B§.§"`§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §4u§.§;$H§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §@!i§.§5&4§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import avmplus.getQualifiedClassName;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.GetJoinClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.response.GetJoinClansMainResponse;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §,$8§ extends §3U§
   {
      
      public function §,$8§(param1:DisplayObject, param2:Boolean = false)
      {
         super(param1,param2);
         §#!`§().mouseChildren = false;
         §#!`§().mouseEnabled = false;
      }
      
      override public function setItem(param1:§&!e§, param2:§;$H§ = null) : void
      {
         super.setItem(param1,param2);
         if(§0"M§)
         {
            §0"M§.mouseEnabled = false;
            §0"M§.mouseChildren = false;
         }
         §;$4§.params.§+&6§ = 300;
      }
      
      public function removeHint() : void
      {
         §;$4§.removeHintImmediately();
      }
   }
}

