package §+%O§
{
   import § !8§.§`!d§;
   import §"%H§.§'%u§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §'!Z§.§;n§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §4!x§.§8#u§;
   import §5!9§.§6$,§;
   import §6_§.*;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §=!p§.§&&0§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§'+§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §4%§
   {
      
      private var instance:§4%§;
      
      private var §8$b§:Rectangle;
      
      private var _stage:Stage;
      
      private var §[%I§:Boolean;
      
      public function §4%§(param1:Stage)
      {
         super();
         this.instance = this;
         this._stage = param1;
      }
      
      public function init() : void
      {
         this.§8$b§ = § "N§.§?$t§();
         this._stage.addEventListener(Event.RESIZE,this.§'$m§);
      }
      
      public function §1%m§(param1:Boolean) : void
      {
         this.§[%I§ = param1;
      }
      
      private function §'$m§(param1:Event) : void
      {
         if(this.§[%I§ || this.stage.displayState != StageDisplayState.NORMAL)
         {
            § "N§.§!$!§(this.§-!'§());
            this.update();
         }
      }
      
      public function update() : void
      {
         var _loc1_:Rectangle = § "N§.§?$t§();
         if(!_loc1_.equals(this.§8$b§))
         {
            this.§8$b§ = _loc1_;
            § "N§.§!$!§(_loc1_);
            this.§-!,§(_loc1_);
            this.§8#0§();
         }
      }
      
      protected function §-!,§(param1:Rectangle) : void
      {
      }
      
      private function §8#0§() : void
      {
         §8#u§.§!s§();
      }
      
      public function get §&"q§() : Rectangle
      {
         return this.§8$b§;
      }
      
      public function get stage() : Stage
      {
         return this._stage;
      }
      
      protected function §-!'§() : Rectangle
      {
         return new Rectangle(0,0,this.stage.stageWidth,this.stage.stageHeight);
      }
   }
}

