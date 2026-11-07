package §@"x§
{
   import § !8§.§`!d§;
   import §!%6§.*;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §+%S§.§0"G§;
   import §0&F§.§0%v§;
   import §3#T§.§+&F§;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §<"L§.§##-§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §@!W§.§]$i§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   
   public class §9%A§ extends §]$i§
   {
      
      public function §9%A§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         super.setDisabled(param1);
         container.alpha = param1 ? 0.5 : 1;
         §#!`§().mouseEnabled = !param1;
         §#!`§().mouseChildren = !param1;
      }
   }
}

