package §?>§
{
   import §%"Z§.§+$A§;
   import §&§.§<!U§;
   import §@!i§.§5&4§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §^$W§ extends §<!U§
   {
      
      private var profileId:int;
      
      private var newName:String;
      
      private var callback:Function;
      
      public function §^$W§(param1:int, param2:String, param3:Function)
      {
         super();
         this.profileId = param1;
         this.newName = param2;
         this.callback = param3;
         §8&;§(§5&4§.§'%1§);
         §#7§(§0$N§.§%! §("BUY_RENAME_TITLE"));
         §`"R§("message",§0$N§.§%! §("NEW_NAME_CHAR_LABEL") + "\n\n<b>" + param2 + "<b>");
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         §&#F§(true);
         §8"%§.§&"n§.§@!x§(this.profileId,this.newName,param1,this.§,e§);
      }
      
      protected function §,e§(param1:Boolean) : void
      {
         §&#F§(false);
         this.callback(param1);
         if(param1)
         {
            Application.§5!>§.§^P§.§6X§();
         }
         hide();
      }
   }
}

