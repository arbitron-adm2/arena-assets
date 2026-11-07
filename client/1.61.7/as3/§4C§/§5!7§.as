package §4C§
{
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §<%E§.§,$2§;
   import §@<§.§+%]§;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   
   public class §5!7§ extends §,$2§
   {
      
      public var photos:Array = [];
      
      public function §5!7§()
      {
         super(null,"PHOTOS.SAVE");
      }
      
      public function §2"8§(param1:§@&C§) : void
      {
         this.photos[this.photos.length] = param1;
      }
   }
}

