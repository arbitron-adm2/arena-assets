package §9m§
{
   import §%"Z§.§+$A§;
   import §0&F§.§0%v§;
   import §1&-§.§'$y§;
   import §5%S§.§>&-§;
   import §6$z§.BonusBuff;
   import §7$t§.§;#_§;
   import §@<§.§+%]§;
   import §[$P§.§>%a§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §>%2§ extends BonusBuff
   {
      
      public static const PERIOD_2:int = 2;
      
      public static const PERIOD_3:int = 3;
      
      public static const PERIOD_4:int = 4;
      
      public static const PERIOD_10:int = 10;
      
      private var period:int;
      
      public function §>%2§(param1:int = -1)
      {
         super();
         this.period = param1;
      }
      
      override protected function activate(param1:int) : void
      {
         buff = new §'$y§(getValue(),this.period);
      }
   }
}

