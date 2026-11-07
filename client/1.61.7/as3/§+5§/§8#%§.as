package §+5§
{
   import § #m§.§;#^§;
   import § &5§.§%$O§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#H§.§<§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §4!K§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §<!^§.§["l§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §=#g§.§&%5§;
   import §?$7§.§6J§;
   import §?$K§.§=z§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?>§.§]!V§;
   import §@!N§.§'+§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import com.greensock.TweenMax;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.IncreaseLevelClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §8#%§ extends §2!R§
   {
      
      private static const §#!-§:int = § $e§ * 0.2;
      
      private static const §8&4§:int = § $e§ * 0.4;
      
      private static const §]#r§:uint = 40;
      
      private static const §9$$§:uint = 30;
      
      private var §[%C§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var targets:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §'%>§:§7#P§;
      
      private var §7!w§:int = 0;
      
      public function §8#%§(param1:§+%]§, param2:§5$n§, param3:§5$n§)
      {
         super(param1,param2,param3);
         this.§'%>§ = §@%;§.play(§`!v§.§"m§,true);
      }
      
      override protected function update() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         var _loc3_:int = 0;
         _loc1_ = new Vector.<§+%]§>(0);
         for each(_loc2_ in this.targets)
         {
            if(!_loc2_.disposed)
            {
               if(§-q§.distance(_loc2_.x,_loc2_.y,x,y) < §]#r§)
               {
                  _loc2_.x = x;
                  _loc2_.y = y - 5;
                  _loc2_.clip.rotation += direction * 15;
                  _loc1_.push(_loc2_);
               }
               else
               {
                  _loc2_.setSpeedXY(0,-5);
                  this.§[%C§.push(_loc2_);
                  --this.§7!w§;
               }
            }
         }
         this.targets = _loc1_;
         this.§!$-§();
         _loc3_ = Math.max(§8&4§,§ $e§ - Math.ceil(§#!-§ * this.§7!w§));
         if(_loc3_ != §+h§)
         {
            §+h§ = _loc3_;
            §6a§(physicModel).crawling = direction * §+h§;
         }
      }
      
      private function §!$-§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.disposed && _loc2_ != owner && this.targets.indexOf(_loc2_) == -1 && this.§[%C§.indexOf(_loc2_) == -1 && §^$y§.distance(_loc2_.x - this.x,_loc2_.y - this.y) < §9$$§ && !_loc2_.buffs.hasBuff(§=z§.NAME))
            {
               inflictDamage(_loc2_,frames >> 1,0,0);
               §@%;§.play(§`!v§.§+!+§);
               if(!_loc2_.disposed)
               {
                  this.targets.push(_loc2_);
                  ++this.§7!w§;
               }
            }
         }
      }
      
      override public function explode() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc4_:§+%]§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         disposed = true;
         inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
         §1"-§.§&!C§(x,y,12);
         §1"-§.explode(§;n§.§@%d§,this.x,this.y,paramSet.explosionRadius.value,§`!v§.§-$L§);
         _loc1_ = §="j§(owner);
         _loc2_ = 20;
         var _loc3_:Number = _loc2_ + _loc1_;
         for each(_loc4_ in this.targets)
         {
            if(!_loc4_.disposed)
            {
               _loc5_ = 1 * §8"%§.randomSeed.§,!q§(-5,5);
               _loc6_ = _loc5_ + (_loc5_ > 0 ? _loc1_ : -_loc1_);
               §'"$§.§<#j§(_loc4_,_loc6_,_loc3_,false);
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:§+%]§ = null;
         if(this.§'%>§)
         {
            this.§'%>§.stop();
            this.§'%>§ = null;
         }
         for each(_loc2_ in this.targets)
         {
            if(!_loc2_.disposed)
            {
               _loc2_.stable = false;
            }
         }
      }
   }
}

