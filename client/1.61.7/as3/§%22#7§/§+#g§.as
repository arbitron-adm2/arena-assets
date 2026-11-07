package §"#7§
{
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §6$z§.BonusAttribute;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9&+§.§6&=§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §+#g§ extends BonusAttribute
   {
      
      public function §+#g§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         owner.attributes.jump.§4!D§(param1);
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.attributes.jump.§4!D§(-param1);
      }
   }
}

