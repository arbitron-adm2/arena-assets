package §9z§
{
   import § #g§.*;
   import § &5§.§=#P§;
   import §#!5§.§]#w§;
   import §%"1§.§@%;§;
   import §+%S§.§2&>§;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class § !%§ extends §]#w§
   {
      
      public function § !%§(param1:MovieClip, param2:Boolean = true)
      {
         super(param1,param2);
         addEventListener(Event.CHANGE,this.§>"i§);
      }
      
      protected function §>"i§(param1:Event) : void
      {
         this.§[$'§();
      }
      
      public function §[$'§() : void
      {
      }
      
      public function §<$a§() : void
      {
         setValue(getValue() + §>!y§());
      }
      
      public function §8$o§() : void
      {
         setValue(getValue() - §>!y§());
      }
      
      override public function destroy() : void
      {
         removeEventListener(Event.CHANGE,this.§>"i§);
         super.destroy();
      }
   }
}

