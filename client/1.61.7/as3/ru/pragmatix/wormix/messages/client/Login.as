package ru.pragmatix.wormix.messages.client
{
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§[0§;
   import §-8§.§3!x§;
   import §0!§.§8$Y§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §4f§.§-&§;
   import §6"'§.§9$Z§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §=&6§.*;
   import §@<§.§+%]§;
   import §`%c§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class Login extends LoginCommon
   {
      
      public var id:uint;
      
      public var referrerId:uint;
      
      public function Login(param1:uint, param2:uint)
      {
         super();
         this.id = param1;
         this.referrerId = param2;
      }
      
      override public function toString() : String
      {
         return "Login{socialUserId=" + String(this.id) + ", auth_key=" + String(authKey) + ", socialId=" + String(socialCode) + "}";
      }
   }
}

