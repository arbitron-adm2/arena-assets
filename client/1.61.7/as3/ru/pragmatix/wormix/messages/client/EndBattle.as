package ru.pragmatix.wormix.messages.client
{
   import § &5§.§@N§;
   import §!K§.§&#Q§;
   import §"&?§.*;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class EndBattle
   {
      
      public static const RESULT_WINNER:int = 1;
      
      public static const RESULT_NOT_WINNER:int = -1;
      
      public static const RESULT_DRAW_GAME:int = 0;
      
      public static const RESULT_SURRENDERED:int = -4;
      
      public static const TYPE_PVP_GAME:int = 3;
      
      public var result:int;
      
      public var type:int;
      
      public var expBonus:int;
      
      public var battleId:int;
      
      public var missionId:int;
      
      public var items:Array = [];
      
      public var banType:uint = 0;
      
      public var banNote:String = "";
      
      public var sessionKey:String = "";
      
      public var collectedReagents:Vector.<int> = new Vector.<int>(0);
      
      public var totalTurnsCount:int;
      
      public var totalDamageToPlayer:int;
      
      public var totalDamageToBoss:int;
      
      public var totalUsedItems:Array = [];
      
      public var journal:Array;
      
      public var mapId:int;
      
      public function EndBattle(param1:int = 0, param2:int = 0)
      {
         super();
         this.result = param1;
         this.type = param2;
      }
      
      public function toString() : String
      {
         return "EndBattle{" + "result=" + this.result + ",battleId=" + this.battleId + ",missionId=" + this.missionId + ",banType=" + this.banType + ",banNote=" + this.banNote + ",mapId=" + this.mapId + ",totalTurnsCount=" + this.totalTurnsCount + ",totalDamageToPlayer=" + this.totalDamageToPlayer + ",totalDamageToBoss=" + this.totalDamageToBoss + ",sessionKey=" + this.sessionKey + ",type=" + this.type + ",expBonus=" + this.expBonus + ",items=" + this.items + ",collectedReagents=" + this.collectedReagents + ",totalUsedItems=" + this.totalUsedItems + "}";
      }
   }
}

