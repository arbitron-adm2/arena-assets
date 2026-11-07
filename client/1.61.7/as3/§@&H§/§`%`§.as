package §@&H§
{
   import § "L§.§`#r§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §%"1§.§+#h§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"R§.*;
   import §&"c§.§5$n§;
   import §,#_§.FrameTimer;
   import §0%[§.§^"5§;
   import §0&F§.FrameTimerEvent;
   import §4!!§.§!%n§;
   import §4'§.§4$&§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§^$E§;
   import §;#O§.§+%7§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §?>§.§0!7§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   
   public class §`%`§ extends §6#I§
   {
      
      public function §`%`§(param1:§+%]§)
      {
         §#%O§ = false;
         super(param1,100,100,true);
         this.x = -200;
         this.y = 100;
         physParams.§5N§ = §9%1§.§&!A§;
      }
      
      public function explode() : void
      {
         var _loc1_:§5$n§ = §5$n§.§<#=§(null,1,0,0);
         inflictDamage(null,_loc1_.damage.value,_loc1_.damageRadius.value,_loc1_.explosionRadius.value);
         §'"$§.§]#I§(owner,x,y,null,_loc1_.damage.value,_loc1_.damageRadius.value,_loc1_.explosionRadius.value,false);
         disposed = true;
      }
   }
}

