package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §0"L§.§+# §;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §="z§.§9%1§;
   import §]$v§.§0"[§;
   import §^#[§.§&$2§;
   import §`%&§.§<%x§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class Mortar extends §,%r§
   {
      
      public static const §0$Z§:Number = 5 * Math.PI / 180;
      
      public static const §>&G§:§&$2§ = new §&$2§(10);
      
      private var frames:§&$2§ = new §&$2§(0);
      
      private var angle:Number;
      
      private var extraMissiles:int = 0;
      
      public function Mortar()
      {
         super();
         §2$"§ = §"#z§ = 30;
         §-g§ = new §<%x§();
      }
      
      override public function §""2§(param1:Object) : void
      {
         if(param1["trajectoryCrosshair"].value)
         {
            §7&§(new §%G§(§2$"§,new <§]%G§>[§]%G§.§5$r§]));
         }
         else
         {
            §7&§(new §!7§());
         }
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         this.§6#e§(shotParams.angle);
         if(getProperty("additionalMissile") > 0)
         {
            §?"'§ = true;
            §+# §.§9! §.deactivate();
            startFrameListening();
            this.angle = shotParams.angle;
            this.frames.value = 0;
         }
         else
         {
            this.§^% §();
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(getProperty("additionalMissile") > 0 && owner != null)
         {
            ++this.frames.value;
            if(this.frames.value >= §>&G§.value)
            {
               this.angle += (§8"%§.randomSeed.§6#;§() ? 1 : -1) * §0$Z§;
               §,%r§(owner.weapon).rotateWeaponClip(this.angle);
               this.§6#e§(this.angle);
               this.frames.value = 0;
               if(++this.extraMissiles >= getProperty("additionalMissile"))
               {
                  if(§8"%§.§?!W§.§4"m§.§=%g§())
                  {
                     §+# §.§9! §.activate();
                  }
                  this.§^% §();
               }
            }
         }
      }
      
      private function §6#e§(param1:Number) : void
      {
         var _loc2_:§0"[§ = new §0"[§(owner,getBarrelPoint(param1),paramSet,paramSetEx,param1,§2$"§);
         if(property["cleverShards"].value)
         {
            _loc2_.§%$J§();
         }
      }
      
      private function §^% §() : void
      {
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

