package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §5%S§.§>&-§;
   import §65§.§`"C§;
   import §9%W§.§8#p§;
   import §<!G§.§&!;§;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class IonCannon extends §&!;§
   {
      
      private static const §0!2§:int = 1;
      
      private static const §3"=§:int = 30;
      
      private var targets:Array;
      
      private var §2#Q§:Array;
      
      private var missiles:uint = 10;
      
      private var §4#5§:uint;
      
      private var frames:§&$2§ = new §&$2§(0);
      
      private var §7$N§:MovieClip;
      
      private var §<>§:MovieClip;
      
      private var §6!v§:Boolean;
      
      public function IonCannon()
      {
         super();
         §-g§ = new §@&,§();
      }
      
      override public function §""2§(param1:Object) : void
      {
         var _loc2_:uint = param1["targets"] ? uint(§&$2§(param1["targets"]).value - 1) : 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            §7&§(new §8#p§(this.§@%@§));
            _loc3_++;
         }
         if(param1["missiles"])
         {
            this.missiles = §&$2§(param1["missiles"]).value;
         }
         super.§""2§(param1);
         fixedDirection = true;
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.targets = [];
         this.§2#Q§ = [];
      }
      
      override protected function §@%@§(param1:int, param2:int) : Boolean
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         if(param2 > §6"o§)
         {
            _loc3_ = new Point(owner.x,owner.y - §<H§.§,%P§);
            _loc4_ = §>#9§.§>@§(_loc3_.x,_loc3_.y,0,-_loc3_.y);
            if(_loc4_ == null)
            {
               this.targets.push({
                  "x":param1,
                  "y":param2
               });
               this.§2#Q§.push(§1"-§.§##7§(param1,param2));
               return true;
            }
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.REQUIRED_OPEN_SPACE,true);
            }
            return false;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.CROSSHAIR_TOO_HIGH,true);
         }
         return false;
      }
      
      override protected function §`%V§() : void
      {
         if(this.targets.length == 0)
         {
            this.targets.push({
               "x":shotParams.point.x,
               "y":shotParams.point.y
            });
            this.§2#Q§.push(§1"-§.§##7§(shotParams.point.x,shotParams.point.y));
         }
         §@%;§.play(§`!v§.§7$$§);
         var _loc1_:Class = §6#A§.getClass("IonRay");
         this.§7$N§ = new _loc1_();
         this.§<>§ = new _loc1_();
         this.§6!v§ = false;
         Application.scene.addChild(this.§7$N§);
         Application.scene.addChild(this.§<>§);
         this.§7$N§.width = this.§<>§.height = 0;
         this.§7$N§.x = owner.x + owner.direction * 5;
         this.§7$N§.y = 0;
         this.§7$N§.height = owner.y - §<H§.§,%P§ + 5;
         this.§<>§.x = this.targets[0].x;
         this.§<>§.y = 0;
         this.§<>§.width = §3"=§;
         startFrameListening();
         this.§4#5§ = 0;
         this.frames.value = 0;
         §?"'§ = true;
         §+# §.§9! §.deactivate();
      }
      
      override protected function onFrame(param1:Event) : void
      {
         ++this.frames.value;
         if(this.§6!v§ && this.frames.value % §0!2§ == 0)
         {
            this.§6"n§();
            ++this.§4#5§;
         }
         if(!this.§6!v§)
         {
            if(this.§7$N§.width < §3"=§)
            {
               this.§7$N§.width += 2;
            }
            else
            {
               this.§6!v§ = true;
            }
         }
         if(this.missiles == this.§4#5§)
         {
            this.§-"%§();
         }
      }
      
      private function §6"n§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         _loc1_ = §8"%§.§?!W§.§4"m§.§5#h§();
         var _loc2_:Point = §>#9§.§#!9§(this.targets[0].x,0,0,this.targets[0].y,§<H§.§@% §,_loc1_);
         var _loc3_:Point = §>#9§.§>@§(this.targets[0].x,0,0,this.targets[0].y);
         var _loc4_:int = int(this.targets[0].x);
         var _loc5_:int = int(this.targets[0].y);
         if(Boolean(_loc2_) && (!_loc3_ || _loc2_.y < _loc3_.y))
         {
            _loc4_ = _loc2_.x;
            _loc5_ = _loc2_.y + 5;
         }
         else if(_loc3_)
         {
            _loc4_ = _loc3_.x;
            _loc5_ = _loc3_.y;
         }
         this.§<>§.height = _loc5_;
         §'"$§.§]#I§(owner,_loc4_,_loc5_,null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,§&!E§.§=$-§,true,true,true,true,null,int(recordId.value));
         §'"$§.§]#I§(owner,_loc4_,_loc5_,null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,§&!E§.§=$-§,true,true,true,true,null,int(recordId.value));
         §1"-§.§&!C§(_loc4_,_loc5_,16);
         §1"-§.explode(§;n§.§@"+§,_loc4_,_loc5_,paramSet.damageRadius.value,this.frames.value % 2 == 0 ? §`!v§.§=O§ : null);
      }
      
      private function §-"%§() : void
      {
         §?"'§ = false;
         §2#G§();
         §=#P§.§6+§();
         this.§?!K§();
      }
      
      override public function §?!K§() : void
      {
         var _loc1_:MovieClip = null;
         if(getProperty("moveAfterShot"))
         {
         }
         super.§?!K§();
         if(Boolean(this.§7$N§) && Boolean(this.§7$N§.parent))
         {
            Application.scene.removeChild(this.§7$N§);
         }
         if(Boolean(this.§<>§) && Boolean(this.§<>§.parent))
         {
            Application.scene.removeChild(this.§<>§);
         }
         for each(_loc1_ in this.§2#Q§)
         {
            Application.scene.removeChild(_loc1_);
         }
      }
      
      override protected function §3$>§() : void
      {
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
      }
   }
}

