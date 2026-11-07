package ru.pragmatix.wormix.messages.client
{
   import §#k§.§9$v§;
   import §&!?§.*;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<$q§.§?!d§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.EndBattleResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class BuyRenameChar
   {
      
      public static const REAL_MONEY:int = 0;
      
      public static const MONEY:int = 1;
      
      public var moneyType:int;
      
      public var teamMemberId:int;
      
      public var name:String;
      
      public function BuyRenameChar(param1:int = 0, param2:String = "", param3:int = 0)
      {
         super();
         this.teamMemberId = param1;
         this.name = param2;
         this.moneyType = param3;
      }
   }
}

