package §?o§
{
   import § #m§.§;#^§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§1%"§;
   import §2#s§.§7"N§;
   import §5#`§.§7%g§;
   import §6"'§.§9$Z§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §=#g§.§%!x§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§=%A§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class StuffedBouncingGrenade extends §!%I§
   {
      
      private static const EXPLOSION_DELAY:§&$2§ = new §&$2§(5);
      
      private static const §%!r§:§&$2§ = new §&$2§(20);
      
      private static const §3$@§:§&$2§ = new §&$2§(60);
      
      private static const CRIPPLE_DURATION:§&$2§ = new §&$2§(2);
      
      private var cripple:Boolean = false;
      
      private var §%!N§:§&$2§ = new §&$2§(2);
      
      private var paramSetEx:§5$n§;
      
      public function StuffedBouncingGrenade(param1:§+%]§, param2:§5$n§, param3:uint, param4:Number, param5:uint, param6:Number, param7:String)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.paramSetEx = new §5$n§();
         this.paramSetEx.damage = new §&$2§(25);
         this.paramSetEx.damageRadius = new §&$2§(35);
         this.paramSetEx.explosionRadius = new §&$2§(22);
      }
      
      override public function explode() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!N§.value)
         {
            _loc2_ = §8"%§.randomSeed.§,!q§(§%!r§.value,§3$@§.value);
            _loc3_ = §8"%§.randomSeed.§,!q§(0,360);
            _loc4_ = x + _loc2_ * Math.cos(_loc3_);
            _loc5_ = y + _loc2_ * Math.sin(_loc3_);
            §8$a§.§%!E§(EXPLOSION_DELAY.value * (_loc1_ + 1),§1%"§.§]$<§(this.§@#B§,this,[_loc4_,_loc5_,owner]));
            _loc1_++;
         }
         if(this.cripple)
         {
            §7%g§.§,O§(x,y,paramSet.damageRadius.value,CRIPPLE_DURATION.value);
         }
         super.explode();
      }
      
      private function §@#B§(param1:int, param2:int, param3:§+%]§) : void
      {
         §'"$§.§]#I§(param3,param1,param2,null,this.paramSetEx.damage.value,this.paramSetEx.damageRadius.value,this.paramSetEx.explosionRadius.value,true);
         §1"-§.§&!C§(param1,param2,12);
         §1"-§.explode(§;n§.§8!-§,param1,param2,this.paramSetEx.damageRadius.value,§`!v§.§["s§);
         if(this.cripple)
         {
            §7%g§.§,O§(param1,param2,this.paramSetEx.damageRadius.value,CRIPPLE_DURATION.value);
         }
      }
      
      public function setMiniExplosions(param1:int) : void
      {
         this.§%!N§.value = param1;
      }
      
      public function setCripple() : void
      {
         this.cripple = true;
      }
   }
}

