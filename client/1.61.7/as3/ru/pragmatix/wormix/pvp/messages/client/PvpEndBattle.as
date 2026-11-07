package ru.pragmatix.wormix.pvp.messages.client
{
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §0&F§.§0%v§;
   import §4f§.§-&§;
   import §<!^§.§]#u§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.events.TouchEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   
   public class PvpEndBattle
   {
      
      public var battleId:uint;
      
      public var turnNum:uint;
      
      public var commandNum:uint;
      
      public var battleResult:int;
      
      public var ratingPoints:int;
      
      public var rankPoints:int;
      
      public var confirmed:Boolean;
      
      public var award:Array;
      
      public var note:String;
      
      public function PvpEndBattle()
      {
         super();
      }
      
      public function toString() : String
      {
         return "PvpEndBattle { " + ", battleId=" + this.battleId + ", turnNum=" + this.turnNum + ", commandNum=" + this.commandNum + ", battleResult=" + this.battleResult + ", ratingPoints=" + this.ratingPoints + ", rankPoints=" + this.rankPoints + ", confirmed=" + this.confirmed + ", award=" + this.award + ", note=" + this.note + " }";
      }
   }
}

