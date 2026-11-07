package ru.pragmatix.wormix.weapons
{
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import §"#x§.§'"$§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §4%_§.§3§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §9%W§.§!7§;
   import §;"9§.§;"c§;
   import §<!G§.§5b§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class LaserGun extends §5b§
   {
      
      private static const §##u§:Array = [§3&2§,§3#3§,§+%q§,§;$n§,§;"c§,§3%0§,§1%b§];
      
      private static const §-3§:uint = 1000;
      
      private static const §<$I§:§&$2§ = new §&$2§(32);
      
      private static const §1"T§:§&$2§ = new §&$2§(4);
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const PI_QUARTER:Number = Math.PI / 4;
      
      private static const § ;§:Number = Math.PI / 6;
      
      private static const §^#'§:Number = Math.PI / 360;
      
      private static const §@#W§:uint = 6;
      
      private static const §?$4§:uint = 5;
      
      private static const FIRE_POWER:int = 4;
      
      private static const FIRE_DURATION:int = 10;
      
      private var §>O§:Shape;
      
      private var §^C§:MovieClip;
      
      private var sound:§7#P§;
      
      private var §[!_§:Point;
      
      private var burning:Boolean = false;
      
      private var bullets:§&$2§ = new §&$2§(§<$I§.value);
      
      private var armorReduction:uint = 0;
      
      private var rayColor:uint;
      
      private var rayLength:int;
      
      private var allUnits:Vector.<§+%]§>;
      
      private var §&#x§:Vector.<§&"T§>;
      
      private var damageType:§&!E§ = §&!E§.§!?§;
      
      public function LaserGun()
      {
         var _loc1_:Number = PI_HALF - § ;§;
         super(§^#'§,_loc1_);
         §7&§(new §!7§(§!7§.§'$+§,PI_HALF,_loc1_));
      }
      
      override public function §""2§(param1:Object) : void
      {
         if(param1["burning"])
         {
            this.burning = param1["burning"].value;
            this.damageType = §&!E§.FIRE;
         }
         if(param1["bullets"])
         {
            this.bullets.value = param1["bullets"].value;
         }
         if(param1["armorReduction"])
         {
            this.armorReduction = param1["armorReduction"].value;
         }
         this.rayLength = param1["rayLength"] ? int(param1["rayLength"].value) : int(§-3§);
         this.rayColor = param1["rayColor"];
         super.§""2§(param1);
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         if(this.sound)
         {
            this.sound.stop();
            this.sound = null;
         }
         if(this.§>O§ != null)
         {
            Application.scene.removeChild(this.§>O§);
            this.§>O§ = null;
            Application.scene.removeChild(this.§^C§);
            this.§^C§ = null;
         }
         this.§[!_§ = null;
      }
      
      override protected function §`%V§() : void
      {
         super.§`%V§();
         this.sound = §@%;§.play(§`!v§.§`@§,true);
         ch.visible = false;
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§+%]§ = null;
         var _loc6_:§&"T§ = null;
         if(owner != null)
         {
            _loc2_ = owner;
            §=W§ = getBarrelPoint(angle);
            _loc3_ = paramSet.damage.value;
            if(frames.value % §@#W§ == 0)
            {
               this.§[!_§ = §>#9§.§3%2§(§=W§.x,§=W§.y,angle,this.rayLength);
               if(this.§[!_§)
               {
                  §1"-§.§&!C§(this.§[!_§.x,this.§[!_§.y,4);
                  §'"$§.§]#I§(_loc2_,this.§[!_§.x,this.§[!_§.y,null,_loc3_,paramSet.damageRadius.value,paramSet.explosionRadius.value,false,false,this.damageType);
               }
               else
               {
                  this.§[!_§ = new Point(§=W§.x + Math.cos(angle) * this.rayLength,§=W§.y + Math.sin(angle) * this.rayLength);
               }
            }
            if(frames.value % §?$4§ == 0)
            {
               _loc4_ = _loc2_.direction;
               if(frames.value % 10 == 0 || !this.allUnits || this.allUnits.length == 0)
               {
                  this.allUnits = §8"%§.§?!W§.§4"m§.§5#h§();
               }
               else
               {
                  §7z§.§7"K§(this.allUnits);
               }
               for each(_loc5_ in this.allUnits)
               {
                  if(Boolean(this.§[!_§ && _loc2_ && _loc5_ != _loc2_) && Boolean(!_loc5_.disposed) && §-q§.§+K§(§=W§.x,§=W§.y,this.§[!_§.x,this.§[!_§.y,_loc5_.x,_loc5_.y,28))
                  {
                     §'"$§.§]#I§(_loc2_,_loc5_.x,_loc5_.y,_loc5_,_loc3_,0,0,false,false,this.damageType);
                     if(!_loc5_.isImmobile())
                     {
                        §-O§(_loc5_.physicModel).rolling = _loc4_ * §1"T§.value;
                     }
                  }
               }
               if(frames.value % 10 == 0 || !this.§&#x§ || this.§&#x§.length == 0)
               {
                  this.§&#x§ = Application.scene.§@$I§.§;%a§.§"L§(§##u§);
               }
               else
               {
                  §7z§.§^"]§(this.§&#x§);
               }
               for each(_loc6_ in this.§&#x§)
               {
                  if(Boolean(_loc2_) && Boolean(this.§[!_§) && §-q§.§+K§(§=W§.x,§=W§.y,this.§[!_§.x,this.§[!_§.y,_loc6_.x,_loc6_.y,15))
                  {
                     §'"$§.§]#I§(_loc2_,_loc6_.x - _loc2_.direction * 5,_loc6_.y + 5,_loc6_,_loc3_,0,0,false,false,this.damageType);
                  }
               }
               ++§<$-§.value;
            }
            if(this.§[!_§)
            {
               this.§5##§(this.§[!_§.x,this.§[!_§.y);
            }
            var _loc7_:§&$2§ = frames;
            var _loc8_:Number = _loc7_.value + 1;
            _loc7_.value = _loc8_;
            if(owner)
            {
               super.onFrame(param1);
            }
            if(§<$-§.value == this.bullets.value)
            {
               this.§?!K§();
            }
         }
      }
      
      private function §5##§(param1:int, param2:int) : void
      {
         if(owner)
         {
            if(this.§>O§ == null)
            {
               this.§>O§ = new Shape();
               Application.scene.addChild(this.§>O§);
               this.§^C§ = §6#A§.§!&6§(paramSet.ammoClassName);
               Application.scene.addChild(this.§^C§);
            }
            this.§>O§.graphics.clear();
            this.§>O§.graphics.lineStyle(4,this.rayColor);
            this.§>O§.graphics.moveTo(§=W§.x,§=W§.y);
            this.§>O§.graphics.lineTo(param1,param2);
            this.§^C§.x = param1;
            this.§^C§.y = param2;
         }
      }
   }
}

