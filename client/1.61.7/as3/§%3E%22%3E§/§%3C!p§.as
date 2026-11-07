package §>">§
{
   import §#%!§.§7V§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §2"L§.§!#H§;
   import §2"v§.*;
   import §2#V§.§-#U§;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §?o§.§!%I§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<!p§ extends §!%I§
   {
      
      private static const § $Z§:uint = 90;
      
      private var §`m§:§7#P§;
      
      public function §<!p§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:uint = 1, param6:Number = NaN)
      {
         if(isNaN(param6))
         {
            param6 = -Math.PI / 2 + param1.direction * Math.PI / 4;
         }
         §=#Y§ = false;
         super(param1,param4,§ $Z§,param6,param5,0.2,null);
         §2#J§ = null;
         §5L§ = null;
         this.§`m§ = §@%;§.play(§`!v§.§^K§,true);
         §`4§ = §+#G§;
         clip.rotation = 0;
         initialize(new Point(param2,param3));
         §1"-§.§;%k§(this,§;n§.§7q§,4,2);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.§`m§ != null)
         {
            this.§`m§.stop();
         }
      }
   }
}

