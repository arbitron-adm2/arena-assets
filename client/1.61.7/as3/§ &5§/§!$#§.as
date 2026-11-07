package § &5§
{
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%#u§.§`"_§;
   import §%&6§.§2$v§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §+$=§.§6#A§;
   import §+%S§.§=$2§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.*;
   import §3#a§.§-#M§;
   import §4#2§.§,%g§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.*;
   import §8$V§.*;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?"j§.*;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §!$#§
   {
      
      §§push(§§findproperty(§@#"§));
      var _temp_3:* = new <String>[BlendMode.ADD,BlendMode.ERASE,BlendMode.INVERT,BlendMode.HARDLIGHT,BlendMode.MULTIPLY,BlendMode.NORMAL,BlendMode.OVERLAY,BlendMode.SCREEN];
      var _temp_5:* = new <String>[BlendMode.ADD,BlendMode.ERASE,BlendMode.INVERT,BlendMode.HARDLIGHT,BlendMode.MULTIPLY,BlendMode.NORMAL,BlendMode.OVERLAY,BlendMode.SCREEN];
      
      public static const §@#"§:Vector.<String> = new <String>[BlendMode.ADD,BlendMode.ERASE,BlendMode.INVERT,BlendMode.HARDLIGHT,BlendMode.MULTIPLY,BlendMode.NORMAL,BlendMode.OVERLAY,BlendMode.SCREEN];
      
      public function §!$#§()
      {
         super();
      }
      
      public static function drawCircle(param1:BitmapData, param2:int, param3:int, param4:int, param5:uint = 16777215, param6:Boolean = false, param7:Boolean = false) : uint
      {
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:uint = 0;
         var _loc15_:int = 0;
         _loc8_ = _loc10_ = int(_loc14_ = 0);
         _loc9_ = param4;
         _loc12_ = 1 - param4 << 1;
         do
         {
            _loc15_ = param2 - _loc8_;
            while(_loc15_ <= param2 + _loc8_)
            {
               if(param7)
               {
                  if(param1.getPixel(_loc15_,param3 - _loc9_) != param5)
                  {
                     _loc14_++;
                  }
                  if(param1.getPixel(_loc15_,param3 + _loc9_) != param5)
                  {
                     _loc14_++;
                  }
               }
               if(param6)
               {
                  param1.setPixel32(_loc15_,param3 - _loc9_,param5);
                  param1.setPixel32(_loc15_,param3 + _loc9_,param5);
               }
               else
               {
                  param1.setPixel(_loc15_,param3 - _loc9_,param5);
                  param1.setPixel(_loc15_,param3 + _loc9_,param5);
               }
               _loc15_++;
            }
            _loc13_ = 0;
            if(_loc9_ < _loc10_)
            {
               break;
            }
            if(_loc12_ < 0)
            {
               _loc11_ = (_loc12_ + _loc9_ << 1) - 1;
               if(_loc11_ <= 0)
               {
                  _loc8_++;
                  _loc12_ += (_loc8_ << 1) + 1;
                  _loc13_ = 1;
               }
            }
            else if(_loc12_ > 0)
            {
               _loc11_ = (_loc12_ - _loc8_ << 1) - 1;
               if(_loc11_ > 0)
               {
                  _loc9_--;
                  _loc12_ += 1 - (_loc9_ << 1);
                  _loc13_ = 1;
               }
            }
            if(!_loc13_)
            {
               _loc8_++;
               _loc9_--;
               _loc12_ += _loc8_ - _loc9_ - 1 << 1;
            }
         }
         while(1);
         return _loc14_;
      }
      
      public static function §4%r§(param1:BitmapData, param2:int, param3:int, param4:int, param5:int, param6:int = 0, param7:uint = 16777215, param8:Boolean = false, param9:Boolean = false) : uint
      {
         var _loc10_:uint = 0;
         var _loc12_:int = 0;
         var _loc11_:int = param2;
         while(_loc11_ < param4)
         {
            _loc12_ = param3;
            while(_loc12_ < param5)
            {
               if(param6 == 0 || _loc11_ <= param2 + param6 || _loc12_ <= param3 + param6 || _loc11_ >= param4 - param6 || _loc12_ >= param5 - param6)
               {
                  if(param9)
                  {
                     if(param1.getPixel(_loc11_,_loc12_) != param7)
                     {
                        _loc10_++;
                     }
                  }
                  if(param8)
                  {
                     param1.setPixel32(_loc11_,_loc12_,param7);
                  }
                  else
                  {
                     param1.setPixel(_loc11_,_loc12_,param7);
                  }
               }
               _loc12_++;
            }
            _loc11_++;
         }
         return _loc10_;
      }
      
      public static function §7$m§(param1:BitmapData, param2:MovieClip, param3:int, param4:int, param5:int = 3, param6:uint = 16777215) : void
      {
         var bm:BitmapData;
         var x:int = 0;
         var p:Point = null;
         var y:int = 0;
         var map:BitmapData = param1;
         var clip:MovieClip = param2;
         var x1:int = param3;
         var y1:int = param4;
         var border:int = param5;
         var color:uint = param6;
         var erosion:Function = function(param1:int, param2:int, param3:int, param4:int, param5:int):void
         {
            var _loc6_:int = 1;
            while(_loc6_ <= param5)
            {
               map.setPixel(param1 + param3 * _loc6_,param2 + param4 * _loc6_,color);
               _loc6_++;
            }
         };
         var quality:String = Application.instance.stage.quality;
         Application.instance.stage.quality = StageQuality.HIGH;
         bm = new BitmapData(clip.width,clip.height + 2,true,0);
         bm.draw(clip,new Matrix(1,0,0,1,clip.width >> 1,clip.height >> 1));
         x = 0;
         while(x < clip.width)
         {
            y = 0;
            while(y < clip.height)
            {
               if(bm.getPixel(x,y) != 0)
               {
                  p = new Point(x1 + x,y1 + y);
                  if(bm.getPixel(x + 1,y) == 0 && map.getPixel(p.x + 1,p.y) != 0)
                  {
                     erosion(p.x,p.y,1,0,border);
                  }
                  if(bm.getPixel(x - 1,y) == 0 && map.getPixel(p.x - 1,p.y) != 0)
                  {
                     erosion(p.x,p.y,-1,0,border);
                  }
                  if(bm.getPixel(x,y + 1) == 0 && map.getPixel(p.x,p.y + 1) != 0)
                  {
                     erosion(p.x,p.y,0,1,border);
                  }
                  if(bm.getPixel(x,y - 1) == 0 && map.getPixel(p.x,p.y - 1) != 0)
                  {
                     erosion(p.x,p.y,0,-1,border);
                  }
               }
               y++;
            }
            x++;
         }
         x = 0;
         while(x < clip.width)
         {
            y = 0;
            while(y < clip.height)
            {
               if(bm.getPixel(x,y) != 0)
               {
                  map.setPixel32(x1 + x,y1 + y,0);
               }
               y++;
            }
            x++;
         }
         Application.instance.stage.quality = quality;
      }
      
      public static function §'"^§(param1:BitmapData, param2:String = null, param3:Array = null) : String
      {
         if(!param1)
         {
            return "";
         }
         var _loc4_:String = Application.instance.stage.quality;
         Application.instance.stage.quality = StageQuality.HIGH;
         if(!param2 || param2 == BlendMode.NORMAL)
         {
            param3 ||= [];
            if(param3.indexOf(BlendMode.NORMAL) == -1)
            {
               param3.push(BlendMode.NORMAL);
            }
            param2 = §6!y§(param3);
         }
         var _loc5_:BitmapData = param1.clone();
         param1.draw(_loc5_,null,null,param2,null,true);
         Application.instance.stage.quality = _loc4_;
         return param2;
      }
      
      public static function §6!y§(param1:Array = null) : String
      {
         var _loc2_:String = §@#"§[int(§8"%§.randomSeed.§,!q§(0,§@#"§.length - 1))];
         if(param1)
         {
            while(param1.indexOf(_loc2_) > -1)
            {
               _loc2_ = §6!y§(param1);
            }
         }
         return _loc2_;
      }
      
      public static function §%%]§(param1:BitmapData, param2:BitmapData, param3:BitmapData, param4:DisplayObject, param5:DisplayObject) : void
      {
         var _loc6_:§]$d§ = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Boolean = false;
         _loc6_ = §8"%§.§?!W§.§^!U§();
         var _loc7_:Vector.<int> = _loc6_.missionIds;
         if(_loc7_.indexOf(§+#N§.§[<§) > -1 && (_loc7_.length == 1 && §8"%§.§&S§.§41§() || _loc7_.length > 1 && _loc6_.battleType == §&$a§.§5!w§ && _loc6_.§'#t§()))
         {
            _loc8_ = "";
            _loc9_ = §6!y§([BlendMode.ADD,BlendMode.ERASE,BlendMode.HARDLIGHT,BlendMode.MULTIPLY,BlendMode.OVERLAY,BlendMode.SCREEN]);
            _loc8_ += " ------- " + _loc9_;
            _loc8_ = _loc8_ + ("\n groundBack=" + §'"^§(param1,BlendMode.INVERT));
            _loc8_ = _loc8_ + ("\n ground=" + §'"^§(param2,BlendMode.INVERT));
            _loc8_ = _loc8_ + ("\n bg=" + §'"^§(param3,BlendMode.INVERT));
            _loc10_ = _loc9_ == BlendMode.NORMAL;
            if(param4)
            {
               _loc8_ += "\n bg=" + param4.blendMode;
            }
            _loc8_ += "\n backEnv=" + param5.blendMode;
         }
      }
   }
}

