package §"#7§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4%_§.ZombieGrave;
   import §6$z§.BonusAttribute;
   import §6_§.*;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §]$&§.§2&2§;
   import §^4§.§]"8§;
   import §^4§.§^"Y§;
   import config.achievements.*;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §7%4§ extends BonusAttribute
   {
      
      public function §7%4§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         owner.attributes.armor.§5#l§(param1);
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.attributes.armor.§5#l§(-param1);
      }
   }
}

