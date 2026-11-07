package ru.pragmatix.wormix.weapons
{
   import § !P§.§9%Z§;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §5!,§.§+"_§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8$V§.§^#§;
   import §9"-§.§?!s§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §^!]§.§-$w§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.Rope;
   import §^4§.§;!K§;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§3!=§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class RopeGun extends §,%r§ implements §3N§, §##=§, §=!s§, §-$2§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const PI_QUARTER:Number = Math.PI / 4;
      
      private static const §8%X§:Number = 10;
      
      private static const §#%"§:Number = 0.5;
      
      private var §>"f§:§]%G§ = new §]%G§("ROPE_ACC",0,0);
      
      private var rope:Rope;
      
      private var §]"p§:Point;
      
      private var §1#u§:Boolean;
      
      private var §=$o§:Boolean;
      
      private var §&#G§:Boolean;
      
      private var ropeLength:§&$2§;
      
      private var §>&8§:MovieClip;
      
      private var gm:§]$;§;
      
      private var §6t§:Point;
      
      public function RopeGun(param1:uint = 0)
      {
         super(param1);
         §7&§(new §!7§(§!7§.§'$+§,PI_HALF,0));
         §2$"§ = 50;
         §"#z§ = 25;
         §^&I§.value = false;
      }
      
      override public function §""2§(param1:Object) : void
      {
         if(param1["ropeSpeed"])
         {
            §2$"§ = param1["ropeSpeed"].value;
         }
         if(param1["extraLength"])
         {
            this.ropeLength = new §&$2§(§<$t§.§-3§);
         }
         else
         {
            this.ropeLength = new §&$2§(§<$t§.§-3§ - 50);
         }
         this.§>&8§ = §6#A§.§!&6§(param1["gunClip"]);
         super.§""2§(param1);
      }
      
      override public function attach(param1:§+%]§) : void
      {
         this.gm = §8"%§.§?!W§.§4"m§;
         if(param1.§4#§ > 0)
         {
            param1.§4#§ = 0;
         }
         this.§1#u§ = false;
         this.§=$o§ = false;
         super.attach(param1);
      }
      
      override public function activate() : void
      {
         if(!active.value)
         {
            if(this.rope != null)
            {
               this.§0"!§();
               if(this.gm.§=%g§())
               {
                  this.gm.§%!J§(true);
                  §+# §.§9! §.activate();
               }
            }
            this.§&#G§ = true;
            super.activate();
         }
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         var _loc2_:§!!q§ = null;
         if(this.§?&4§)
         {
            if(!this.§6#N§(owner))
            {
               this.§4&G§();
            }
            else if(this.gm.§#"G§())
            {
               if(this.gm.§=%g§())
               {
                  this.gm.§%!J§(false);
               }
               this.§&#G§ = false;
               _loc2_ = new §!!q§();
               _loc2_.angle = -PI_HALF + owner.direction * PI_QUARTER;
               _loc2_.isAlternate = param1;
               shootWithParams(_loc2_);
            }
         }
         else
         {
            this.§4&G§();
         }
      }
      
      override protected function §`%V§() : void
      {
         if(this.§?&4§)
         {
            if(!this.§6#N§(owner))
            {
               this.§4&G§();
            }
            else
            {
               this.§5+§(shotParams.angle);
            }
         }
         else
         {
            this.§4&G§();
         }
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         if(this.gm.§'%i§().§9"c§)
         {
            if(this.gm.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.TIME_IS_OUT,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         if(§9$h§.§!%w§(param1))
         {
            if(this.gm.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      private function §5+§(param1:Number) : void
      {
         var _loc2_:§?"&§ = null;
         var _loc3_:int = 0;
         if(this.rope)
         {
            this.§0"!§();
         }
         if(!(Math.sin(param1) > 0.1 && !shotParams.isAlternate))
         {
            _loc2_ = property["supplyPickup"] as §?"&§;
            _loc3_ = int(§2$"§);
            if(Boolean(_loc2_ && _loc2_.value) && Boolean(shotParams.isAlternate) && this.§;@§())
            {
               param1 = shotParams.angle;
               _loc3_ = int(§"#z§);
            }
            if(this.gm.§=%g§())
            {
               §+# §.§9! §.deactivate();
            }
            this.§6t§ = new Point(owner.x,owner.y);
            this.§]"p§ = new Point(owner.x,owner.y);
            this.§>"f§.ax = 0;
            this.rope = new Rope(owner,owner.x,owner.y,paramSet,param1,_loc3_,this.ropeLength.value,Boolean(_loc2_) && _loc2_.value);
            this.rope.§@!H§ = _loc3_ == §"#z§;
            this.rope.addEventListener(§0%v§.§+&=§,this.§<$`§);
            this.rope.addEventListener(§0%v§.DISPOSED,this.§8#e§);
            owner.keepUnstable = true;
         }
      }
      
      override public function §?!K§() : void
      {
         if(this.rope != null)
         {
            if(this.§]"p§ == null)
            {
               this.weaponCharge();
            }
            else
            {
               this.§0"!§();
            }
            §+# §.§@%V§.deactivate();
         }
         super.§?!K§();
      }
      
      private function §<$`§(param1:CollisionEvent) : void
      {
         var _loc2_:Point = null;
         if(owner != null && !this.gm.§'%i§().§9"c§)
         {
            this.§=$o§ = true;
            §+# §.§@%V§.activate();
            this.rope.removeEventListener(§0%v§.§+&=§,this.§<$`§);
            _loc2_ = §>#9§.§>@§(owner.x,owner.y,this.rope.x - owner.x,this.rope.y - owner.y);
            if(_loc2_)
            {
               this.rope.x = _loc2_.x;
               this.rope.y = _loc2_.y;
            }
            this.§]"p§ = null;
            owner.§0& §(new Point(this.rope.x - this.rope.speedX,this.rope.y - this.rope.speedY));
            if(this.§&#G§)
            {
               owner.setSpeedXY(0,0);
            }
            owner.graphics.getClip().rotation = 0;
            owner.graphics.rope(this.§>&8§);
            §<$t§(owner.physicModel).physParams.addForce(this.§>"f§);
            startFrameListening();
            Application.scene.addEventListener(§0%v§.§]!l§,this.§5%!§);
            if(§8"%§.§&S§.§!$X§())
            {
               §%$O§.§4%s§(Application.scene,owner,true,false);
            }
            §+"_§.update(owner);
         }
         else
         {
            this.§0"!§();
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(owner == null || owner.disposed || this.gm.§[!W§() || this.gm.§1"3§())
         {
            if(this.rope != null && !this.rope.disposed)
            {
               this.weaponCharge();
            }
            §2#G§();
         }
      }
      
      private function §8#e§(param1:Event) : void
      {
         if(this.rope != null && this.rope.§<%P§())
         {
            this.weaponCharge();
         }
         else
         {
            this.§0"!§();
            Application.scene.dispatchEvent(new §-$w§(recordId.value));
            if(owner != null && !owner.disposed)
            {
               this.§4&G§();
            }
         }
      }
      
      private function §5%!§(param1:DamageEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§3!=§ = null;
         if(Boolean(owner) && Boolean(!owner.disposed) && owner.physicModel is §<$t§)
         {
            _loc2_ = §<$t§(owner.physicModel).getJoints();
            for each(_loc3_ in _loc2_)
            {
               if(§^$y§.distance(param1.source.x - _loc3_.x,param1.source.y - _loc3_.y) < param1.power)
               {
                  this.weaponCharge();
                  break;
               }
            }
         }
      }
      
      private function §0"!§() : void
      {
         if(this.rope)
         {
            if(!this.rope.disposed)
            {
               this.rope.disposed = true;
            }
            this.rope.removeEventListener(§0%v§.§+&=§,this.§<$`§);
            this.rope.removeEventListener(§0%v§.DISPOSED,this.§8#e§);
            this.rope = null;
         }
         if(owner != null && !owner.disposed)
         {
            owner.keepUnstable = false;
         }
      }
      
      private function §4&G§() : void
      {
         var _loc1_:§+%]§ = null;
         if(Boolean(owner) && !owner.disposed)
         {
            _loc1_ = owner;
            this.§?!K§();
            if(this.gm.§#"G§())
            {
               _loc1_.§#&5§();
               if(this.gm.§=%g§())
               {
                  this.gm.§%!J§(true);
                  §+# §.§9! §.activate();
               }
            }
         }
      }
      
      public function weaponCharge() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:uint = 0;
         if(!this.§1#u§ && this.§=$o§)
         {
            this.§1#u§ = true;
            this.§=$o§ = false;
            if(this.gm.§=%g§())
            {
               §+# §.§@%V§.deactivate();
            }
            if(!owner.disposed)
            {
               owner.physParams.§"%<§(this.§>"f§.name);
               _loc1_ = §^$y§.sign(owner.speedX) * Math.min(Math.abs(owner.speedX),16);
               _loc2_ = §^$y§.sign(owner.speedY) * Math.min(Math.abs(owner.speedY),16);
               §<$t§(owner.physicModel).clear();
               Application.scene.removeEventListener(§0%v§.§]!l§,this.§5%!§);
               owner.§?"o§();
               owner.setSpeedXY(_loc1_,_loc2_);
               if(_loc1_ > 0 && owner.direction == §+%]§.LEFT)
               {
                  owner.turn(§+%]§.RIGHT);
               }
               else if(_loc1_ < 0 && owner.direction == §+%]§.RIGHT)
               {
                  owner.turn(§+%]§.LEFT);
               }
               owner.graphics.getClip().rotation = 0;
               owner.graphics.jump();
               owner.rotateUntilStable(false);
               if(Boolean(this.§6t§) && this.gm.activeSquad.isLocal())
               {
                  _loc3_ = §^$y§.distance(this.§6t§.x - owner.x,this.§6t§.y - owner.y) / §<H§.§3r§;
                  if(_loc3_ > 0)
                  {
                     §8"%§.§?!W§.§7%@§.increment(§!$L§.§^"R§,_loc3_);
                     §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§&"D§,_loc3_);
                     if(§8"%§.§?!W§.§7%@§.§"!k§() && !§9%Z§.§9$s§(§!$L§.§^"R§))
                     {
                        §2!H§.§'!i§(_loc3_.toString(),"0x5C98EF",owner.x,owner.y);
                     }
                  }
                  this.§6t§ = null;
               }
            }
            this.§0"!§();
            this.§4&G§();
         }
         else if(this.rope)
         {
            this.§0"!§();
         }
      }
      
      private function §;@§() : Boolean
      {
         var _loc4_:§&"T§ = null;
         var _loc1_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§-#8§]);
         var _loc2_:Vector.<§&"T§> = this.§&#G§ ? §<H§.§9#!§(owner.x,owner.y,this.ropeLength.value,-PI_HALF,PI_HALF,_loc1_) : §<H§.§3%'§(owner.x,owner.y,this.ropeLength.value,_loc1_);
         var _loc3_:Vector.<§&"T§> = new Vector.<§&"T§>();
         for each(_loc4_ in _loc2_)
         {
            if(!§>#9§.§>@§(owner.x,owner.y,_loc4_.x - owner.x,_loc4_.y - owner.y))
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc3_.length > 0)
         {
            _loc4_ = _loc3_[0];
            shotParams.angle = §-q§.§'x§(owner.x,owner.y,_loc4_.x,_loc4_.y);
            if(!this.§&#G§)
            {
               owner.§5!?§(0,1);
            }
            owner.turn(owner.x > _loc4_.x ? §@!o§.LEFT.value : §@!o§.RIGHT.value);
         }
         return _loc3_.length > 0;
      }
      
      public function weaponLeftPressed() : void
      {
         this.§>"f§.ax -= §#%"§;
      }
      
      public function weaponLeftReleased() : void
      {
         this.§>"f§.ax += §#%"§;
      }
      
      public function weaponRightPressed() : void
      {
         this.§>"f§.ax += §#%"§;
      }
      
      public function weaponRightReleased() : void
      {
         this.§>"f§.ax -= §#%"§;
      }
      
      public function weaponUpPressed() : void
      {
         if(owner.physicModel is §<$t§)
         {
            §<$t§(owner.physicModel).dLength = §<$t§(owner.physicModel).dLength - §8%X§;
         }
      }
      
      public function weaponUpReleased() : void
      {
         if(owner.physicModel is §<$t§)
         {
            §<$t§(owner.physicModel).dLength = §<$t§(owner.physicModel).dLength + §8%X§;
         }
      }
      
      public function weaponDownPressed() : void
      {
         if(owner.physicModel is §<$t§)
         {
            §<$t§(owner.physicModel).dLength = §<$t§(owner.physicModel).dLength + §8%X§;
         }
      }
      
      public function weaponDownReleased() : void
      {
         if(owner.physicModel is §<$t§)
         {
            §<$t§(owner.physicModel).dLength = §<$t§(owner.physicModel).dLength - §8%X§;
         }
      }
      
      private function get §?&4§() : Boolean
      {
         return !this.gm.§'%i§().§9"c§ && (!owner.isImmobile() || §8"%§.§?!W§.§^!U§().§<",§());
      }
      
      public function get ropeAttached() : Boolean
      {
         return this.§=$o§;
      }
   }
}

