package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§1"R§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§`s§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<!^§.§'$e§;
   import §<%k§.§`!v§;
   import §@!N§.§""L§;
   import §@#K§.§-§;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class GravityGun extends §,%r§
   {
      
      private static const §7!§:uint = 350;
      
      private static const §#!=§:Number = Math.PI / 12;
      
      private static const §@7§:uint = 40;
      
      private static const §+!,§:uint = 50;
      
      private static const CAPTURABLE:Array = [§;$n§,§[$ §,§'$e§,§-#8§];
      
      private static const § #S§:Array = [§;#&§];
      
      private var §#$U§:Boolean;
      
      private var cargo:§&"T§;
      
      private var §&!X§:Boolean = false;
      
      private var §2&D§:int;
      
      private var §]#f§:Boolean;
      
      public function GravityGun()
      {
         super();
         §"#z§ = §2$"§ = 35;
      }
      
      override public function §""2§(param1:Object) : void
      {
         var _loc2_:§?"&§ = param1["trajectoryCrosshair"] as §?"&§;
         if(Boolean(_loc2_) && _loc2_.value)
         {
            §7&§(new §%G§(§"#z§,null,§%G§.§4"<§,Math.PI / 2,Math.PI / 2 - §!7§.§'$+§));
         }
         else
         {
            §7&§(new §!7§(§!7§.§'$+§,Math.PI / 2,Math.PI / 2 - §!7§.§'$+§));
         }
         this.§]#f§ = Boolean(param1["attraction"]) && Boolean(param1["attraction"].value);
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Point = null;
         var _loc2_:§1"R§ = null;
         if(this.§&!X§ && !this.cargo.disposed)
         {
            if(this.cargo is §3&2§)
            {
               §3&2§(this.cargo).setExplosive(true);
               if(property["attractionDamageType"])
               {
                  §3&2§(this.cargo).damageType = property["attractionDamageType"];
               }
               if(property["attractionDamage"])
               {
                  §3&2§(this.cargo).damage = §&$2§(property["attractionDamage"]).value;
                  §3&2§(this.cargo).activator = owner;
                  §3&2§(this.cargo).damageRadius = §3&2§(this.cargo).damageRadius + 30;
                  §3&2§(this.cargo).radius = §3&2§(this.cargo).radius + 30;
                  §2$"§ += 10;
               }
            }
            §2#G§();
            this.cargo.§6"O§(shotParams.angle,§2$"§);
            this.§-#'§();
            §@%;§.play(§`!v§.§>#+§);
         }
         else if(this.§#$U§ && shotParams.isAlternate && this.§6"]§(shotParams.angle))
         {
            this.§#$U§ = false;
            §@%;§.play(§`!v§.§@v§);
         }
         else
         {
            _loc1_ = getBarrelPoint(shotParams.angle);
            _loc2_ = new §1"R§(owner,_loc1_.x,_loc1_.y,paramSet,shotParams.angle,§2$"§);
            if(owner.squad.isLocal())
            {
               _loc2_.customSource = §<$c§.§ !=§(§+%z§.GRAVITY_GUN);
            }
            this.§#$U§ = false;
            §@%;§.play(§`!v§.§>#+§);
         }
         if(shotsLeft.value == 0)
         {
            this.§?!K§();
            §=#P§.§6+§();
         }
      }
      
      private function §6"]§(param1:Number) : Boolean
      {
         var _loc2_:§!7§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Vector.<§&"T§> = null;
         var _loc7_:§&"T§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Class = null;
         _loc2_ = §!7§(§;#x§());
         _loc3_ = _loc2_.baseX;
         _loc4_ = _loc2_.baseY;
         _loc5_ = §<H§.§9#!§(_loc3_,_loc4_,§7!§,param1,§#!=§,Application.scene.§@$I§.§;%a§.§"L§(CAPTURABLE));
         var _loc6_:Vector.<§&"T§> = §<H§.§"%G§(_loc3_,_loc4_,§""L§.§,"=§(_loc5_));
         for each(_loc7_ in _loc6_)
         {
            _loc8_ = Math.atan2(_loc7_.y - _loc4_,_loc7_.x - _loc3_);
            _loc9_ = §^$y§.distance(_loc7_.x - _loc3_,_loc7_.y - _loc4_);
            if(!§>#9§.§3%2§(_loc3_,_loc4_,_loc8_,_loc9_ - 5))
            {
               for each(_loc10_ in § #S§)
               {
                  if(_loc7_ is _loc10_)
                  {
                     return false;
                  }
               }
               this.capture(_loc7_);
               return true;
            }
         }
         return false;
      }
      
      private function capture(param1:§&"T§) : void
      {
         var ch:§!7§;
         var gobj:§&"T§ = param1;
         this.cargo = gobj;
         this.§-#'§();
         ch = §!7§(§;#x§());
         new §`s§(ch.baseX,ch.baseY,§@7§ * 2,this.cargo,function():void
         {
            startFrameListening();
         });
         this.cargo.§^"F§(ch.getAngle(),-§+!,§);
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:§!7§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(Boolean(this.cargo) && !this.cargo.disposed)
         {
            _loc2_ = §!7§(§;#x§());
            _loc3_ = isActive() ? int(_loc2_.baseX + int(§@7§ * Math.cos(_loc2_.getAngle()))) : int(owner.x + §@7§ * owner.direction * Math.cos(_loc2_.getAngle()));
            _loc4_ = isActive() ? int(_loc2_.baseY + int(§@7§ * Math.sin(_loc2_.getAngle()))) : owner.y;
            this.cargo.clip.visible = isActive();
            this.cargo.x = _loc3_;
            this.cargo.y = _loc4_;
            this.cargo.clip.rotation = clip.rotation;
            this.cargo.setSpeedXY(0,0);
            this.cargo.stable = false;
         }
      }
      
      private function §-#'§() : void
      {
         var _loc1_:§%&F§ = null;
         var _loc2_:Point = null;
         this.§&!X§ = !this.§&!X§;
         if(!this.cargo.disposed)
         {
            this.cargo.disabled = this.§&!X§;
            if(this.cargo is §^%c§)
            {
               _loc1_ = §^%c§(this.cargo).getBar();
               if(this.§&!X§)
               {
                  _loc1_.§]%d§();
               }
               else
               {
                  _loc1_.§>$T§();
               }
            }
            if(this.§&!X§)
            {
               this.§2&D§ = this.cargo.physParams.§5N§;
               this.cargo.physParams.§5N§ = §<#`§.NONE;
            }
            else
            {
               this.cargo.physParams.§5N§ = this.§2&D§;
               if(!owner.disposed)
               {
                  this.cargo.x = owner.x;
                  this.cargo.y = owner.y;
               }
               if(§>#9§.point(this.cargo.x,this.cargo.y))
               {
                  _loc2_ = §<H§.§ !K§(this.cargo.x,this.cargo.y,§>#9§.point);
                  if(_loc2_)
                  {
                     this.cargo.x = _loc2_.x;
                     this.cargo.y = _loc2_.y;
                  }
               }
            }
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.§#$U§ = this.§]#f§;
         this.§&!X§ = false;
      }
      
      override public function §?!K§() : void
      {
         if(this.§&!X§)
         {
            §2#G§();
            this.§-#'§();
            this.cargo.clip.rotation = 0;
            this.cargo.clip.visible = true;
         }
         this.cargo = null;
         super.§?!K§();
      }
   }
}

