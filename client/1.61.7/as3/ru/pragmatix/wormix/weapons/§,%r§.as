package ru.pragmatix.wormix.weapons
{
   import § !8§.§`!d§;
   import §%Q§.§?!L§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §+%S§.§2&>§;
   import §+%S§.§=$2§;
   import §0!§.*;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.§'5§;
   import §2#H§.§,"R§;
   import §9%W§.§!"G§;
   import §9%W§.§`"y§;
   import §9&+§.§>&5§;
   import §<%c§.§>!^§;
   import §<%k§.§2§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §?#g§.Race;
   import §@!N§.§3!3§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.interfaces.§&$+§;
   
   public class §,%r§ implements §&$+§
   {
      
      protected static const §2"w§:uint = 1;
      
      protected static const §<g§:uint = 2;
      
      protected static const §]!U§:uint = 4;
      
      private var log:§&`§ = new §&`§(§,%r§);
      
      private var §,%d§:Array = [];
      
      protected var § #i§:uint;
      
      public var recordId:§&$2§;
      
      public var shots:§&$2§ = new §&$2§(1);
      
      public var shotsLeft:§&$2§ = new §&$2§(0);
      
      private var §<$-§:Array = [];
      
      public var shotParams:§!!q§;
      
      protected var owner:§+%]§;
      
      protected var §"#>§:Array = [];
      
      protected var §9q§:int = 0;
      
      public var clipClassName:String = null;
      
      protected var active:§?"&§ = new §?"&§(false);
      
      public var clip:MovieClip = null;
      
      public var secondaryClip:MovieClip = null;
      
      protected var §"#z§:uint;
      
      protected var §2$"§:uint;
      
      protected var §-g§:§?!L§;
      
      protected var §&&E§:§>&5§;
      
      protected var hint:String = "";
      
      protected var paramSet:§5$n§;
      
      protected var paramSetEx:§5$n§;
      
      protected var property:Object;
      
      protected var §3$i§:Boolean = false;
      
      protected var §^&I§:§?"&§ = new §?"&§(true);
      
      public function §,%r§(param1:uint = 0)
      {
         super();
         this.§ #i§ = param1;
      }
      
      public function attach(param1:§+%]§) : void
      {
         var _loc3_:Function = null;
         this.§?"'§ = false;
         this.owner = param1;
         this.§&&E§.activate(this.owner);
         this.§9q§ = 0;
         this.shotParams = new §!!q§();
         this.shotsLeft.value = this.shots.value;
         this.§<$-§ = [];
         if(param1.stable)
         {
            this.activate();
         }
         if(param1.crawling != 0)
         {
            this.deactivate();
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§"#>§.length)
         {
            _loc3_ = this.§&$P§(_loc2_);
            §`"y§(this.§"#>§[_loc2_]).addEventListener(§0%v§.§0"_§,_loc3_);
            this.§,%d§[_loc2_] = _loc3_;
            _loc2_++;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            Application.scene.§7#o§.§ l§(this.hint);
         }
      }
      
      public function §?!K§() : void
      {
         if(!this.owner)
         {
            return;
         }
         this.deactivate();
         this.§2#G§();
         this.§&&E§.deactivate(this.owner);
         this.owner.lastWeapon = this;
         this.owner.weapon = null;
         this.owner = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"#>§.length)
         {
            §`"y§(this.§"#>§[_loc1_]).removeEventListener(§0%v§.§0"_§,this.§,%d§[_loc1_]);
            _loc1_++;
         }
         this.§,%d§ = [];
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            Application.scene.§7#o§.§="x§();
         }
      }
      
      public function activate() : void
      {
         if(this.active.value || !this.owner)
         {
            return;
         }
         this.active.value = true;
         if(this.§"#>§[this.§9q§])
         {
            §`"y§(this.§"#>§[this.§9q§]).activate(this.owner);
         }
         this.owner.graphics.hideHands(this.§&&E§.§]%W§());
         this.owner.graphics.§9!I§(false);
      }
      
      public function deactivate() : void
      {
         if(!this.active.value)
         {
            return;
         }
         this.active.value = false;
         §`"y§(this.§"#>§[this.§9q§]).deactivate();
         this.owner.graphics.§34§();
         this.owner.graphics.§9!I§(true);
      }
      
      public function rotateWeaponClip(param1:Number) : void
      {
         if(this.clip != null)
         {
            this.clip.rotation = param1 * 180 / Math.PI + (this.owner.direction == §+%]§.LEFT ? 180 : 0);
         }
         if(this.secondaryClip != null)
         {
            this.secondaryClip.rotation = 0;
         }
      }
      
      public function getBarrelPoint(param1:Number) : Point
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:Point = new Point(this.owner.x,this.owner.y);
         if(this.clip != null && this.clip.getChildByName("barrel") != null)
         {
            _loc3_ = this.clip.getChildByName("barrel");
            _loc2_.x += this.clip.x + _loc3_.x * Math.cos(param1) - this.owner.direction * _loc3_.y * Math.sin(param1);
            _loc2_.y += this.clip.y + _loc3_.x * Math.sin(param1) + this.owner.direction * _loc3_.y * Math.cos(param1);
         }
         return _loc2_;
      }
      
      protected function §7&§(param1:§`"y§) : int
      {
         return uint(this.§"#>§.push(param1) - 1);
      }
      
      protected function §&$P§(param1:uint) : Function
      {
         var i:uint = param1;
         return function(param1:§'5§):void
         {
            var ind:*;
            var activeSquad:* = undefined;
            var local:* = undefined;
            var message:* = undefined;
            var e:§'5§ = param1;
            if(!active.value || §?"'§)
            {
               return;
            }
            deactivate();
            shotParams.§'#q§(e.params);
            §7k§(i);
            ind = i + 1;
            if(§"#>§[ind])
            {
               §9q§ = ind;
               activate();
               return;
            }
            if(owner.aiArsenal != null)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"weapon usage in AI turn"));
            }
            activeSquad = §8"%§.§?!W§.§4"m§.activeSquad;
            local = activeSquad.isLocal() ? "loc" : (activeSquad.isAi() ? "ai" : (activeSquad.isRemote() ? "rem" : "-"));
            try
            {
               §=$V§();
            }
            catch(error:Error)
            {
               if(Boolean(activeSquad) && Boolean(activeSquad.isLocal()))
               {
                  §8"%§.§?!W§.§`$d§(§<$Z§.§!M§,§3$z§.SURRENDER);
               }
               message = "Exception on (" + local + ") shoot! (" + recordId.value + ") : " + error.toString();
               Application.§%%F§(message);
               new §,#W§(§0$N§.TITLE_ERROR,message,§,#W§.§6!m§).show(false);
            }
         };
      }
      
      private function §=$V§() : void
      {
         §2#6§.§"!9§(this.owner);
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         --this.shotsLeft.value;
         this.§<$-§.push(this.shotsLeft.value);
         this.§<#h§();
         Application.scene.dispatchEvent(new WeaponShootEvent(this.recordId.value,this.stopsTimer(),this.shotsLeft.value > 0));
         this.§`%V§();
         if(this.§^&I§.value && §8"%§.§?!W§.§4"m§.§=%g§() && !§8"%§.§?!W§.§4"m§.§"$6§())
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"weapon selection hacked 4"));
         }
         this.§9q§ = 0;
         if(this.shotsLeft.value > 0)
         {
            this.activate();
         }
      }
      
      protected function §`%V§() : void
      {
      }
      
      protected function §7k§(param1:int) : void
      {
      }
      
      protected function onFrame(param1:Event) : void
      {
      }
      
      protected function startFrameListening() : void
      {
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      protected function §2#G§() : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      public function isActive() : Boolean
      {
         return this.active.value;
      }
      
      public function §4!J§() : §5$n§
      {
         return this.paramSet;
      }
      
      public function § #Z§(param1:§5$n§) : void
      {
         this.paramSet = param1;
      }
      
      public function §2">§(param1:§5$n§) : void
      {
         this.paramSetEx = param1;
      }
      
      public function §#w§(param1:uint, param2:uint) : void
      {
         if(param1 != 0)
         {
            this.§"#z§ = param1;
         }
         if(param2 != 0)
         {
            this.§2$"§ = param2;
         }
      }
      
      public function shootWithParams(param1:§!!q§) : void
      {
         this.shotParams = param1;
         if(Boolean(param1) && Boolean(param1.angle))
         {
            this.rotateWeaponClip(param1.angle);
         }
         this.§=$V§();
      }
      
      public function §;#x§() : §`"y§
      {
         return this.§"#>§[this.§9q§];
      }
      
      protected function §-&I§(param1:uint) : uint
      {
         return this.§"#z§ + (this.§2$"§ - this.§"#z§) * param1 / §!"G§.§+!p§;
      }
      
      public function powerToCharge(param1:uint) : uint
      {
         return Math.round((param1 - this.§"#z§) * §!"G§.§+!p§ / (this.§2$"§ - this.§"#z§));
      }
      
      public function get §7"v§() : uint
      {
         return this.§"#z§;
      }
      
      public function get §'s§() : uint
      {
         return this.§2$"§;
      }
      
      public function stopsTimer() : Boolean
      {
         return this.§^&I§.value;
      }
      
      protected function set §?"'§(param1:Boolean) : void
      {
         if(this.owner)
         {
            this.owner.graphics.§9!I§(!param1);
         }
         this.§3$i§ = param1;
      }
      
      protected function get §?"'§() : Boolean
      {
         return this.§3$i§;
      }
      
      public function §92§() : Boolean
      {
         return this.§3$i§;
      }
      
      public function get §,!"§() : §?!L§
      {
         return this.§-g§;
      }
      
      public function §<#P§() : void
      {
      }
      
      public function §0%p§() : void
      {
      }
      
      public function §6!K§() : void
      {
      }
      
      public function §?&!§() : void
      {
      }
      
      public function §"#W§(param1:uint) : void
      {
      }
      
      public function §%!3§() : Boolean
      {
         return (this.§ #i§ & §2"w§) > 0;
      }
      
      public function §8"J§() : Boolean
      {
         return (this.§ #i§ & §<g§) > 0;
      }
      
      public function §##0§() : Boolean
      {
         return (this.§ #i§ & §]!U§) > 0;
      }
      
      public function §8"X§() : §>&5§
      {
         return this.§&&E§;
      }
      
      public function §8$#§(param1:§>&5§) : void
      {
         this.§&&E§ = param1;
      }
      
      public function §<$U§(param1:String) : void
      {
         this.hint = param1;
      }
      
      public function §""2§(param1:Object) : void
      {
         this.property = param1;
      }
      
      public function getProperty(param1:String) : Object
      {
         return this.property ? this.property[param1] : null;
      }
      
      public function §[#@§(param1:String) : int
      {
         return this.property ? int(parseInt(this.property[param1])) : 0;
      }
      
      public function §8$ §(param1:String) : §&$2§
      {
         return Boolean(this.property) && this.property[param1] is §&$2§ ? this.property[param1] : null;
      }
      
      public function §3"N§(param1:String) : §?"&§
      {
         return Boolean(this.property) && this.property[param1] is §?"&§ ? this.property[param1] : null;
      }
      
      public function §;>§() : uint
      {
         var _loc1_:§`"y§ = this.§"#>§[int(this.§"#>§.length - 1)];
         if(_loc1_.§>#G§(§#!Z§.§'#§))
         {
            return §#!Z§.§'#§;
         }
         if(_loc1_.§>#G§(§#!Z§.§=$l§))
         {
            return §#!Z§.§=$l§;
         }
         return §#!Z§.§#B§;
      }
      
      private function §<#h§() : void
      {
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !§8"%§.§?!W§.isLearning() && (§8"%§.§?!W§.§4"m§.§'U§() || this.shotsLeft.value + this.§<$-§.length != this.shots.value))
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"weapon shots hacked"));
         }
      }
      
      [Abstract]
      public function §2#v§() : void
      {
      }
      
      [Abstract]
      public function reset() : void
      {
         if(this.clip)
         {
            §3!3§.§>!j§(null,this.clip);
            if(this.clip.parent)
            {
               this.clip.parent.removeChild(this.clip);
            }
         }
         if(this.secondaryClip)
         {
            §3!3§.§>!j§(null,this.secondaryClip);
            if(this.secondaryClip.parent)
            {
               this.secondaryClip.parent.removeChild(this.secondaryClip);
            }
         }
      }
   }
}

