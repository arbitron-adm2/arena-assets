package ru.pragmatix.wormix.messages.server
{
   import §#"V§.§!&5§;
   import §'$j§.§'-§;
   import §+$=§.*;
   import §+%S§.§ #R§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §3#a§.§<#_§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7$t§.§;#_§;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.system.ApplicationDomain;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   
   public class BuyRaceResponse
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public static const MIN_REQUIREMENTS_ERROR:int = 2;
      
      public static const NOT_ENOUGH_MONEY:int = 3;
      
      public var result:int;
      
      public var costs:Array;
      
      public var race:int;
      
      public var races:int;
      
      public var isSecure:Boolean;
      
      public var sessionKey:String;
      
      public function BuyRaceResponse()
      {
         super();
      }
   }
}

