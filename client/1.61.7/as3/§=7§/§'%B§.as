package §=7§
{
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.Rope;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'%B§ extends §1#g§
   {
      
      private var chestBtn:§6"%§;
      
      public function §'%B§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function deactivate() : void
      {
         this.chestBtn.removeEventListener(MouseEvent.MOUSE_DOWN,this.§&!4§);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:uint = §8"%§.§%$r§.winCount;
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,§0$N§.WIN_LABEL + " " + _loc1_);
         this.chestBtn.setPressed(false);
         this.chestBtn.simpleButton.addEventListener(MouseEvent.MOUSE_DOWN,this.§&!4§);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §&$9§.§>&F§(§'%s§("description"),§"-§.§+$m§,§0$N§.GLADIATOR_COMPLETE_DESCRIPTION);
         this.chestBtn = §!&5§.§[&8§(getChildByName("chestBtn"));
         this.chestBtn.§ "b§ = false;
      }
      
      private function §&!4§(param1:MouseEvent) : void
      {
         this.chestBtn.simpleButton.removeEventListener(MouseEvent.MOUSE_DOWN,this.§&!4§);
         var _loc2_:MovieClip = this.chestBtn.simpleButton.downState as MovieClip;
         _loc2_.addEventListener(Event.ENTER_FRAME,this.onFrame);
         §8"%§.§%$r§.§&z§();
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc2_:MovieClip = param1.target as MovieClip;
         if(_loc2_.currentFrame == _loc2_.totalFrames - 1)
         {
            _loc2_.removeEventListener(Event.ENTER_FRAME,this.onFrame);
            this.chestBtn.setPressed(true);
            if(isShown())
            {
               this.§3$F§();
            }
         }
      }
      
      private function §3$F§() : void
      {
         §8"%§.§%$r§.§#!y§();
      }
   }
}

