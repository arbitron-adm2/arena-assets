package §3#T§
{
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+&<§.*;
   import §-!U§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §?$7§.§8"e§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class Mole extends §6#I§
   {
      
      private static const §%$9§:§&$2§ = new §&$2§(15);
      
      private static const §'"i§:§&$2§ = new §&$2§(10);
      
      private static const §'!e§:int = 4;
      
      private static const §6%9§:int = 200;
      
      private static const §>#K§:int = 15;
      
      private static const §;o§:int = 90;
      
      private static const SPEED:int = 10;
      
      private var counter:uint = 0;
      
      protected var §"b§:Boolean;
      
      private var params:§5$n§;
      
      private var damage:int;
      
      public function Mole(param1:§+%]§, param2:§5$n§, param3:Number)
      {
         super(param1,param1.x,param1.y,false);
         this.params = param2;
         this.damage = param2.damage.value;
         §,%S§ = true;
         §6""§ = true;
         initialize(§"$C§(param3,0),param2.ammoClassName);
         physParams.§"%<§(§]%G§.§5$r§.name);
         physParams.§`#&§ = false;
         physParams.ignoresTerrain = true;
         physParams.§3&I§ = true;
         §^"F§(param3,SPEED);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
         if(Math.abs(param3) > Math.PI / 2)
         {
            clip.scaleY *= -1;
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         super.§!!>§();
         if(!disposed && frames % 2 == 0)
         {
            _loc1_ = §8"%§.§?!W§.§4"m§.§5#h§();
            _loc1_.splice(_loc1_.indexOf(owner),1);
            _loc1_ = §<H§.§5"]§(x,y,20,_loc1_);
            ++this.counter;
            this.damage = §6%9§ > this.damage ? int(this.damage + §'!e§) : §6%9§;
            if(this.counter == 1 && !owner.disposed)
            {
               owner.stable = false;
            }
            if(_loc1_.length > 0 || §>#9§.point(x,y,true) || !§>#9§.point(x,y) && this.counter > 1 || frames > §;o§)
            {
               _loc2_ = _loc1_.length > 0 ? _loc1_[0] : null;
               if(_loc2_)
               {
                  this.inflictDamage(_loc2_,this.damage,this.params.damageRadius.value,this.params.explosionRadius.value);
               }
               else
               {
                  this.inflictDamage(null,this.damage,this.params.damageRadius.value,this.params.explosionRadius.value);
               }
               disposed = true;
               §1"-§.§&!C§(x,y,16);
               §1"-§.explode(§;n§.§@%d§,x,y,this.params.explosionRadius.value,§`!v§.§4"t§);
               this.§"b§ = false;
            }
            else
            {
               §@%;§.play(§`!v§.§0#O§);
               this.inflictDamage(null,§'"i§.value,§%$9§.value + 10,§%$9§.value,false);
               §1"-§.§&!C§(x,y,4);
               this.§"b§ = true;
            }
         }
         else
         {
            this.§"b§ = false;
         }
      }
      
      override public function inflictDamage(param1:§&"T§, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Boolean = false, param7:Boolean = true, param8:Object = null) : void
      {
         var _loc10_:§+%]§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         super.inflictDamage(param1,param2,param3,param4,param5,param6,param7,param8);
         var _loc9_:Vector.<§+%]§> = §<H§.§5"]§(x,y,param3);
         for each(_loc10_ in _loc9_)
         {
            _loc11_ = _loc10_.attributes.hp.§@#@§() / §8! §;
            _loc12_ = Math.min(§>#K§,_loc11_);
            _loc13_ = §-q§.§'x§(x,y,_loc10_.x,_loc10_.y);
            _loc10_.§^"F§(_loc13_,_loc12_);
         }
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         §1"-§.§&!C§(x,y,16);
         §1"-§.explode(§;n§.§@%d§,x,y,this.params.explosionRadius.value,§`!v§.§4"t§);
         this.inflictDamage(null,this.damage,this.params.damageRadius.value,this.params.explosionRadius.value);
         super.§1$Z§(param1);
      }
   }
}

