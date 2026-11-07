package §;$%§
{
   import § #k§.§3%0§;
   import § &5§.§=#P§;
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%&6§.§8!`§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#o§.§?!i§;
   import §&$Y§.*;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§+&§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-&5§.*;
   import §-@§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%j§.§#!U§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#T§.§;'§;
   import §3#T§.§^!P§;
   import §4#`§.*;
   import §4%_§.§3§;
   import §4%_§.§6#W§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7!B§.§6#I§;
   import §7!B§.§`$4§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §;!Z§.*;
   import §;"9§.§;"c§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §=7§.§?%4§;
   import §?$L§.§ "N§;
   import §@!i§.*;
   import §@#K§.§-§;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §[!`§.§<#m§;
   import §[!`§.§@&3§;
   import §[!`§.ArchivistSeal;
   import §]$v§.§]%_§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`%&§.§`§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.SWFLoader;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.RegenerateCandidates;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.items.backpack.*;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §4"9§ extends §6#I§
   {
      
      private static const §,%j§:uint = 10;
      
      private static const §<#o§:Number = 0.5;
      
      private static const §[!q§:Array = [§6#W§,§3#3§,§`$4§,§8!`§,§-#8§,§+%q§,§?!i§,ArchivistSeal,§^!P§,§;'§];
      
      private static const §6?§:Array = [§;$n§,§+%]§,§1"?§,§[$ §,§@&3§,§3%0§];
      
      private static const §;#"§:Array = [§;"c§,§<#m§];
      
      protected var §7!j§:Point;
      
      protected var paramSet:§5$n§;
      
      protected var points:Vector.<Point> = new Vector.<Point>(0);
      
      private var §^#L§:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      public function §4"9§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:§&!E§ = null)
      {
         super(param1,param3,param4,false,§6#I§.§&i§,param5 || §&!E§.AIR);
         initialize(new Point(param3,param4),param2.ammoClassName);
         §,q§.push(§-&§.IGNORE_MAGNET);
         this.paramSet = param2;
         physParams.§5N§ = §9%1§.§>#T§;
         this.§1%#§();
         setSpeedXY(0,20);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.§=#K§();
         this.§#%W§();
      }
      
      protected function §=#K§() : void
      {
         var _loc1_:Point = this.§&!6§;
         if(this.§7!j§)
         {
            Application.scene.§?"w§(this.§7!j§.x,this.§7!j§.y,_loc1_.x + width,_loc1_.y + 3,§`#=§);
         }
         this.§7!j§ = _loc1_;
      }
      
      private function §@!V§(param1:Point) : int
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.points)
         {
            _loc4_ = new Point(param1.x + _loc3_.x,param1.y + _loc3_.y + 1);
            if(§>#9§.point(_loc4_.x,_loc4_.y,true))
            {
               while(§>#9§.point(_loc4_.x,_loc4_.y,true))
               {
                  --_loc4_.y;
                  --y;
               }
               return this.points.length;
            }
            if(§>#9§.point(_loc4_.x,_loc4_.y))
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §'[§(param1:Point) : Vector.<Point>
      {
         var _loc3_:Point = null;
         var _loc4_:* = 0;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         var _loc2_:Vector.<Point> = new Vector.<Point>(0);
         for each(_loc3_ in this.points)
         {
            _loc5_ = new Point(param1.x + _loc3_.x,param1.y + _loc3_.y + 1);
            if(§>#9§.point(_loc5_.x,_loc5_.y,true))
            {
               _loc2_ = _loc2_.concat(this.points);
               break;
            }
            if(§>#9§.point(_loc5_.x,_loc5_.y))
            {
               _loc2_.push(_loc5_);
            }
         }
         _loc3_ = null;
         _loc4_ = int(_loc2_.length - 1);
         while(_loc4_ > -1)
         {
            _loc3_ = _loc2_[_loc4_];
            for each(_loc6_ in _loc2_)
            {
               if(_loc3_ != _loc6_ && Point.distance(_loc3_,_loc6_) < 5)
               {
                  _loc2_.splice(_loc4_,1);
                  break;
               }
            }
            _loc4_--;
         }
         return _loc2_;
      }
      
      private function §#%W§() : void
      {
         var _loc1_:§#p§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Vector.<§&"T§> = null;
         var _loc9_:§&"T§ = null;
         var _loc10_:Vector.<§&"T§> = null;
         var _loc11_:Point = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         _loc1_ = Application.scene.§@$I§.§;%a§;
         var _loc2_:Vector.<§&"T§> = _loc1_.§"L§(§;#"§);
         var _loc3_:Point = this.§&!6§;
         var _loc4_:Point = new Point(x + (width >> 1),y + (height >> 1));
         if(§<H§.§%$Q§(_loc3_.x,_loc3_.y,_loc4_.x,_loc4_.y,_loc2_).length > 0)
         {
            §'"$§.inflictDamage(this,null,this.paramSet.damage.value,width + 10,width);
            §1"-§.explode(§;n§.§6#B§,x,y,width >> 1);
            §@%;§.play(§`!v§.§4&3§);
            §'!j§.go(§,%j§);
            disposed = true;
            return;
         }
         _loc5_ = this.isStopped;
         _loc6_ = _loc1_.§"L§(§6?§);
         var _loc7_:Vector.<§&"T§> = _loc1_.§"L§(§[!q§);
         var _loc8_:Vector.<§&"T§> = §<H§.§%$Q§(_loc3_.x,_loc3_.y,_loc4_.x,_loc4_.y + (_loc5_ ? 10 : 0),_loc6_);
         loop0:
         for each(_loc9_ in _loc8_)
         {
            var _loc18_:int = 0;
            var _loc19_:* = this.points;
            do
            {
               for each(_loc11_ in _loc19_)
               {
               }
               continue loop0;
            }
            while(_loc3_.x + _loc11_.x != _loc9_.x);
            _loc12_ = (_loc9_.width >> 1) * _loc9_.clip.scaleX;
            _loc13_ = (_loc9_.height >> 1) * _loc9_.clip.scaleY;
            _loc14_ = _loc13_ >> 1;
            _loc15_ = _loc12_ >> 1;
            _loc9_.y = _loc3_.y + _loc11_.y + (_loc5_ ? _loc13_ : speedY + _loc13_) + 3;
            if(_loc9_.x + _loc15_ > _loc4_.x)
            {
               _loc9_.x = _loc4_.x - _loc15_;
            }
            if(_loc9_.x - _loc15_ < _loc3_.x)
            {
               _loc9_.x = _loc3_.x + _loc15_;
            }
            while(§>#9§.§+%Y§(_loc9_.x,_loc9_.y,_loc13_,true))
            {
               --_loc9_.y;
            }
            _loc9_.§5!?§(0,1);
            if(this.§^#L§.indexOf(_loc9_) == -1)
            {
               this.§^#L§.push(_loc9_);
            }
            if(_loc5_)
            {
               Application.scene.§?"w§(_loc9_.x - _loc14_ - 3,_loc3_.y,_loc9_.x + _loc14_ + 3,_loc9_.y + _loc14_,§`#=§);
               Application.scene.§,# §(_loc9_.x,_loc9_.y + _loc14_,_loc14_,null,§`#=§);
               if(_loc9_.canBeDamaged)
               {
                  §'"$§.inflictDamage(this,_loc9_,this.paramSet.damage.value,0,0);
               }
               if(!§>#9§.§+%Y§(_loc9_.x,_loc9_.y + _loc13_,_loc13_))
               {
                  _loc9_.setSpeedXY(0,10);
               }
            }
         }
         _loc10_ = §<H§.§%$Q§(_loc3_.x,_loc3_.y,_loc4_.x,_loc4_.y,_loc7_);
         for each(_loc9_ in _loc10_)
         {
            §'"$§.inflictDamage(this,_loc9_,this.paramSet.damage.value * 2,0,0);
            if(!_loc9_.disposed)
            {
               _loc9_.disposed = true;
               §1"-§.explode(§;n§.§1"E§,_loc9_.x,_loc9_.y,_loc9_.width >> 1);
            }
         }
         if(_loc5_)
         {
            this.stop();
         }
      }
      
      protected function get isStopped() : Boolean
      {
         var _loc1_:uint = uint(this.§@!V§(this.§&!6§));
         return _loc1_ / this.points.length > §<#o§;
      }
      
      private function stop() : void
      {
         var _loc1_:Point = null;
         setSpeedXY(0,0);
         stable = true;
         Application.scene.§+!K§(clip,x,y);
         if(§8"%§.§&S§.§41§())
         {
            §1"-§.explode(§;n§.§7q§,x - clip.width * 0.1,y + clip.height * 0.5,this.§ $-§());
            §1"-§.explode(§;n§.§7q§,x,y + clip.height * 0.5,this.§ $-§());
            §1"-§.explode(§;n§.§7q§,x + clip.width * 0.1,y + clip.height * 0.5,this.§ $-§());
            for each(_loc1_ in this.§'[§(this.§&!6§))
            {
               §1"-§.explode(§;n§.§7q§,_loc1_.x,_loc1_.y,this.§ $-§());
            }
         }
         §@%;§.play(§`!v§.§4&3§);
         §'!j§.go(§,%j§);
         disposed = true;
      }
      
      private function § $-§() : Number
      {
         return Math.random() * 10 + 5;
      }
      
      protected function get §&!6§() : Point
      {
         return new Point(x - (width >> 1),y - (height >> 1));
      }
      
      private function §1%#§() : void
      {
         var _loc4_:int = 0;
         var _loc1_:String = Application.instance.stage.quality;
         Application.instance.stage.quality = StageQuality.HIGH;
         var _loc2_:BitmapData = new BitmapData(width,height,true,0);
         _loc2_.draw(clip,new Matrix(1,0,0,1,width >> 1,height >> 1));
         var _loc3_:int = 0;
         while(_loc3_ < width)
         {
            _loc4_ = 0;
            while(_loc4_ < height)
            {
               if(_loc2_.getPixel(_loc3_,_loc4_) != 0 && _loc2_.getPixel(_loc3_,_loc4_ + 1) == 0)
               {
                  this.points.push(new Point(_loc3_,_loc4_));
               }
               _loc4_++;
            }
            _loc3_++;
         }
         Application.instance.stage.quality = _loc1_;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         §7%g§.§!#"§(this.§^#L§.concat());
         this.§^#L§.length = 0;
      }
   }
}

