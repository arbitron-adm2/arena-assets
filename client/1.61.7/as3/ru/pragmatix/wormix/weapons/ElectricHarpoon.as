package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&#W§.§4#T§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import §`%&§.§8U§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventPhase;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class ElectricHarpoon extends §,%r§
   {
      
      private static const §7a§:int = -7;
      
      private static const §=h§:§&$2§ = new §&$2§(80);
      
      private static const §2&$§:§&$2§ = new §&$2§(7);
      
      private var rope:§ %s§;
      
      private var frames:§&$2§ = new §&$2§(0);
      
      private var victim:§+%]§;
      
      private var dragDamage:§&$2§;
      
      private var §3"s§:§&$2§ = new §&$2§(0);
      
      private var barrel:Point;
      
      private var §9!N§:int;
      
      private var §4%X§:int;
      
      private var lengthCoeff:Number;
      
      private var drill:§?"&§;
      
      public function ElectricHarpoon(param1:uint = 0)
      {
         super(param1);
         §2$"§ = §"#z§ = 80;
         §-g§ = new §8U§(90,§"#z§);
      }
      
      override public function §""2§(param1:Object) : void
      {
         var _loc2_:uint = 0;
         this.dragDamage = new §&$2§(param1["dragDamage"].value);
         this.drill = new §?"&§(param1["drill"]);
         this.lengthCoeff = param1["lengthCoeff"];
         if(param1["trajectoryCrosshair"].value)
         {
            _loc2_ = §%G§.§4"<§ * (this.lengthCoeff > 0 ? this.lengthCoeff : 1);
            §7&§(new §%G§(§2$"§,null,_loc2_));
         }
         else
         {
            §7&§(new §!7§());
         }
         super.§""2§(param1);
      }
      
      override public function §?!K§() : void
      {
         §?"'§ = false;
         super.§?!K§();
         this.§1#T§();
         this.§6#n§(true);
      }
      
      private function §6#n§(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = null;
         if(clip)
         {
            _loc2_ = clip.getChildByName("tip") || MovieClip(clip.getChildByName("gun")).getChildByName("tip");
            if(_loc2_)
            {
               _loc2_.visible = param1;
            }
         }
      }
      
      override protected function §`%V§() : void
      {
         this.§3"s§.value = 0;
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §+# §.§9! §.deactivate();
         }
         this.barrel = getBarrelPoint(shotParams.angle);
         var _loc1_:int = this.lengthCoeff > 0 ? int(Rope.§6"+§ * this.lengthCoeff) : 0;
         this.rope = new § %s§(owner,this.barrel.x,this.barrel.y,paramSet,shotParams.angle,§2$"§,_loc1_);
         if(this.drill.value)
         {
            this.rope.§<&?§();
         }
         else
         {
            this.rope.addEventListener(§0%v§.§+&=§,this.§<$`§);
         }
         this.rope.addEventListener(§0%v§.DISPOSED,this.§8#e§);
         §?"'§ = true;
         §=#P§.§6+§();
         this.§6#n§(false);
      }
      
      private function §<$`§(param1:CollisionEvent) : void
      {
         this.rope.removeEventListener(§0%v§.§+&=§,this.§<$`§);
         if(owner != null)
         {
            if(param1.other != null && param1.other is §+%]§ && param1.other != owner && !§+%]§(param1.other).buffs.hasBuff(§=z§.NAME))
            {
               this.victim = §+%]§(param1.other);
               this.§]#B§();
            }
            else
            {
               §'"$§.§]#I§(owner,this.rope.x,this.rope.y,null,paramSet.damage.value * 1.5,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,§&!E§.§=$-§);
               §1"-§.explode(§;n§.§7q§,this.rope.x,this.rope.y,paramSet.explosionRadius.value);
               if(!§8"%§.§?!W§.§4"m§.§[!W§())
               {
                  §+# §.§9! §.activate();
               }
               this.§?!K§();
               §=#P§.§6+§();
            }
         }
         this.rope.disposed = true;
      }
      
      private function §]#B§() : void
      {
         var _loc1_:§;#_§ = owner.squad.isLocal() && !owner.§+&,§(this.victim) ? §<$c§.§ !=§(§+%z§.HARPOON) : null;
         §'"$§.§]#I§(owner,this.rope.x,this.rope.y,this.victim,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,false,false,§&!E§.§=$-§,true,true,true,true,_loc1_);
         §@%;§.play(§`!v§.§`%9§);
         if(owner != null && !this.victim.disposed)
         {
            this.§9!N§ = this.victim.speedX;
            this.§4%X§ = this.victim.speedY;
            this.victim.graphics.§0t§();
            this.victim.x = this.rope.x;
            this.victim.y = this.rope.y;
            this.victim.§0& §(new Point(this.barrel.x,this.barrel.y));
            this.victim.setSpeedXY(0,-5);
            this.victim.keepUnstable = true;
            startFrameListening();
            §<$t§(this.victim.physicModel).dLength = §7a§;
         }
         else if(Boolean(this.victim) && this.victim.disposed)
         {
            this.§?!K§();
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         ++this.frames.value;
         if(!owner)
         {
            return;
         }
         var _loc2_:int = §^$y§.distance(this.barrel.x - this.victim.x,this.barrel.y - this.victim.y);
         var _loc3_:Boolean = §+%]§(this.victim).buffs.hasBuff(§=z§.NAME);
         if(!this.victim.disposed && !_loc3_)
         {
            if(this.frames.value % §2&$§.value == 0)
            {
               §1"-§.§;"G§(this.barrel.x,this.barrel.y,this.victim.x,this.victim.y,4,10,13948116,5,1);
               §'"$§.§]#I§(owner,this.victim.x,this.victim.y,this.victim,this.dragDamage.value,0,0,false,true,§&!E§.§=$-§);
               §@%;§.play(§`!v§.§`%9§);
            }
            if(this.frames.value % 10 == 0)
            {
               this.victim.§5!?§(0,-5);
            }
         }
         if(this.victim == null || this.victim.disposed || this.frames.value >= §=h§.value || _loc2_ < 30 || _loc2_ > §<$t§.§-3§ + 100 || !owner.stable || _loc3_)
         {
            this.frames.value = 0;
            this.§1#T§();
            §2#G§();
            §+# §.§9! §.activate();
            this.§?!K§();
         }
      }
      
      private function §1#T§() : void
      {
         if(this.victim != null)
         {
            if(!this.victim.disposed && this.victim.physicModel is §<$t§)
            {
               §<$t§(this.victim.physicModel).clear();
               §<$t§(this.victim.physicModel).dLength = 0;
               this.victim.keepUnstable = false;
               this.victim.§?"o§();
               this.victim.graphics.§]!"§();
               this.victim.setSpeedXY(this.§9!N§,this.§4%X§);
            }
            this.victim = null;
         }
      }
      
      private function §8#e§(param1:Event) : void
      {
         if(this.drill.value && Boolean(this.rope.target))
         {
            this.victim = this.rope.target;
            this.§]#B§();
         }
         else
         {
            this.§0"!§();
            if(this.victim == null)
            {
               if(!§8"%§.§?!W§.§4"m§.§[!W§())
               {
                  §+# §.§9! §.activate();
               }
               this.§?!K§();
            }
         }
      }
      
      private function §0"!§() : void
      {
         this.rope.removeEventListener(§0%v§.§+&=§,this.§<$`§);
         this.rope.removeEventListener(§0%v§.DISPOSED,this.§8#e§);
         this.rope = null;
      }
   }
}

