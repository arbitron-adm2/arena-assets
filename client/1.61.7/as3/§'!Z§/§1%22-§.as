package §'!Z§
{
   import § !8§.§9%+§;
   import § #9§.§"$t§;
   import § &5§.§%$O§;
   import § &5§.§0&$§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"&?§.§ "F§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §+$=§.*;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §02§.§<!v§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#i§.§9##§;
   import §2#x§.*;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §5!9§.§6$,§;
   import §5#`§.§7%g§;
   import §5$]§.§3& §;
   import §6"'§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7!B§.§6#I§;
   import §7!B§.§`"d§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §8#a§.§@#c§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §<!W§.§=!6§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §?!E§.*;
   import §?#g§.*;
   import §?$7§.§!§;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §@!N§.§'+§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §[$<§.§-&>§;
   import §[$<§.§;#K§;
   import §[$<§.§>!u§;
   import §[$<§.§>"9§;
   import §[$<§.§>$o§;
   import §[$<§.§[!$§;
   import §^!]§.§-$w§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.BitmapData;
   import flash.display.CapsStyle;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.LineScaleMode;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.BlurFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §1"-§
   {
      
      public static const PI_QUARTER:Number = Math.PI / 4;
      
      public static const PI_QUARTER_X2:Number = 2 * PI_QUARTER;
      
      public static const PI_QUARTER_X3:Number = 3 * PI_QUARTER;
      
      public static const §6"F§:String = "MonsterEn";
      
      public static const §^&3§:String = "MonsterRu";
      
      public static const §'$!§:String = "WindAura";
      
      public static const §<W§:String = "Obsession";
      
      public static const §&%m§:String = "SoulAura";
      
      public static const §>#t§:String = "RageAura";
      
      public static const §+@§:String = "RageAuraBig";
      
      public static const §`"g§:String = "DemonicDamage";
      
      public static const §^"^§:String = "AimCross";
      
      public static const §3"o§:String = "AntitoxinActivation";
      
      public static const §'$B§:String = "AntitoxinEffect";
      
      public static const §>&;§:String = "ToxinActivation";
      
      public static const §8"r§:String = "ToxinEffect";
      
      public static const §0$4§:String = "PoisoningReduceAppear";
      
      public static const §1%4§:String = "PoisoningReduceIdle";
      
      public static const SLOW:String = "SlowEffect";
      
      public static const BOOMERANG_DEBUFF:String = "BoomerangDebuffEffect";
      
      public static const KAMIKAZE:String = "KamikazeBuff";
      
      public static const §9$i§:String = "ArmorReduceEffect";
      
      public static const §5"D§:String = "ArmorReduceStartEffect";
      
      public static const §9a§:String = "LightningHit";
      
      public static const §=$L§:ColorTransform = new ColorTransform(1,1,1,1,-60,0,-50,0);
      
      public static const §,"j§:ColorTransform = new ColorTransform(1,1,1,1,0,-60,-80,0);
      
      public static const §8%#§:ColorTransform = new ColorTransform(1,1,1,1,120,30,40,0);
      
      public static const §"#@§:ColorTransform = new ColorTransform(1,1,1,1,20,90,40,0);
      
      public static const §;"Y§:ColorTransform = new ColorTransform(1,1,1,1,-50,-50,-50,0);
      
      public static const §8p§:ColorTransform = new ColorTransform(1,1,1,1,0,0,0,0);
      
      public static const §@!G§:BlurFilter = new BlurFilter(2,2,1);
      
      public static const §`%t§:GlowFilter = new GlowFilter(16777215,1,2,2,2,1);
      
      public static const §#"C§:GlowFilter = new GlowFilter(0,1,2,2,2,1);
      
      public static const §?">§:DropShadowFilter = new DropShadowFilter(1,45,0,1,2,2,2);
      
      public static const §&!h§:GlowFilter = new GlowFilter(15592941,1,2,2,1,1);
      
      public function §1"-§()
      {
         super();
      }
      
      public static function explode(param1:Class, param2:int, param3:int, param4:uint = 0, param5:§=#?§ = null, param6:int = -2147483648, param7:Boolean = false) : void
      {
         var clip:MovieClip = null;
         var delay:int = 0;
         var expRadius:int = 0;
         var ExpClass:Class = param1;
         var x:int = param2;
         var y:int = param3;
         var radius:uint = param4;
         var explosionSound:§=#?§ = param5;
         var rotation:int = param6;
         var toBackward:Boolean = param7;
         try
         {
            if(ExpClass != null)
            {
               clip = new ExpClass();
               clip.x = x;
               clip.y = y;
               if(rotation != int.MIN_VALUE)
               {
                  clip.rotation = rotation;
               }
               if(radius != 0)
               {
                  expRadius = (clip.width + clip.height) / 2;
                  clip.scaleX = clip.scaleY = radius / expRadius;
               }
               Application.scene.addChild(clip);
               if(toBackward)
               {
                  clip.parent.setChildIndex(clip,3);
               }
               if(explosionSound != null)
               {
                  §@%;§.play(explosionSound);
               }
               delay = clip.totalFrames;
               §8$a§.§%!E§(delay,function explodeCompleted():void
               {
                  if(clip)
                  {
                     if(clip.parent)
                     {
                        clip.parent.removeChild(clip);
                     }
                     if(clip.totalFrames > 1)
                     {
                        clip.stop();
                     }
                     if(clip.numChildren > 0)
                     {
                        §3!3§.§>!j§(§3!3§.§#"R§(clip));
                     }
                  }
               });
            }
         }
         catch(e:ArgumentError)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"explosion hack 3"));
         }
      }
      
      public static function §=$M§(param1:int, param2:int, param3:Number) : void
      {
         var delay:int;
         var clip:MovieClip = null;
         var x:int = param1;
         var y:int = param2;
         var angle:Number = param3;
         clip = §6#A§.§!&6§("Blood" + Math.floor(1 + Math.random() * 6));
         clip.x = x;
         clip.y = y;
         clip.rotation = angle * 180 / Math.PI;
         clip.scaleX = clip.scaleY = 2;
         Application.scene.addChild(clip);
         delay = clip.totalFrames;
         §8$a§.§%!E§(delay,function bloodsSplatterCompleted():void
         {
            if(clip.parent)
            {
               clip.parent.removeChild(clip);
            }
            if(clip.totalFrames > 1)
            {
               clip.stop();
            }
            if(clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(clip));
            }
         });
      }
      
      public static function §3#=§(param1:String, param2:int, param3:int, param4:uint = 0, param5:uint = 30, param6:Number = 1) : void
      {
         var _loc7_:MovieClip = §6#A§.§!&6§(param1);
         §[%4§(_loc7_,param2,param3,param4,param5,param6);
      }
      
      public static function §[%4§(param1:MovieClip, param2:int, param3:int, param4:uint = 0, param5:uint = 30, param6:Number = 1) : void
      {
         var ft:FrameTimer;
         var speed:Number = NaN;
         var clip:MovieClip = param1;
         var x:int = param2;
         var y:int = param3;
         var maxSize:uint = param4;
         var duration:uint = param5;
         var speedKoef:Number = param6;
         speed = 90 / duration * speedKoef;
         clip.x = x;
         clip.y = y;
         if(maxSize != 0)
         {
            §`o§.§7!S§(clip,maxSize,maxSize);
         }
         if(§8"%§.§&S§.§41§())
         {
            clip.filters = [§?">§,§&!h§];
         }
         Application.scene.addChild(clip);
         ft = new FrameTimer(1,duration);
         ft.addEventListener(FrameTimerEvent.§8$`§,function(param1:Event):void
         {
            clip.y -= speed;
         });
         ft.addEventListener(FrameTimerEvent.§;$>§,function floatingClipCompleted(param1:Event):void
         {
            if(clip.parent)
            {
               clip.parent.removeChild(clip);
            }
            if(clip.totalFrames > 1)
            {
               clip.stop();
            }
            if(clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(clip));
            }
         });
         ft.start();
      }
      
      public static function §&!C§(param1:int, param2:int, param3:int, param4:§,'§ = null) : void
      {
         var curScene:§0&$§ = null;
         var colors:Array = null;
         var i:uint = 0;
         var pixel1:uint = 0;
         var pixel2:uint = 0;
         var pixel3:uint = 0;
         var pixel4:uint = 0;
         var clip:MovieClip = null;
         var part:§ "F§ = null;
         var x:int = param1;
         var y:int = param2;
         var particles:int = param3;
         var seed:§,'§ = param4;
         try
         {
            curScene = Application.scene;
            if(curScene)
            {
               colors = [0];
               if(§8"%§.§&S§.§1#Q§())
               {
                  i = 1;
                  while(i < 3)
                  {
                     pixel1 = curScene.§>w§(x - i * 10,y - i * 10);
                     if(pixel1 != 0)
                     {
                        colors.push(pixel1);
                     }
                     pixel2 = curScene.§>w§(x - i * 10,y + i * 10);
                     if(pixel2 != 0)
                     {
                        colors.push(pixel2);
                     }
                     pixel3 = curScene.§>w§(x + i * 10,y - i * 10);
                     if(pixel3 != 0)
                     {
                        colors.push(pixel3);
                     }
                     pixel4 = curScene.§>w§(x + i * 10,y + i * 10);
                     if(pixel4 != 0)
                     {
                        colors.push(pixel4);
                     }
                     i++;
                  }
               }
               seed ||= §8"%§.randomSeed;
               i = 0;
               while(i < particles)
               {
                  clip = new MovieClip();
                  clip.graphics.beginFill(colors[int(Math.random() * colors.length)],0.8);
                  clip.graphics.drawCircle(0,0,1 + Math.random() * 2);
                  clip.graphics.endFill();
                  part = new § "F§(clip,x,y);
                  part.§6"O§(seed.§]#W§(-PI_QUARTER_X3,-PI_QUARTER),seed.§,!q§(9,16));
                  i++;
               }
            }
         }
         catch(e:Error)
         {
            §§push(e);
            var _temp_4:* = e;
            e = §§pop();
            if(Application.scene)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"explosion hack 1"));
            }
         }
      }
      
      public static function §8%8§(param1:int, param2:int, param3:int, param4:String = "AmFreezingBazooka", param5:§,'§ = null) : void
      {
         var _loc8_:MovieClip = null;
         var _loc9_:§ "F§ = null;
         var _loc6_:Class = §6#A§.getClass(param4);
         param5 ||= §8"%§.randomSeed;
         var _loc7_:int = 0;
         while(_loc7_ < param3)
         {
            _loc8_ = new _loc6_();
            _loc8_.width = _loc8_.height = 2;
            _loc9_ = new § "F§(_loc8_,param1,param2);
            _loc9_.§6"O§(param5.§]#W§(-Math.PI,0),param5.§,!q§(5,15));
            _loc7_++;
         }
      }
      
      public static function §^!7§(param1:int, param2:int, param3:int, param4:uint, param5:int = 10, param6:int = 22, param7:§,'§ = null) : void
      {
         var _loc9_:§ "F§ = null;
         param7 ||= §8"%§.randomSeed;
         var _loc8_:int = 0;
         while(_loc8_ < param3)
         {
            _loc9_ = new § "F§(null,param1,param2);
            _loc9_.§6"O§(param7.§]#W§(-Math.PI,0),param7.§,!q§(param5,param6));
            attachTrail(_loc9_,param7.§,!q§(4,6),2,param4,16777215,1);
            _loc8_++;
         }
      }
      
      public static function §`$Q§(param1:int, param2:int, param3:String, param4:Number = 1, param5:Boolean = true) : MovieClip
      {
         var _loc6_:MovieClip = §6#A§.§!&6§(param3);
         §,&§(param1,param2,_loc6_,param4,param5);
         return _loc6_;
      }
      
      public static function §,&§(param1:int, param2:int, param3:MovieClip, param4:Number = 1, param5:Boolean = true, param6:Function = null, param7:§@N§ = null) : void
      {
         var x:int = param1;
         var y:int = param2;
         var clip:MovieClip = param3;
         var scale:Number = param4;
         var autoRemoveClip:Boolean = param5;
         var callback:Function = param6;
         var layer:§@N§ = param7;
         var container:DisplayObjectContainer = layer ? Application.scene.§=P§(layer) : Application.scene.§<"2§();
         clip.x = x;
         clip.y = y;
         clip.scaleX = clip.scaleY = scale;
         container.addChild(clip);
         if(autoRemoveClip)
         {
            §8$a§.§%!E§(clip.totalFrames,function playClipCompleted():void
            {
               if(clip.parent)
               {
                  clip.parent.removeChild(clip);
               }
               if(clip.totalFrames > 1)
               {
                  clip.stop();
               }
               if(clip.numChildren > 0)
               {
                  §3!3§.§>!j§(§3!3§.§#"R§(clip));
               }
               clip = null;
               if(callback != null)
               {
                  callback();
               }
            });
         }
      }
      
      public static function attachTrail(param1:§&"T§, param2:int, param3:Number, param4:uint, param5:uint, param6:Number = 0.997, param7:Boolean = false, param8:Number = 1) : Sprite
      {
         return new §"#"§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §;%k§(param1:§&"T§, param2:Class, param3:uint, param4:uint = 2) : §[!$§
      {
         return new §[!$§(param1,param2,param3,param4);
      }
      
      public static function §+&$§(param1:§&"T§, param2:String, param3:uint = 1, param4:Boolean = false) : §;#K§
      {
         return new §;#K§(param1,param2,param3,param4);
      }
      
      public static function §?"$§(param1:§&"T§, param2:§>"9§) : Object
      {
         var _loc3_:§-&>§ = null;
         var _loc4_:§>!u§ = null;
         var _loc5_:§>$o§ = null;
         if(param2 is §-&>§)
         {
            _loc3_ = §-&>§(param2);
            return attachTrail(param1,_loc3_.length,_loc3_.width,_loc3_.fColor,_loc3_.gColor,_loc3_.yCoeff,_loc3_.useFilters,_loc3_.alpha);
         }
         if(param2 is §>!u§)
         {
            _loc4_ = §>!u§(param2);
            return §;%k§(param1,_loc4_.§7#Q§,_loc4_.size,_loc4_.period);
         }
         if(param2 is §>$o§)
         {
            _loc5_ = §>$o§(param2);
            return §+&$§(param1,_loc5_.className,_loc5_.period,_loc5_.§'#F§);
         }
         return null;
      }
      
      public static function §2$O§(param1:§&"T§, param2:§&"T§, param3:uint, param4:uint, param5:uint, param6:uint, param7:Number = 2) : void
      {
         var counter:uint = 0;
         var srcX:int = 0;
         var srcY:int = 0;
         var trgX:int = 0;
         var trgY:int = 0;
         var src:§&"T§ = param1;
         var trg:§&"T§ = param2;
         var duration:uint = param3;
         var step:uint = param4;
         var color:uint = param5;
         var dispersion:uint = param6;
         var thickness:Number = param7;
         if(!src.disposed && !trg.disposed)
         {
            counter = 0;
            srcX = src.x;
            srcY = src.y;
            trgX = trg.x;
            trgY = trg.y;
            Application.scene.addEventListener(Event.ENTER_FRAME,function(param1:Event):void
            {
               if(!src.disposed)
               {
                  srcX = src.x;
                  srcY = src.y;
               }
               if(!trg.disposed)
               {
                  trgX = trg.x;
                  trgY = trg.y;
               }
               if(++counter <= duration)
               {
                  §;"G§(srcX,srcY,trgX,trgY,1,step,color,dispersion,1,thickness);
               }
               else
               {
                  Application.scene.removeEventListener(Event.ENTER_FRAME,arguments.callee);
               }
            });
         }
      }
      
      public static function §,%F§(param1:§&"T§, param2:int, param3:int, param4:uint, param5:uint, param6:uint, param7:uint, param8:Number = 2) : void
      {
         var counter:uint = 0;
         var srcX:int = 0;
         var srcY:int = 0;
         var src:§&"T§ = param1;
         var trgX:int = param2;
         var trgY:int = param3;
         var duration:uint = param4;
         var step:uint = param5;
         var color:uint = param6;
         var dispersion:uint = param7;
         var thickness:Number = param8;
         if(!src.disposed)
         {
            counter = 0;
            srcX = src.x;
            srcY = src.y;
            Application.scene.addEventListener(Event.ENTER_FRAME,function(param1:Event):void
            {
               if(!src.disposed)
               {
                  srcX = src.x;
                  srcY = src.y;
               }
               if(++counter <= duration)
               {
                  §;"G§(srcX,srcY,trgX,trgY,1,step,color,dispersion,1,thickness);
               }
               else
               {
                  Application.scene.removeEventListener(Event.ENTER_FRAME,arguments.callee);
               }
            });
         }
      }
      
      public static function §;"G§(param1:int, param2:int, param3:int, param4:int, param5:uint, param6:uint, param7:uint, param8:uint, param9:uint, param10:Number = 2) : void
      {
         var ray:MovieClip = null;
         var angle:Number = NaN;
         var counter:uint = 0;
         var x1:int = param1;
         var y1:int = param2;
         var x2:int = param3;
         var y2:int = param4;
         var duration:uint = param5;
         var step:uint = param6;
         var color:uint = param7;
         var dispersion:uint = param8;
         var period:uint = param9;
         var thickness:Number = param10;
         ray = new MovieClip();
         angle = Math.atan2(y2 - y1,x2 - x1);
         var cosa:Number = Math.cos(angle);
         var sina:Number = Math.sin(angle);
         counter = 0;
         var steps:uint = §^$y§.distance(x1 - x2,y1 - y2) / step;
         if(§8"%§.§&S§.§41§())
         {
            ray.filters = [§@!G§,§`%t§];
         }
         Application.scene.addEventListener(Event.ENTER_FRAME,function(param1:Event):void
         {
            var nextX:int = 0;
            var nextY:int = 0;
            var i:int = 0;
            var e:Event = param1;
            if(++counter <= duration)
            {
               if(counter % period == 0)
               {
                  with(ray.graphics)
                  {
                     
                     clear();
                     lineStyle(thickness,color);
                     moveTo(x1,y1);
                     i = 1;
                     while(i < steps)
                     {
                        nextX = x1 + i * step * cosa + (Math.random() * dispersion * 2 - dispersion) * sina;
                        nextY = y1 + i * step * sina + (Math.random() * dispersion * 2 - dispersion) * cosa;
                        lineTo(nextX,nextY);
                        ++i;
                     }
                     lineTo(x2,y2);
                  }
               }
            }
            else
            {
               Application.scene.removeEventListener(Event.ENTER_FRAME,arguments.callee);
               if(ray.parent)
               {
                  Application.scene.§=P§().removeChild(ray);
               }
               ray.graphics.clear();
               ray.stop();
            }
         });
         Application.scene.§=P§().addChild(ray);
      }
      
      public static function §##7§(param1:int, param2:int, param3:uint = 0) : MovieClip
      {
         var clip:MovieClip = null;
         var x:int = param1;
         var y:int = param2;
         var frames:uint = param3;
         clip = §6#A§.§!&6§("GuidingBazookaCursor");
         clip.x = x;
         clip.y = y;
         Application.scene.addChild(clip);
         if(frames != 0)
         {
            §8$a§.§%!E§(frames,function crossmarkCompleted():void
            {
               if(clip.parent)
               {
                  clip.parent.removeChild(clip);
               }
               if(clip.totalFrames > 1)
               {
                  clip.stop();
               }
               if(clip.numChildren > 0)
               {
                  §3!3§.§>!j§(§3!3§.§#"R§(clip));
               }
            });
         }
         return clip;
      }
      
      public static function § & §(param1:String) : MovieClip
      {
         return §6#A§.§!&6§(param1);
      }
      
      public static function §6%R§(param1:int = -1) : MovieClip
      {
         var _loc2_:MovieClip = §6#A§.§!&6§("StormCloud");
         _loc2_.width = param1 == -1 ? _loc2_.width : param1;
         _loc2_.height = param1 == -1 ? _loc2_.height : param1;
         return _loc2_;
      }
      
      public static function §!#=§(param1:uint, param2:uint) : MovieClip
      {
         var _loc3_:MovieClip = §6#A§.§!&6§("PulsingSphere");
         var _loc4_:ColorTransform = new ColorTransform();
         _loc4_.color = param1;
         _loc3_.stop();
         _loc3_.width = _loc3_.height = param2 * 2;
         _loc3_.transform.colorTransform = _loc4_;
         return _loc3_;
      }
      
      public static function heal(param1:int, param2:§&"T§) : void
      {
         var ft:FrameTimer;
         var clip:MovieClip = null;
         var value:int = param1;
         var owner:§&"T§ = param2;
         clip = §6#A§.§!&6§("Heal");
         owner.clip.addChild(clip);
         §2!H§.§+#Q§(value,owner.x,owner.y - 35,10079385);
         ft = new FrameTimer(1,50);
         ft.addEventListener(FrameTimerEvent.§;$>§,function healCompleted(param1:Event):void
         {
            if(clip.parent)
            {
               owner.clip.removeChild(clip);
            }
            if(clip.totalFrames > 1)
            {
               clip.stop();
            }
            if(clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(clip));
            }
            clip = null;
            owner = null;
         });
         ft.start();
      }
      
      public static function §8"l§(param1:§+%]§, param2:String, param3:int = -1, param4:Function = null, param5:Boolean = false, param6:Boolean = true, param7:Boolean = true) : void
      {
         §7",§(param1,param2,0,0,param3,param4,param5,param6,param7);
      }
      
      public static function §7",§(param1:§+%]§, param2:String, param3:int = 0, param4:int = 0, param5:int = -1, param6:Function = null, param7:Boolean = false, param8:Boolean = true, param9:Boolean = true) : void
      {
         var ft:FrameTimer;
         var clip:MovieClip = null;
         var dummy:§&"T§ = null;
         var unit:§+%]§ = param1;
         var className:String = param2;
         var dx:int = param3;
         var dy:int = param4;
         var duration:int = param5;
         var callback:Function = param6;
         var unstable:Boolean = param7;
         var allowTransform:Boolean = param8;
         var needRotate:Boolean = param9;
         clip = §6#A§.§!&6§(className);
         clip.mouseEnabled = clip.mouseChildren = false;
         if(duration == -1)
         {
            duration = clip.totalFrames;
         }
         if(Boolean(unit) && !unit.disposed)
         {
            unit.graphics.§5$#§(§2m§.§-w§,clip,dx,dy,true,needRotate,false,allowTransform);
         }
         if(unstable)
         {
            dummy = Application.scene.§,$z§();
         }
         ft = new FrameTimer(duration,1);
         ft.addEventListener(FrameTimerEvent.§;$>§,function auraCompleted(param1:Event):void
         {
            if(Boolean(unit) && !unit.disposed)
            {
               unit.graphics.detachClip(clip,§2m§.§-w§);
            }
            clip.stop();
            if(clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(clip));
            }
            clip = null;
            unit = null;
            if(callback != null)
            {
               callback();
            }
            if(dummy != null)
            {
               dummy.disposed = true;
               dummy = null;
            }
         });
         ft.start();
      }
      
      public static function §2%n§(param1:Point, param2:Point = null, param3:Number = 1.57) : void
      {
         var distance:int;
         var animObj:§&"T§ = null;
         var target:Point = param1;
         var source:Point = param2;
         var angle:Number = param3;
         animObj = new §&"T§();
         var clipMultiplier:Number = 0.52;
         animObj.clip = §6#A§.§!&6§("LightningBolt");
         animObj.x = source ? int(source.x) : int(target.x);
         animObj.y = source ? int(source.y) : 0;
         distance = §-q§.distance(target.x,target.y,animObj.x,animObj.y);
         animObj.clip.height = Math.abs(distance) * clipMultiplier;
         animObj.clip.rotation = §-q§.§%%>§(angle - Math.PI * 0.5);
         §`$Q§(target.x,target.y,§9a§);
         Application.scene.§@$I§.§1$+§(animObj);
         §8$a§.§%!E§(animObj.clip.totalFrames,function lightningBoltAnimationCompleted():void
         {
            if(animObj.clip.parent)
            {
               animObj.clip.parent.removeChild(animObj.clip);
            }
            if(animObj.clip.totalFrames > 1)
            {
               animObj.clip.stop();
            }
            if(animObj.clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(animObj.clip));
            }
            animObj.disposed = true;
         });
      }
      
      public static function §3m§(param1:int, param2:uint, param3:Number = 2) : MovieClip
      {
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc4_:MovieClip = new MovieClip();
         _loc5_ = Math.PI * 2;
         _loc6_ = 100;
         var _loc7_:Number = _loc5_ / _loc6_;
         var _loc8_:Vector.<Point> = new Vector.<Point>(0);
         _loc4_.graphics.lineStyle(param3,param2,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND);
         var _loc9_:int = 0;
         while(_loc9_ < _loc6_)
         {
            _loc10_ = _loc7_ * _loc9_;
            _loc8_.push(new Point(param1 * Math.cos(_loc10_),param1 * Math.sin(_loc10_)));
            if(_loc9_ % 2 == 0)
            {
               _loc4_.graphics.moveTo(_loc8_[_loc9_].x,_loc8_[_loc9_].y);
            }
            else
            {
               _loc4_.graphics.lineTo(_loc8_[_loc9_].x,_loc8_[_loc9_].y);
            }
            _loc9_++;
         }
         _loc4_.graphics.endFill();
         if(§8"%§.§&S§.§41§())
         {
            _loc4_.filters = [§@!G§,§#"C§];
         }
         return _loc4_;
      }
   }
}

