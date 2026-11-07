package §"#7§
{
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§!!q§;
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §2!-§.§'5§;
   import §6$z§.BonusAttribute;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import flash.ui.Keyboard;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§3!f§;
   
   public class §]#^§ extends BonusAttribute
   {
      
      public function §]#^§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         owner.attributes.hp.§7K§(param1);
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.attributes.hp.§7K§(-param1);
      }
   }
}

