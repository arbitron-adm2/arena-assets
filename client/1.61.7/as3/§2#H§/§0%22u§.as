package §2#H§
{
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §>%I§.§-#f§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.*;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §0"u§ extends §,"R§
   {
      
      public static const NAME:String = "DRUID_SPORE_DEFENCE_BUFF";
      
      public function §0"u§()
      {
         super(null,NAME,§-"^§);
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         if(unit.squad.isAi() && param1.source is §-#f§)
         {
            param1.power *= 0.5;
         }
      }
   }
}

