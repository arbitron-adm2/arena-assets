package §@!N§
{
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#5§.*;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §'!Z§.§6S§;
   import §+$=§.§6#A§;
   import §+5§.§5"<§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §4$b§.*;
   import §5"J§.*;
   import §5$]§.§3& §;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §8#o§.§1@§;
   import §9%k§.*;
   import §9&+§.§>&5§;
   import §<!^§.§9"§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §@!i§.§;#L§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §3!3§
   {
      
      public function §3!3§()
      {
         super();
      }
      
      public static function §<%W§(param1:Vector.<MovieClip>, param2:MovieClip = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1)
         {
            _loc3_ = 0;
            _loc4_ = int(param1.length);
            while(_loc3_ < _loc4_)
            {
               param1[_loc3_].play();
               _loc3_++;
            }
         }
         else if(param2)
         {
            §<%W§(§#"R§(param2));
         }
      }
      
      public static function §>!j§(param1:Vector.<MovieClip>, param2:MovieClip = null, param3:Boolean = false) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1)
         {
            _loc4_ = 0;
            _loc5_ = int(param1.length);
            while(_loc4_ < _loc5_)
            {
               if(param1[_loc4_].totalFrames > 1)
               {
                  if(param3)
                  {
                     param1[_loc4_].gotoAndStop(0);
                  }
                  else
                  {
                     param1[_loc4_].stop();
                  }
               }
               _loc4_++;
            }
         }
         else if(param2)
         {
            §>!j§(§#"R§(param2,true,param3));
         }
      }
      
      public static function §#"R§(param1:MovieClip, param2:Boolean = true, param3:Boolean = false) : Vector.<MovieClip>
      {
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:MovieClip = null;
         var _loc4_:int = param1.numChildren;
         var _loc5_:Vector.<MovieClip> = param2 ? new <MovieClip>[param1] : new Vector.<MovieClip>(0);
         if(_loc4_ > 0)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = param1.getChildAt(_loc6_);
               if(_loc7_ is MovieClip)
               {
                  _loc8_ = MovieClip(_loc7_);
                  if(_loc8_.totalFrames > 1)
                  {
                     _loc5_[_loc5_.length] = _loc8_;
                  }
                  _loc5_ = _loc5_.concat(§#"R§(_loc8_,param2,param3));
               }
               _loc6_++;
            }
         }
         return _loc5_;
      }
      
      public static function §&%!§() : MovieClip
      {
         return §6#A§.§!&6§(§8"Z§());
      }
      
      public static function §8"Z§() : String
      {
         return §0#2§.§0%Y§() ? "IconChristmasKey" : "IconSimpleKey";
      }
      
      public static function §-"9§(param1:DisplayObject, param2:Sprite = null, param3:Boolean = true, param4:Boolean = true, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false, param9:Boolean = true, param10:Function = null) : Sprite
      {
         param2 ||= new Sprite();
         if(param1.parent)
         {
            param1.parent.addChild(param2);
         }
         param2.addChild(param1);
         if(param4)
         {
            param2.graphics.beginFill(0,0);
            param2.graphics.drawRect(0,0,param1.width,param1.height);
            param2.graphics.endFill();
         }
         if(param3)
         {
            param2.x = param1.x;
            param2.y = param1.y;
            param1.x = param1.y = 0;
         }
         param2.buttonMode = param5;
         param2.useHandCursor = param6;
         param2.mouseEnabled = param7;
         param2.mouseChildren = param8;
         param2.doubleClickEnabled = param9;
         if(param10 != null)
         {
            param2.addEventListener(MouseEvent.DOUBLE_CLICK,param10);
         }
         return param2;
      }
   }
}

