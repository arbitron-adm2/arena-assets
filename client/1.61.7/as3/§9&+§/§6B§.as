package §9&+§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §5"J§.*;
   import §6"'§.§>"V§;
   import §7"Q§.§0$L§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §<$2§.§+$9§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@!i§.§5&4§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6B§ implements §>&5§
   {
      
      private var graphics:String;
      
      public function §6B§(param1:String)
      {
         super();
         this.graphics = param1;
      }
      
      public function activate(param1:§+%]§) : void
      {
         param1.§@$A§ = this.graphics;
         param1.§2!W§();
      }
      
      public function deactivate(param1:§+%]§) : void
      {
         param1.§@$A§ = null;
         param1.§2!W§();
      }
      
      public function §]%W§() : String
      {
         return "none";
      }
   }
}

