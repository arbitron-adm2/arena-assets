package § &5§
{
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §#%!§.§7V§;
   import §#%!§.§[%U§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&$Y§.§6[§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §0%[§.§""n§;
   import §2#i§.§+%z§;
   import §3#T§.§5!M§;
   import §5"J§.§"&B§;
   import §6#Z§.§&!Z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §;%j§.§]g§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=#g§.§%!x§;
   import §=#g§.§&%5§;
   import §=$#§.§`%u§;
   import §=&!§.§4$z§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import avmplus.getQualifiedClassName;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.ClearName;
   import ru.pragmatix.wormix.messages.server.ClearNameResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §%$O§
   {
      
      private static var cameraMoveTimer:Timer;
      
      private static var §6">§:Timer;
      
      private static var listenerScope:Object;
      
      private static var §=&&§:§&"T§;
      
      public function §%$O§()
      {
         super();
      }
      
      private static function §;%N§(param1:§0&$§, param2:int, param3:int) : void
      {
         var frameCount:int;
         var step_t:int;
         var step_x:int = 0;
         var step_y:int = 0;
         var scene:§0&$§ = param1;
         var dest_x:int = param2;
         var dest_y:int = param3;
         if(cameraMoveTimer != null && cameraMoveTimer.running)
         {
            cameraMoveTimer.stop();
         }
         frameCount = 40;
         step_x = (dest_x - scene.scrollRect.x) / frameCount;
         step_y = (dest_y - scene.scrollRect.y) / frameCount;
         step_t = 10;
         cameraMoveTimer = new Timer(step_t);
         cameraMoveTimer.addEventListener(TimerEvent.TIMER,function():void
         {
            cameraMoveTo(scene,scene.scrollRect.x + step_x,scene.scrollRect.y + step_y);
            if(frameCount-- == 0)
            {
               cameraMoveTimer.stop();
               cameraMoveTimer = null;
            }
         });
         cameraMoveTimer.start();
      }
      
      public static function §7&G§(param1:§0&$§, param2:Number) : void
      {
         var step:Number = NaN;
         var scene:§0&$§ = param1;
         var scale:Number = param2;
         step = 0.02;
         §6">§ = new Timer(10);
         §6">§.addEventListener(TimerEvent.TIMER,function():void
         {
            scene.scale = scene.scaleX + step;
            scene.§7#o§.§0#l§.§^$5§(scene.scaleX);
            if(scene.scaleX >= scale)
            {
               if(§6">§ != null)
               {
                  §6">§.stop();
               }
               scene.§&%U§(true);
               §6">§ = null;
            }
         });
         scene.§&%U§(false);
         §6">§.start();
      }
      
      public static function §4!#§(param1:§0&$§, param2:Number) : void
      {
         param1.§&%U§(false);
         param1.scale = param2;
         param1.§7#o§.§0#l§.§^$5§(param1.scaleX);
         param1.§&%U§(true);
      }
      
      public static function §<"Q§(param1:§0&$§, param2:int, param3:int) : void
      {
         var _loc4_:Rectangle = param1.scrollRect;
         cameraMoveTo(param1,_loc4_.x + param2,_loc4_.y + param3);
      }
      
      public static function cameraMoveTo(param1:§0&$§, param2:Number, param3:Number) : void
      {
         var _loc4_:Rectangle = param1.scrollRect;
         var _loc5_:int = _loc4_.x;
         var _loc6_:int = _loc4_.y;
         _loc4_.x = param2;
         _loc4_.y = param3;
         if(_loc4_.y + _loc4_.height + 10 > param1.height)
         {
            _loc4_.y = param1.height - _loc4_.height - 10;
         }
         else if(_loc4_.y - 10 < 0)
         {
            _loc4_.y = 10;
         }
         if(_loc4_.x + _loc4_.width + 10 > param1.width)
         {
            _loc4_.x = param1.width - _loc4_.width - 10;
         }
         else if(_loc4_.x - 10 < 0)
         {
            _loc4_.x = 10;
         }
         param1.scrollRect = _loc4_;
         var _loc7_:Rectangle = param1.§'#6§;
         _loc7_.x += (_loc4_.x - _loc5_) / 5;
         _loc7_.y += (_loc4_.y - _loc6_) / 5;
         param1.§'#6§ = _loc7_;
      }
      
      private static function §@$-§(param1:§0&$§, param2:int, param3:int, param4:Number = 0.5, param5:Boolean = true) : void
      {
         var scene:§0&$§ = param1;
         var toX:int = param2;
         var toY:int = param3;
         var duration:Number = param4;
         var killTweens:Boolean = param5;
         if(killTweens)
         {
            kill(scene);
         }
         listenerScope = {
            "slowMoveX":scene.scrollRect.x,
            "slowMoveY":scene.scrollRect.y,
            "scene":scene
         };
         TweenMax.to(listenerScope,duration,{
            "slowMoveX":toX,
            "slowMoveY":toY,
            "onUpdate":onUpdateListener,
            "onUpdateParams":[listenerScope],
            "onComplete":function():void
            {
               listenerScope = null;
            }
         });
      }
      
      public static function §9%L§(param1:§0&$§, param2:Number, param3:Number, param4:Number = 0.5, param5:Boolean = true) : void
      {
         var _loc6_:Rectangle = param1.scrollRect;
         §@$-§(param1,_loc6_.x + param2,_loc6_.y + param3,param4,param5);
      }
      
      private static function onUpdateListener(param1:Object) : void
      {
         cameraMoveTo(param1.scene,param1.slowMoveX,param1.slowMoveY);
      }
      
      public static function §7"l§(param1:§0&$§, param2:Number, param3:Number = 0.5, param4:Boolean = true) : void
      {
         var scene:§0&$§ = param1;
         var newScale:Number = param2;
         var duration:Number = param3;
         var killTweens:Boolean = param4;
         if(killTweens)
         {
            kill(scene);
         }
         scene.§&%U§(false);
         TweenMax.to(scene,duration,{
            "scale":newScale,
            "onComplete":function():void
            {
               scene.§&%U§(true);
            }
         });
      }
      
      public static function §^#4§(param1:§0&$§, param2:Vector.<§&"T§>) : void
      {
         var _loc3_:§]$;§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§&"T§ = null;
         if(!§=&&§ || §=&&§.disposed || §=&&§.stable)
         {
            §=&&§ = null;
            _loc3_ = §8"%§.§?!W§.§4"m§;
            _loc4_ = Boolean(_loc3_) && _loc3_.§=%g§() && !_loc3_.§'U§();
            if(!_loc4_)
            {
               if(§8"%§.§&S§.§?!&§())
               {
                  for each(_loc5_ in param2)
                  {
                     if(!_loc5_.disposed && !_loc5_.stable && _loc5_.§#%O§)
                     {
                        §=&&§ = _loc5_;
                        break;
                     }
                  }
               }
            }
            else if(!_loc3_.activeUnit.disposed && !_loc3_.activeUnit.stable)
            {
               if(§8"%§.§&S§.§!$X§())
               {
                  §=&&§ = _loc3_.activeUnit;
               }
            }
         }
         if(§=&&§)
         {
            §0!&§(param1,§=&&§);
         }
      }
      
      private static function §0!&§(param1:§0&$§, param2:§&"T§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param2.speedX < 0 && param2.x < param1.scrollRect.x + 100)
         {
            _loc3_ = param2.speedX;
         }
         else if(param2.speedX > 0 && param2.x > param1.scrollRect.right - 100)
         {
            _loc3_ = param2.speedX;
         }
         if(param2.speedY > 0 && param2.y > param1.scrollRect.bottom - 100)
         {
            _loc4_ = param2.speedY;
         }
         else if(param2.speedY < 0 && param2.y < param1.scrollRect.y + 100)
         {
            _loc4_ = param2.speedY;
         }
         if(_loc3_ != 0 || _loc4_ != 0)
         {
            cameraMoveTo(param1,param1.scrollRect.x + _loc3_,param1.scrollRect.y + _loc4_);
         }
      }
      
      public static function §4%s§(param1:§0&$§, param2:§&"T§, param3:Boolean, param4:Boolean = false) : void
      {
         var _loc5_:§&%5§ = §8"%§.§^%W§.§"$=§();
         var _loc6_:int = param1.scrollRect.x;
         var _loc7_:int = param1.scrollRect.y;
         if(param3)
         {
            _loc6_ = param2.x - _loc5_.§@%<§() / param1.scaleX / 2;
            _loc7_ = param2.y - _loc5_.§'$#§() / param1.scaleY / 2;
         }
         else
         {
            if(param2.x > param1.scrollRect.right - 50)
            {
               _loc6_ = param2.x + 250 - _loc5_.§@%<§() / param1.scaleX;
            }
            else if(param2.x < param1.scrollRect.x + 50)
            {
               _loc6_ = param2.x - 250;
            }
            if(param2.y > param1.scrollRect.bottom - 50)
            {
               _loc7_ = param2.y + 250 - _loc5_.§'$#§() / param1.scaleY;
            }
            else if(param2.y < param1.scrollRect.y + 50)
            {
               _loc7_ = param2.y - 250;
            }
         }
         §;%N§(param1,_loc6_,_loc7_);
         if(param4)
         {
            §7&G§(param1,§8"%§.§&S§.§4"'§());
         }
      }
      
      public static function §3%R§(param1:§0&$§, param2:int, param3:int, param4:Number = 0) : void
      {
         var _loc5_:§&%5§ = null;
         _loc5_ = §8"%§.§^%W§.§"$=§();
         var _loc6_:int = param2 - _loc5_.§@%<§() / param1.scaleX / 2;
         var _loc7_:int = param3 - _loc5_.§'$#§() / param1.scaleY / 2;
         §;%N§(param1,_loc6_,_loc7_);
         if(param4 >= param1.§7#o§.§0#l§.§^$Z§() && param4 <= param1.§7#o§.§0#l§.§"&$§())
         {
            §7"l§(param1,param4,0.5,false);
         }
      }
      
      public static function kill(param1:§0&$§) : void
      {
         TweenMax.killTweensOf(param1);
         if(listenerScope)
         {
            TweenMax.killTweensOf(listenerScope);
            listenerScope = null;
         }
         if(cameraMoveTimer)
         {
            cameraMoveTimer.stop();
            cameraMoveTimer = null;
         }
         if(§6">§)
         {
            §6">§.stop();
            §6">§ = null;
         }
      }
   }
}

