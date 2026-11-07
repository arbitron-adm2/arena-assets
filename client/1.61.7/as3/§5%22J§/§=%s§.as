package §5"J§
{
   import § &5§.§=#P§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §1#p§.*;
   import §4&F§.*;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.PushingMine;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §=%s§ extends §<!>§
   {
      
      private var §[z§:§4!m§;
      
      public function §=%s§(param1:String, param2:uint, param3:Boolean = false)
      {
         super(param2,param3);
         this.§[z§ = new §4!m§(param1,mapRecord);
      }
      
      override protected function § "a§(param1:uint) : void
      {
         super.§ "a§(param1);
         this.§[z§.§ "a§(param1);
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         this.§[z§.§6&§(param1);
      }
      
      override public function §1%C§(param1:§?!d§) : void
      {
         super.§1%C§(param1);
         param1.§`%?§ = §"%r§.STABLE;
      }
   }
}

