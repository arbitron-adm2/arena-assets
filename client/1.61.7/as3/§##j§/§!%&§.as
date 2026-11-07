package §##j§
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+%S§.§2&>§;
   import §2#i§.§+%z§;
   import §6"'§.*;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   
   public class §!%&§ extends §9x§
   {
      
      private var id:uint;
      
      public function §!%&§(param1:int, param2:int)
      {
         super(param2);
         name = "reagent";
         this.id = param1;
      }
      
      override public function getId() : uint
      {
         return this.id;
      }
      
      override public function toString() : String
      {
         return "{" + name + ",id=" + this.id + ",count=" + count + "}";
      }
   }
}

