package §5%S§
{
   import § "L§.§`#r§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%E§.§<#l§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §-@§.§+"A§;
   import §0"L§.*;
   import §0%[§.§1%"§;
   import §0%[§.§]2§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.§[!F§;
   import §2!-§.GameObjectDisposed;
   import §2#H§.§>#M§;
   import §2#i§.§+%z§;
   import §3#T§.§+&F§;
   import §4!x§.§@& §;
   import §4'§.§^"p§;
   import §7$t§.§=?§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<$q§.*;
   import §=!V§.*;
   import §=!p§.§8#x§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.*;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.client.GetMoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §>&-§
   {
      
      private static var queue:Array = [];
      
      private static var timer:Timer = null;
      
      private static var textField:TextField = null;
      
      public function §>&-§()
      {
         super();
      }
      
      public static function init(param1:TextField) : void
      {
         textField = param1;
         textField.antiAliasType = AntiAliasType.NORMAL;
         hideMsg();
      }
      
      public static function §[$9§(param1:String, param2:Boolean = false, param3:uint = 3000) : void
      {
         var msg:String = param1;
         var immediately:Boolean = param2;
         var delay:uint = param3;
         if(immediately)
         {
            reset();
         }
         queue.push(msg);
         if(timer == null)
         {
            timer = new Timer(10);
            timer.addEventListener(TimerEvent.TIMER,function():void
            {
               var _loc1_:String = null;
               hideMsg();
               if(queue.length > 0)
               {
                  _loc1_ = queue.pop();
                  timer.delay = delay;
                  textField = setText(_loc1_);
                  textField.visible = true;
               }
               else
               {
                  timer.stop();
                  timer = null;
               }
            });
            timer.start();
         }
      }
      
      public static function reset() : void
      {
         queue = [];
         if(timer != null)
         {
            timer.stop();
            timer = null;
         }
         hideMsg();
      }
      
      private static function hideMsg() : void
      {
         textField.text = "";
         textField.visible = false;
      }
      
      public static function setText(param1:String) : TextField
      {
         textField.htmlText = param1;
         textField.autoSize = TextFieldAutoSize.CENTER;
         return textField;
      }
   }
}

