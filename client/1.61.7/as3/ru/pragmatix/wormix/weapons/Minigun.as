package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §0"L§.§+# §;
   import §1#p§.§2=§;
   import §2#i§.§+%z§;
   import §7$t§.§[!X§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import §^4§.§0#q§;
   import §^4§.§]"8§;
   import §`%&§.§,%§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class Minigun extends §,%r§
   {
      
      public static const §?"H§:uint = 12;
      
      public static const §1!&§:§&$2§ = new §&$2§(2);
      
      private var frames:§&$2§ = new §&$2§(0);
      
      private var §<$-§:§&$2§ = new §&$2§(0);
      
      private var angle:Number;
      
      private var §@"a§:§&$2§ = new §&$2§(0);
      
      protected var §-&2§:§&$2§ = new §&$2§(§1!&§.value);
      
      private var angleFluct:Number = 0.017453292519943295;
      
      private var straightBullets:uint = 0;
      
      private var §#j§:Class;
      
      private var trailColor:uint;
      
      protected var §8!2§:§!7§;
      
      public function Minigun()
      {
         super();
         §"#z§ = §2$"§ = 100;
         this.§8!2§ = new §!7§();
         §7&§(this.§8!2§);
         §-g§ = new §,%§(120,§"#z§);
         §,%§(§,!"§).maxDistance = 400;
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.§@"a§.value = param1["quantityBullets"].value;
         this.angleFluct = param1["angleFluct"];
         this.§#j§ = param1["classBullet"];
         this.trailColor = param1["trailColor"] ? uint(param1["trailColor"]) : §]"8§.§@%§;
         this.straightBullets = param1["straightBullets"] ? uint(param1["straightBullets"]) : 0;
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
         §?"'§ = true;
         §+# §.§9! §.deactivate();
         startFrameListening();
         this.angle = shotParams.angle;
         this.frames.value = 0;
         this.§<$-§.value = 0;
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(owner != null)
         {
            ++this.frames.value;
            if(this.frames.value % this.§-&2§.value == 0)
            {
               if(this.§<$-§.value > this.straightBullets)
               {
                  _loc2_ = §8"%§.randomSeed.§,!q§(-5,5) * this.angleFluct;
                  this.angle += _loc2_;
                  §,%r§(owner.weapon).rotateWeaponClip(this.angle);
               }
               this.§<%8§(this.angle);
               ++this.§<$-§.value;
               if(this.§<$-§.value > 20)
               {
                  Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"minigun hack"));
               }
            }
            if(this.§<$-§.value == this.§@"a§.value)
            {
               this.§?!K§();
            }
         }
      }
      
      protected function §-"%§() : void
      {
         §?"'§ = false;
         §+# §.§9! §.activate();
         §2#G§();
         §=#P§.§6+§();
      }
      
      protected function §<%8§(param1:Number) : void
      {
         var _loc2_:§]"8§ = new this.§#j§(owner,getBarrelPoint(param1),paramSet,param1,§"#z§,1);
         _loc2_.§>#7§(this.trailColor);
         _loc2_.§>#[§(§?"H§);
         _loc2_.§&%-§();
         if(owner.squad.isLocal())
         {
            _loc2_.customSource = §<$c§.§ !=§(§+%z§.MINIGUN);
         }
         if(_loc2_ is §0#q§)
         {
            §0#q§(_loc2_).setArmorReduce(getProperty("reduceAmount") as §&$2§);
         }
         §@%;§.play(§`!v§.§]#Y§);
      }
   }
}

