package ru.pragmatix.wormix.messages.server
{
   import § #9§.§9j§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §2#H§.§>#M§;
   import §2#i§.§+%z§;
   import §5"J§.*;
   import §7$t§.§^$E§;
   import §9%W§.§!"G§;
   import §=!p§.§9#n§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.TweenLite;
   import com.greensock.data.TweenLiteVars;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.*;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class ShopResult
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public static const MIN_REQUIREMENTS_ERROR:int = 2;
      
      public static const NOT_ENOUGH_MONEY:int = 3;
      
      public static const CONFIRM_FAILURE:int = 4;
      
      public static const NOT_ENOUGH_BATTLE_TOKENS:int = 5;
      
      public static const NOT_ENOUGH_REAGENTS:int = 6;
      
      public static const NOT_FOR_SALE:int = 7;
      
      public var result:int;
      
      public var weapons:Array = [];
      
      public var stuff:Array = [];
      
      public var temporalStuff:Array = [];
      
      public function ShopResult()
      {
         super();
      }
      
      public function toString() : String
      {
         switch(this.result)
         {
            case ERROR:
               return "ShopResult{ result = ERROR }";
            case SUCCESS:
               return "ShopResult{ result = SUCCESS }";
            case MIN_REQUIREMENTS_ERROR:
               return "ShopResult{ result = MIN_REQUIREMENTS_ERROR }";
            case NOT_ENOUGH_MONEY:
               return "ShopResult{ result = NOT_ENOUGH_MONEY }";
            case CONFIRM_FAILURE:
               return "ShopResult{ result = CONFIRM_FAILURE }";
            case NOT_ENOUGH_BATTLE_TOKENS:
               return "ShopResult{ result = NOT_ENOUGH_BATTLE_TOKENS }";
            case NOT_ENOUGH_REAGENTS:
               return "ShopResult{ result = NOT_ENOUGH_REAGENTS }";
            case NOT_FOR_SALE:
               return "ShopResult{ result = NOT_FOR_SALE }";
            default:
               return "ShopResult{ result = " + this.result + "}";
         }
      }
   }
}

