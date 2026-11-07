package ru.pragmatix.wormix.gui
{
   import § !P§.*;
   import § #m§.§;#^§;
   import §!#g§.*;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §&&6§.§7$§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §2!-§.§-!6§;
   import §2!-§.DamageEvent;
   import §2#H§.§!%C§;
   import §7!B§.§6#I§;
   import §7!B§.§>"D§;
   import §<!^§.MeteorShard;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import §[$<§.§>!u§;
   import §`%&§.§5$1§;
   import com.greensock.TweenLite;
   import config.achievements.BossAchieves;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.SetCookies;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class ConnectIcon extends §`&-§
   {
      
      public static const NONE:int = -1;
      
      public static const §&$A§:int = 0;
      
      public static const §+#"§:int = 1;
      
      public static const §9%X§:int = 2;
      
      private var states:Vector.<§4#_§> = new Vector.<§4#_§>(0);
      
      private var tween:TweenLite;
      
      private var dispatcher:EventDispatcher;
      
      public function ConnectIcon(param1:EventDispatcher, param2:int, param3:§;#^§ = null, param4:String = null)
      {
         super(§6#A§.§!&6§(§+"'§.§`#"§));
         this.dispatcher = param1;
         width = height = param2;
         this.§,_§("red",§0$N§.PROBLEMS_WITH_CONNECTION,param3,param4);
         this.§,_§("yellow",§0$N§.PROBLEMS_WITH_CONNECTION,param3,param4);
         this.§,_§("green",§0$N§.CONNECTION_IS_OK,param3,param4);
         this.setState(ConnectIcon.NONE);
         param1.addEventListener(Event.CONNECT,this.§`2§);
         param1.addEventListener(Event.CLOSE,this.§0&+§);
         param1.addEventListener(ProgressEvent.SOCKET_DATA,this.§0&+§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§0&+§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0&+§);
      }
      
      private function §0&+§(param1:Event) : void
      {
         this.setState(§8"%§.§?!W§.inBattle ? §&$A§ : §+#"§);
      }
      
      private function §`2§(param1:Event) : void
      {
         this.setState(§9%X§);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.dispatcher.removeEventListener(Event.CONNECT,this.§`2§);
         this.dispatcher.removeEventListener(Event.CLOSE,this.§0&+§);
         this.dispatcher.removeEventListener(ProgressEvent.SOCKET_DATA,this.§0&+§);
         this.dispatcher.removeEventListener(IOErrorEvent.IO_ERROR,this.§0&+§);
         this.dispatcher.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0&+§);
      }
      
      private function §,_§(param1:String, param2:String, param3:§;#^§ = null, param4:String = null) : void
      {
         var _loc5_:§4#_§ = new §4#_§(§#!`§().getChildByName(param1));
         _loc5_.setQtip(param2,param3,param4);
         this.states.push(_loc5_);
      }
      
      public function setState(param1:int) : void
      {
         var i:int;
         var n:int;
         var value:int = param1;
         if(Boolean(this.tween) && this.tween.active)
         {
            this.tween.kill();
         }
         if(value == NONE)
         {
            setVisible(false);
            return;
         }
         i = 0;
         n = int(this.states.length);
         while(i < n)
         {
            this.states[i].setVisible(i == value);
            i++;
         }
         container.alpha = 1;
         setVisible(true);
         this.tween = TweenLite.to(container,1,{
            "alpha":0,
            "delay":5,
            "onComplete":function():void
            {
               setVisible(false);
               container.alpha = 1;
               tween = null;
            }
         });
      }
   }
}

