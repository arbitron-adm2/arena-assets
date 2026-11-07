package §=&!§
{
   import § !P§.§1!8§;
   import §"$+§.§^$`§;
   import §##y§.CollisionEvent;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §0%[§.§""n§;
   import §0%[§.Cookie;
   import §0%j§.*;
   import §3#T§.§+&F§;
   import §3#T§.§;#Q§;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §=#g§.§%!x§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import avmplus.getQualifiedClassName;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.client.EndBattle;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<$Z§
   {
      
      public static const §+%I§:§<$Z§ = new §<$Z§(EndBattle.RESULT_WINNER);
      
      public static const §!M§:§<$Z§ = new §<$Z§(EndBattle.RESULT_NOT_WINNER);
      
      public static const §7!i§:§<$Z§ = new §<$Z§(EndBattle.RESULT_DRAW_GAME);
      
      public static const UNDEFINED:§<$Z§ = new §<$Z§(42);
      
      public var value:int;
      
      public function §<$Z§(param1:int)
      {
         super();
         this.value = param1;
      }
      
      public function toString() : String
      {
         return "BattleResult{" + "value=" + this.value + "}";
      }
      
      public function equals(param1:§<$Z§) : Boolean
      {
         return param1 == this;
      }
   }
}

