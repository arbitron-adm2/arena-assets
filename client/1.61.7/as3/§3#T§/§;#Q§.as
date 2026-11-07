package §3#T§
{
   import §"#x§.§'"$§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§]&§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2#8§.§6"a§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§7o§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;#Q§ extends §6#I§
   {
      
      public static const §^#g§:§&$2§ = new §&$2§(30);
      
      private var §0!P§:§&"T§;
      
      private var §3"h§:§&"T§;
      
      private var color:uint;
      
      private var paramSet:§5$n§;
      
      private var §8E§:Boolean;
      
      public function §;#Q§(param1:§+%]§, param2:§5$n§, param3:§&"T§, param4:§&"T§, param5:uint = 16211289, param6:Boolean = true)
      {
         this.color = param5;
         this.§0!P§ = param3;
         this.§3"h§ = param4;
         this.paramSet = param2;
         this.§8E§ = param6;
         _damageType = §&!E§.§=$-§;
         super(param1,param3.x,param4.y,false,0);
         this.x = param3.x;
         this.y = param3.y;
         clip = new MovieClip();
         this.draw();
         Application.scene.§@$I§.§1$+§(this);
         this.§6!%§();
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.NONE);
         physicModel = new §;$S§(physParams);
      }
      
      private function §6!%§() : void
      {
         if(!(Boolean(!disposed && this.§0!P§) && Boolean(this.§3"h§) && this.§#%E§(false)))
         {
            stable = true;
         }
      }
      
      private function draw() : void
      {
         x = this.§0!P§.x;
         y = this.§0!P§.y;
         var _loc1_:Point = §-q§.§2!B§(6,Math.atan2(this.§3"h§.y - y,this.§3"h§.x - x));
         clip.graphics.clear();
         clip.graphics.lineStyle(3,this.color);
         clip.graphics.moveTo(_loc1_.x,_loc1_.y);
         clip.graphics.lineTo(this.§3"h§.x - x - _loc1_.x,this.§3"h§.y - y - _loc1_.y);
      }
      
      private function §1#2§() : void
      {
         var _loc2_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§6#I§ = null;
         var _loc1_:Number = §-q§.distance(x,y,this.§3"h§.x,this.§3"h§.y);
         _loc2_ = Math.atan2(this.§3"h§.y - y,this.§3"h§.x - x);
         var _loc3_:Number = Math.cos(_loc2_);
         var _loc4_:Number = Math.sin(_loc2_);
         var _loc5_:* = 0;
         var _loc6_:int = 3;
         var _loc7_:Number = 0;
         _loc8_ = 0;
         do
         {
            _loc7_ += _loc6_ * _loc3_;
            _loc8_ += _loc6_ * _loc4_;
            if(§>#9§.point(x + _loc7_,y + _loc8_))
            {
               _loc9_ = new §6#I§(owner,x,y,false,1);
               _loc9_.x = x + _loc7_;
               _loc9_.y = y + _loc8_;
               §'"$§.inflictDamage(_loc9_,null,0,20,3);
               §1"-§.attachTrail(this,6,2,16762931,16777215,1);
            }
         }
         while(++_loc5_ * _loc6_ < _loc1_);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.§0!P§.disposed || this.§3"h§.disposed)
         {
            disposed = true;
         }
         else
         {
            this.§#%E§();
         }
      }
      
      private function §#%E§(param1:Boolean = true) : Boolean
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(!this.§0!P§.disposed && !this.§3"h§.disposed)
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
            for each(_loc3_ in _loc2_)
            {
               if((!param1 ? Boolean(!_loc3_.stable) : Boolean(true)) && §-q§.§+K§(this.§0!P§.x,this.§0!P§.y,this.§3"h§.x,this.§3"h§.y,_loc3_.x,_loc3_.y,§^#g§.value))
               {
                  if(this.§8E§)
                  {
                     this.§0!P§.disposed = true;
                     this.§3"h§.disposed = true;
                     §1"-§.explode(§;n§.§7q§,this.§0!P§.x,this.§0!P§.y,12);
                     §1"-§.explode(§;n§.§7q§,this.§3"h§.x,this.§3"h§.y,12);
                  }
                  this.§1#2§();
                  this.explode(_loc3_);
                  disposed = true;
               }
            }
            return false;
         }
         return false;
      }
      
      protected function explode(param1:§+%]§) : void
      {
         §'"$§.inflictDamage(this,param1,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true,true);
         §1"-§.explode(§;n§.MEDIUM,param1.x,param1.y,30,§`!v§.§2#u§);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.§0!P§ = null;
         this.§3"h§ = null;
         this.paramSet = null;
         clip.graphics.clear();
         super.§[$u§(param1);
      }
      
      public function get §9#Q§() : §&"T§
      {
         return this.§0!P§;
      }
      
      public function get §,r§() : §&"T§
      {
         return this.§3"h§;
      }
   }
}

