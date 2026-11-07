package §[!`§
{
   import § !8§.§`!d§;
   import § !P§.*;
   import § &5§.§@N§;
   import §"%H§.§'%u§;
   import §#k§.§9$v§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,#_§.§%!_§;
   import §0"L§.§+# §;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2#H§.§>#M§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §=7§.*;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§9!K§;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<#m§ extends §&"T§
   {
      
      private static const §`"2§:uint = 0;
      
      private static const §<!Y§:uint = 1;
      
      private static const §;!9§:uint = 2;
      
      private static const §9!C§:uint = 3;
      
      private static const §5!]§:uint = 4;
      
      private static const §^#'§:Number = Math.PI / 360;
      
      private static const §["m§:String = "HackerGenerationActivated";
      
      private static const §2%q§:String = "HackerGenerationIdle";
      
      private static const §!%@§:String = "HackerGenerationDeactivated";
      
      private static const §'#k§:String = "HackerGenerationDamaged";
      
      private var state:uint;
      
      private var radius:§&$2§;
      
      private var owner:§+%]§;
      
      private var params:§5$n§ = new §5$n§();
      
      private var timer:§%!_§;
      
      private var animation:Object;
      
      public function §<#m§(param1:§+%]§, param2:int, param3:int, param4:§&$2§, param5:§&$2§)
      {
         super(true,§@N§.§7&H§);
         this.owner = param1;
         this.radius = param4;
         §,q§.push(§-&§.IMMOVABLE);
         this.params.damage = new §&$2§(param5.value);
         this.params.damageRadius = new §&$2§(25);
         this.params.explosionRadius = new §&$2§(10);
         this.timer = new §%!_§(0,1);
         this.timer.addEventListener(FrameTimerEvent.§;$>§,this.§3!T§);
         this.animation = {};
         this.animation[§["m§] = §6#A§.§!&6§(§["m§);
         this.animation[§2%q§] = §6#A§.§!&6§(§2%q§);
         this.animation[§!%@§] = §6#A§.§!&6§(§!%@§);
         this.animation[§'#k§] = §6#A§.§!&6§(§'#k§);
         this.setState(§9!C§);
         this.x = param2;
         this.y = param3;
         stable = true;
         §-b§(0,50);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc3_.disposed && §-q§.distance(x,y,_loc3_.x,_loc3_.y) <= this.radius.value)
            {
               if(this.state == §9!C§ || this.state == §;!9§)
               {
                  this.setState(§`"2§);
               }
               return;
            }
         }
         if(this.state == §<!Y§ || this.state == §`"2§)
         {
            this.setState(§;!9§);
         }
      }
      
      private function § &>§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:String = null;
         for(_loc3_ in this.animation)
         {
            if(_loc3_ == param1)
            {
               _loc2_ = this.animation[_loc3_];
            }
            MovieClip(this.animation[_loc3_]).stop();
         }
         _loc2_.gotoAndPlay(1);
         return _loc2_;
      }
      
      private function setState(param1:uint) : void
      {
         if(param1 != this.state)
         {
            switch(param1)
            {
               case §`"2§:
                  this.swapClip(this.§ &>§(§["m§));
                  this.timer.restart(clip.totalFrames);
                  break;
               case §<!Y§:
                  this.swapClip(this.§ &>§(§2%q§));
                  break;
               case §;!9§:
                  this.swapClip(this.§ &>§(§!%@§));
                  this.timer.restart(clip.totalFrames);
                  break;
               case §9!C§:
                  this.swapClip(this.§ &>§(§["m§));
                  clip.stop();
                  break;
               case §5!]§:
                  this.swapClip(this.§ &>§(§'#k§));
                  this.timer.restart(clip.totalFrames);
            }
            this.state = param1;
         }
      }
      
      private function §3!T§(param1:Event) : void
      {
         if(this.state == §`"2§)
         {
            this.setState(§<!Y§);
         }
         else if(this.state == §;!9§)
         {
            this.setState(§9!C§);
         }
         else if(this.state == §5!]§)
         {
            this.setState(this.state);
         }
         this.timer.stop();
      }
      
      override public function swapClip(param1:MovieClip) : void
      {
         super.swapClip(param1);
         scale = 0.66;
      }
      
      public function §4$3§() : Boolean
      {
         return this.state == §<!Y§ || this.state == §`"2§;
      }
      
      public function §9!j§() : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:uint = this.state;
         this.setState(§5!]§);
         this.state = _loc1_;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc3_.disposed && §-q§.distance(x,y,_loc3_.x,_loc3_.y) <= this.radius.value)
            {
               _loc4_ = §8"%§.randomSeed.§,!q§(-20,20);
               _loc5_ = Math.atan2(_loc3_.y - y,_loc3_.x - x) + _loc4_ * §^#'§;
               new §9!K§(this.owner,this,this.params,_loc5_,50,20,30);
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         this.radius = null;
         this.owner = null;
         this.params = null;
         this.animation = null;
         if(this.timer != null)
         {
            this.timer.stop();
            this.timer = null;
         }
         super.§[$u§(param1);
      }
   }
}

