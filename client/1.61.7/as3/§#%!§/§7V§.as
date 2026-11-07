package §#%!§
{
   import § !P§.§<#q§;
   import § #m§.§2#P§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import §!$D§.*;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§2=§;
   import §3"@§.§##L§;
   import §7$t§.§2"y§;
   import §;$%§.§'%W§;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §7V§ extends §[&H§
   {
      
      private var hintProvider:§[%U§;
      
      public function §7V§(param1:DisplayObject, param2:§2#P§ = null)
      {
         super(param1,param2);
      }
      
      override public function §@!y§(param1:§?A§, param2:§2#P§ = null) : void
      {
         this.hintProvider = §[%U§(param1);
         super.§@!y§(param1,param2);
      }
      
      override public function §&!l§(param1:MouseEvent) : void
      {
         this.hintProvider.§,#<§(param1.shiftKey);
         super.§&!l§(param1);
         var _loc2_:DisplayObject = this.hintProvider.§&k§();
         var _loc3_:int = § "N§.stageHeight - param1.stageY - params.§+"q§;
         if(_loc3_ < this.hintProvider.§7!x§)
         {
            _loc2_.y = § "N§.stageHeight - params.§+"q§ - this.hintProvider.§7!x§;
         }
         else
         {
            _loc2_.y = param1.stageY;
         }
         this.hintProvider.§#$3§(param1.stageX,param1.stageY,params.§+"q§);
         § "N§.scene.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§?M§);
         § "N§.scene.stage.addEventListener(KeyboardEvent.KEY_UP,this.§>U§);
      }
      
      override protected function §5#o§(param1:MouseEvent) : void
      {
         super.§5#o§(param1);
         § "N§.scene.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§?M§);
         § "N§.scene.stage.removeEventListener(KeyboardEvent.KEY_UP,this.§>U§);
      }
      
      private function §?M§(param1:KeyboardEvent) : void
      {
         if(this.hintProvider.§8&C§)
         {
            return;
         }
         if(param1.shiftKey)
         {
            this.hintProvider.§,#<§(true);
         }
      }
      
      private function §>U§(param1:KeyboardEvent) : void
      {
         this.hintProvider.§,#<§(param1.shiftKey);
      }
   }
}

