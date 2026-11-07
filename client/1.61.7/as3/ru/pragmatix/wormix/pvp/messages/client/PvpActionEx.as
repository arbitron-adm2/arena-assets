package ru.pragmatix.wormix.pvp.messages.client
{
   import §%"1§.§@%;§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[!O§.§@&D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class PvpActionEx extends PvpCommand
   {
      
      public var firstFrame:uint;
      
      public var lastFrame:uint;
      
      public var actionsByFrame:Object;
      
      public function PvpActionEx(param1:uint, param2:uint, param3:§@&D§)
      {
         super();
         this.firstFrame = param1;
         this.lastFrame = param2;
         this.actionsByFrame = param3.actions;
      }
   }
}

