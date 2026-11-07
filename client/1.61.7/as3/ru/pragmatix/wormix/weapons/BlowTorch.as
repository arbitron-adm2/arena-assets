package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §5#`§.§7%g§;
   import §9%W§.§!7§;
   import §9&+§.§6&=§;
   import §<%k§.§`!v§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class BlowTorch extends §,%r§ implements §3N§, §=!s§
   {
      
      protected var §3"K§:§&$2§ = new §&$2§(0);
      
      protected var §^!^§:MovieClip;
      
      protected var §,!i§:Boolean = false;
      
      protected var §4%[§:int;
      
      protected var §%#U§:Number;
      
      protected var §-$"§:Number;
      
      protected var angle:Number;
      
      protected const §'"i§:uint = 4;
      
      private var drillDistance:§&$2§;
      
      private const §%$o§:Number = 0.5235987755982988;
      
      private const §-%$§:Number = 0.5235987755982988;
      
      private const §;$q§:Number = 0.5235987755982988;
      
      private var §^%N§:§7#P§;
      
      private var setPlug:Boolean = false;
      
      private var §;_§:Vector.<Point>;
      
      public function BlowTorch()
      {
         super();
         §7&§(new §!7§(Math.PI / 6,Math.PI / 6,Math.PI / 6));
      }
      
      override public function §""2§(param1:Object) : void
      {
         this.drillDistance = §&$2§(param1.drillDistance);
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         this.§;_§ = new Vector.<Point>();
         if(property["setPlug"])
         {
            this.setPlug = property["setPlug"];
         }
         this.§4%[§ = Application.scene.§@$I§.§<#[§();
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §+# §.§9! §.deactivate();
         }
         this.§3"K§ = new §&$2§(0);
         this.§,!i§ = true;
         startFrameListening();
         this.§^!^§ = §6#A§.§!&6§(paramSet.ammoClassName);
         this.§^!^§.rotation = clip.rotation;
         owner.§#"%§(this.§^!^§,§6&=§(§&&E§).dx,§6&=§(§&&E§).dy);
         owner.graphics.hideHands("both");
         §6&=§(§&&E§).showHand(owner.record.getRace(),owner.record.§5"L§(),this.§^!^§);
         this.§%#U§ = owner.y;
         this.angle = shotParams.angle;
         this.§4"5§();
         this.§^%N§ = §@%;§.play(§`!v§.§>%l§,true);
      }
      
      override public function attach(param1:§+%]§) : void
      {
         param1.§4#§ = 0;
         super.attach(param1);
      }
      
      override public function §?!K§() : void
      {
         if(owner != null)
         {
            this.§&#`§();
            owner.§4#§ = 0;
         }
         super.§?!K§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
      }
      
      private function §4"5§() : void
      {
         this.§-$"§ = Math.sin(this.angle) * int(owner.attributes.§8$e§.value / 10);
         if(Math.abs(this.§-$"§) < 0.001)
         {
            this.§-$"§ = 0;
         }
      }
      
      private function §&#`§() : void
      {
         if(this.§,!i§)
         {
            this.§,!i§ = false;
            if(this.§^%N§)
            {
               this.§^%N§.stop();
               this.§^%N§ = null;
            }
            owner.§'$§(this.§^!^§);
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §+# §.§@%V§.deactivate();
               §+# §.§9! §.activate();
            }
            owner.§;#a§();
            owner.stable = false;
            §=#P§.§6+§();
            this.§3"K§.value = this.drillDistance.value;
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(Math.abs(Math.abs(this.angle) - Math.PI / 6) > 0.1 && Math.abs(this.angle) > 0.1 && Math.abs(Math.abs(this.angle) - 5 * Math.PI / 6) > 0.1 && Math.abs(Math.abs(this.angle) - Math.PI) > 0.1)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"auger angle hacked"));
            }
            this.§?!K§();
         }
         else if(this.§3"K§.value++ >= this.drillDistance.value)
         {
            this.§?!K§();
         }
         else
         {
            this.§4"5§();
            _loc2_ = Math.round(this.§%#U§ + this.§-$"§) - Math.round(this.§%#U§);
            this.§%#U§ += this.§-$"§;
            _loc3_ = owner.x + (owner.direction == §+%]§.LEFT ? -1 : 1);
            _loc4_ = this.§-$"§ < 0 ? -1 : 0;
            _loc5_ = Math.round(owner.y + _loc2_ + _loc4_);
            if(this.§3"K§.value % 5 == 0)
            {
               §'"$§.§]#I§(owner,_loc3_,_loc5_,null,this.§'"i§,§<H§.§-#C§ * 2,§<H§.§-#C§,false,false,§&!E§.§!?§,true,true,true,true,null,int(recordId.value));
            }
            else
            {
               Application.scene.§,# §(_loc3_,_loc5_,§<H§.§-#C§,null,int(recordId.value));
            }
            this.§;_§.push(new Point(_loc3_,_loc5_));
            if(this.setPlug)
            {
               this.setPlug = !§7%g§.§3"b§(owner,this.§;_§,false);
            }
            if(owner != null)
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §+# §.§@%V§.activate();
               }
               owner.§8%Y§(owner.direction);
               owner.graphics.hideHands("both");
            }
         }
      }
      
      public function weaponCharge() : void
      {
         this.§3"K§.value = this.drillDistance.value;
      }
      
      private function §[#k§() : void
      {
         this.angle -= owner.direction * this.§%$o§;
         if(Math.abs(this.angle) > Math.PI)
         {
            this.angle -= (this.angle > 0 ? 1 : -1) * Math.PI * 2;
         }
         if(this.angle < 0)
         {
            if(owner.direction == -1 && this.angle > -Math.PI + this.§-%$§)
            {
               this.angle = -Math.PI + this.§-%$§;
            }
            else if(owner.direction == 1 && this.angle < -this.§-%$§)
            {
               this.angle = -this.§-%$§;
            }
         }
         this.§^!^§.rotation = this.angle * 180 / Math.PI;
         if(owner.direction == -1)
         {
            this.§^!^§.rotation += 180;
         }
      }
      
      protected function §#"_§() : void
      {
         this.angle += owner.direction * this.§%$o§;
         if(Math.abs(this.angle) > Math.PI)
         {
            this.angle -= (this.angle > 0 ? 1 : -1) * Math.PI * 2;
         }
         if(this.angle > 0)
         {
            if(owner.direction == -1 && this.angle < Math.PI - this.§;$q§)
            {
               this.angle = Math.PI - this.§;$q§;
            }
            else if(owner.direction == 1 && this.angle > this.§;$q§)
            {
               this.angle = this.§;$q§;
            }
         }
         this.§^!^§.rotation = this.angle * 180 / Math.PI;
         if(owner.direction == -1)
         {
            this.§^!^§.rotation += 180;
         }
      }
      
      public function weaponUpPressed() : void
      {
      }
      
      public function weaponUpReleased() : void
      {
         this.§[#k§();
      }
      
      public function weaponDownPressed() : void
      {
      }
      
      public function weaponDownReleased() : void
      {
         this.§#"_§();
      }
   }
}

