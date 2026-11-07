package §5"J§
{
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<!>§ extends §'& §
   {
      
      public function §<!>§(param1:uint, param2:Boolean = false)
      {
         super(param1,param2);
      }
      
      override protected function §""G§() : void
      {
         § "U§ = new §"&B§();
      }
      
      override public function §1%C§(param1:§?!d§) : void
      {
         param1.§;Y§ = false;
         param1.§`!I§ = false;
         param1.§`%?§ = new §"%r§(12,3,-1);
         param1.timer = §,%3§.§2#;§;
         param1.chatSettings.§+$`§ = true;
         param1.§!"3§ = false;
         param1.chatSettings = new §6%b§(§1!$§.§!"1§,§1!$§.NONE,§1!$§.NONE,§1!$§.§%%-§,true);
      }
   }
}

