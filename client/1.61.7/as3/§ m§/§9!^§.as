package § m§
{
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&§.§<!U§;
   import §1#p§.*;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §9!^§ extends §<!U§
   {
      
      private var allTeam:Boolean;
      
      private var callback:Function;
      
      public function §9!^§(param1:Boolean, param2:Function)
      {
         super();
         this.allTeam = param1;
         this.callback = param2;
         §#7§(§0$N§.TITLE_ATTENTION);
         §8&;§(param1 ? §5&4§.§>"'§ : §5&4§.§+$1§);
         §`"R§("message",param1 ? §0$N§.WIPE_TEAM_QTIP : §0$N§.REGEN_CANDIDATES_QTIP);
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         §&#F§(true);
         §8"%§.§&"n§.§?%!§(this.allTeam,price,this.§,e§);
      }
      
      protected function §,e§(param1:Boolean) : void
      {
         §&#F§(false);
         this.callback(param1);
         hide();
      }
   }
}

