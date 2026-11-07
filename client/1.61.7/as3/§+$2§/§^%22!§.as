package §+$2§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §%"Z§.§+$A§;
   import §&§.§<!U§;
   import §-&5§.*;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §4#`§.*;
   import §4%_§.§3§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§^%%§;
   import §<!W§.§3"R§;
   import §<!W§.§;!`§;
   import §<$q§.§,%3§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §@!i§.*;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^#[§.§&$2§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.Font;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §^"!§ extends §<!U§
   {
      
      private var callback:Function;
      
      public function §^"!§(param1:Function)
      {
         super();
         §#7§(§0$N§.TITLE_ATTENTION);
         §`"R§("message",§0$N§.BUY_TASK_REPLACE_TEXT);
         §8&;§(§5&4§.§@#4§());
         this.callback = param1;
      }
      
      override protected function §%&9§() : void
      {
         §7"x§ = §0$N§.BUTTON_RESET;
         super.§%&9§();
         §<"b§ = true;
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         this.callback(param1);
         hide();
      }
   }
}

