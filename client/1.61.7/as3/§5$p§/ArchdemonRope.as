package §5$p§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#h§.*;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!x§.§@& §;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §8#a§.ShopMenu;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?#g§.§&"P§;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§-q§;
   
   use namespace gestouch_internal;
   
   public class ArchdemonRope extends §&"T§
   {
      
      private var §="$§:HellRopeRenderer;
      
      private var victim:§+%]§;
      
      private var owner:§+%]§;
      
      private var §1#W§:uint;
      
      private var damage:uint;
      
      private var §7h§:Boolean = false;
      
      public function ArchdemonRope(param1:§+%]§, param2:§+%]§, param3:uint, param4:uint)
      {
         super();
         physicModel.stop();
         setSpeedXY(0,0);
         stable = true;
         clip = new MovieClip();
         var _loc5_:MovieClip = §6#A§.§!&6§("ChainBall");
         clip.addChild(_loc5_);
         this.§="$§ = new HellRopeRenderer();
         this.§="$§.x = _loc5_.width / 2;
         this.§="$§.y = -_loc5_.height / 2;
         clip.addChildAt(this.§="$§,0);
         canBeDamaged = true;
         addEventListener(§0%v§.§&!D§,this.§?$u§);
         this.victim = param2;
         this.owner = param1;
         this.§1#W§ = param3;
         this.damage = param4;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §8$7§() : void
      {
         this.inflictDamage();
         disposed = true;
      }
      
      private function §4$-§() : void
      {
         disposed = true;
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:Point = new Point(x,y);
         if(Boolean(param1.source.owner) && (param1.source.owner == this.victim || param1.source.owner.squad.isAi()))
         {
            this.§="$§.addDemonicExplosion(_loc2_,this.victim,this.§8$7§);
         }
         else
         {
            this.§="$§.addMetalExplosion(_loc2_,this.§4$-§);
         }
         this.§7h§ = true;
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         super.§!!>§();
         if(!disposed)
         {
            if(!this.victim.disposed)
            {
               _loc1_ = 15;
               _loc2_ = 25;
               _loc3_ = §-q§.distance(x,y,this.victim.x - _loc1_,this.victim.y + _loc2_);
               if(_loc3_ >= this.§1#W§ && !this.§7h§)
               {
                  this.§="$§.addDemonicExplosion(new Point(x,y),this.victim,this.§8$7§);
                  this.§7h§ = true;
               }
               else
               {
                  this.§="$§.drawRope(_loc3_);
                  this.§="$§.rotation = §-q§.§1$#§(x,y,this.victim.x - _loc1_,this.victim.y + _loc2_);
               }
            }
            else
            {
               disposed = true;
            }
         }
      }
      
      private function inflictDamage() : void
      {
         if(!disposed)
         {
            §-#M§.§<$$§(x,y,this.victim,this.damage);
         }
      }
      
      public function §>$c§() : §+%]§
      {
         return this.victim;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < clip.numChildren)
         {
            clip.removeChildAt(_loc2_);
            _loc2_++;
         }
         this.§="$§.clear();
         this.victim = null;
         this.owner = null;
         this.§7h§ = false;
         super.§[$u§(param1);
      }
   }
}

import §'!Z§.§1"-§;
import §+$=§.§6#A§;
import §,#_§.FrameTimer;
import §0%[§.§""n§;
import §0&F§.FrameTimerEvent;
import §@<§.§+%]§;
import flash.display.MovieClip;
import flash.events.Event;
import flash.geom.Point;
import ru.pragmatix.wormix.utils.§-q§;

class HellRopeRenderer extends MovieClip
{
   
   private static const CHAIN_LINK_CLIP:String = "ChainLink";
   
   private var chainLinkSizes:Point;
   
   private var linksCount:int = 0;
   
   private var ropeLength:Number;
   
   public function HellRopeRenderer()
   {
      super();
      var _loc1_:MovieClip = §6#A§.§!&6§(CHAIN_LINK_CLIP);
      this.chainLinkSizes = new Point(_loc1_.width,_loc1_.height);
   }
   
   public function drawRope(param1:Number) : void
   {
      var _loc3_:MovieClip = null;
      this.clear();
      this.ropeLength = param1;
      var _loc2_:MovieClip = §6#A§.§!&6§("ChainClip");
      this.linksCount = Math.ceil(param1 / this.chainLinkSizes.x);
      if(this.linksCount < 0)
      {
         this.linksCount = 0;
      }
      var _loc4_:Number = 0;
      var _loc5_:int = 0;
      while(_loc5_ < this.linksCount)
      {
         _loc3_ = §6#A§.§!&6§(CHAIN_LINK_CLIP);
         _loc3_.x = _loc4_;
         addChild(_loc3_);
         _loc4_ += _loc3_.width;
         _loc5_++;
      }
      _loc2_.x = _loc4_;
      addChild(_loc2_);
   }
   
   public function addMetalExplosion(param1:Point, param2:Function) : void
   {
      this.addExplosion(§6#A§.§!&6§("MetalExplosion"),param1,param2);
   }
   
   public function addDemonicExplosion(param1:Point, param2:§+%]§, param3:Function) : void
   {
      this.addExplosion(§6#A§.§!&6§("DemonicExplosion"),param1,param3);
      §1"-§.§8"l§(param2,§1"-§.§`"g§);
   }
   
   private function addExplosion(param1:MovieClip, param2:Point, param3:Function) : void
   {
      var destroyTimer:FrameTimer;
      var explosionCoords:Point = null;
      var newX:Number = NaN;
      var newY:Number = NaN;
      var explosionClip:MovieClip = param1;
      var position:Point = param2;
      var callback:Function = param3;
      if(this.linksCount > 0)
      {
         newX = this.ropeLength / 2 * Math.cos(§-q§.§7%8§(rotation));
         newY = this.ropeLength / 2 * Math.sin(§-q§.§7%8§(rotation));
         explosionCoords = new Point(position.x + newX,position.y + newY);
      }
      else
      {
         explosionCoords = new Point(position.x,position.y);
      }
      explosionClip.rotation = rotation;
      destroyTimer = new FrameTimer(explosionClip.totalFrames / 2);
      §""n§.single(destroyTimer,FrameTimerEvent.§8$`§,function(param1:Event):void
      {
         callback();
      });
      destroyTimer.start();
      §1"-§.§,&§(explosionCoords.x,explosionCoords.y,explosionClip,1,false);
   }
   
   public function clear() : void
   {
      var _loc1_:uint = 0;
      while(_loc1_ < numChildren)
      {
         removeChildAt(_loc1_);
         _loc1_++;
      }
      this.linksCount = 0;
      this.ropeLength = 0;
   }
}
