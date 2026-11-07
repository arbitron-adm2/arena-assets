package ru.pragmatix.wormix.messages.server
{
   import § &5§.§@N§;
   import §"&?§.*;
   import §1#p§.§2=§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class BuyResetBonusItemsResult
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public static const MIN_REQUIREMENTS_ERROR:int = 2;
      
      public static const NOT_ENOUGH_MONEY:int = 3;
      
      public static const CONFIRM_FAILURE:int = 4;
      
      public var result:int;
      
      public var requestNum:int;
      
      public var isSecure:Boolean;
      
      public function BuyResetBonusItemsResult()
      {
         super();
      }
   }
}

