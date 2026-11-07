package ru.pragmatix.wormix.messages.server
{
   import § &5§.§0&$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&#h§.§-"F§;
   import §3#a§.§[&A§;
   import §=&!§.§&$a§;
   import §=&!§.§<$Z§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import com.greensock.loading.LoaderStatus;
   import flash.events.KeyboardEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class SearchTheHouseResult
   {
      
      public static const EMPTY:int = 0;
      
      public static const REAL_MONEY:int = 1;
      
      public static const MONEY:int = 2;
      
      public static const NO_FIVE_DAY:int = 4;
      
      public static const ERROR:int = 3;
      
      public static const KEY_LIMIT_EXCEED:int = 5;
      
      public static const REAGENT:int = 7;
      
      public var result:int;
      
      public var value:int;
      
      public var availableSearchKeys:int;
      
      public var friendId:uint;
      
      public var isSecure:Boolean;
      
      public function SearchTheHouseResult()
      {
         super();
      }
   }
}

