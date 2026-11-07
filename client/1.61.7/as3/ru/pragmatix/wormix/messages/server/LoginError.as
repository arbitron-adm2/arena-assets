package ru.pragmatix.wormix.messages.server
{
   import § !8§.§9%+§;
   import §!K§.§&#Q§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&%X§.§-#N§;
   import §+$=§.§6#A§;
   import §3#T§.*;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7!B§.§>"D§;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §?"j§.*;
   import §?#g§.*;
   import §@<§.§+%]§;
   import §[%§.Rhino;
   import §]^§.§3$f§;
   import §^#[§.§&$2§;
   import §`%c§.*;
   import com.greensock.TweenMax;
   import config.§28§;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   
   public class LoginError
   {
      
      public static const PROFILACTIC_WORK:int = 0;
      
      public static const INCORRECT_KEY:int = 1;
      
      public static const ALREADY_IN_GAME:int = 2;
      
      public static const INTERNAL_SERVER_ERROR:int = 3;
      
      public static const BAN:int = 4;
      
      public static const INCORRECT_PROTOCOL_VERSION:int = 6;
      
      public static const SERVER_IS_STARTING:int = 7;
      
      public var code:int;
      
      public function LoginError()
      {
         super();
      }
      
      public function toString() : String
      {
         return "LoginError{code=" + this.code + "}";
      }
   }
}

