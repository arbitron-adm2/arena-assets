package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §0"L§.§+# §;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import §^4§.§^"Y§;
   import §`%&§.§8U§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class Kalash extends §,%r§
   {
      
      public static const §<$I§:uint = 4;
      
      public static const §>&G§:§&$2§ = new §&$2§(4);
      
      public static const §%$o§:Number = Math.PI / 180;
      
      private var frames:§&$2§ = new §&$2§(0);
      
      private var §<$-§:§&$2§ = new §&$2§(0);
      
      private var bullets:§&$2§ = new §&$2§(0);
      
      private var angle:Number;
      
      private var armorReduction:uint = 0;
      
      private var slowing:Boolean;
      
      private var notPenetrate:Boolean;
      
      public function Kalash()
      {
         super();
         §"#z§ = §2$"§ = 80;
         §7&§(new §!7§());
         §-g§ = new §8U§(130,§"#z§);
      }
      
      override public function §""2§(param1:Object) : void
      {
         this.bullets.value = param1["bullets"] ? int(param1["bullets"].value) : int(§<$I§);
         this.armorReduction = param1["armorReduction"] ? uint(§&$2§(param1["armorReduction"]).value) : 0;
         this.slowing = param1["slowing"];
         this.notPenetrate = param1["notPenetrate"];
         super.§""2§(param1);
      }
      
      override public function activate() : void
      {
         if(!§?"'§)
         {
            super.activate();
         }
      }
      
      override public function §?!K§() : void
      {
         if(§?"'§)
         {
            this.§-"%§();
         }
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         §+# §.§9! §.deactivate();
         startFrameListening();
         this.angle = shotParams.angle;
         §?"'§ = true;
         this.frames.value = 0;
         this.§<$-§.value = 0;
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:§^"Y§ = null;
         if(owner != null)
         {
            ++this.frames.value;
            if(this.frames.value % §>&G§.value == 0)
            {
               _loc2_ = §8"%§.randomSeed.§,!q§(-5,5) * §%$o§;
               this.angle += _loc2_;
               §,%r§(owner.weapon).rotateWeaponClip(this.angle);
               _loc3_ = new §^"Y§(owner,getBarrelPoint(this.angle),paramSet,this.angle,§"#z§);
               _loc3_.§>#7§(property["trailColor"] ? uint(property["trailColor"]) : §]"8§.§@%§);
               if(owner.squad.isLocal())
               {
                  _loc3_.customSource = §<$c§.§ !=§(§+%z§.AK_47);
               }
               if(this.armorReduction > 0)
               {
                  _loc3_.setArmorReduction(this.armorReduction);
               }
               if(this.slowing)
               {
                  _loc3_.setSlowing();
               }
               if(this.notPenetrate)
               {
                  _loc3_.setNotPenetrate();
               }
               ++this.§<$-§.value;
               if(paramSet.ammoClassName == "AmSnowball")
               {
                  §@%;§.play(§`!v§.§"m§);
               }
               else if(paramSet.ammoClassName == "AmIcicle")
               {
                  §@%;§.play(§`!v§.§?&$§);
               }
               else
               {
                  §@%;§.play(§`!v§.§&#?§);
               }
            }
            if(this.§<$-§.value == this.bullets.value)
            {
               this.§-"%§();
            }
         }
      }
      
      protected function §-"%§() : void
      {
         §?"'§ = false;
         §+# §.§9! §.activate();
         §2#G§();
         if(shotsLeft.value == 0)
         {
            this.§?!K§();
            §=#P§.§6+§();
         }
         else if(owner != null && owner.stable)
         {
            this.activate();
         }
      }
   }
}

