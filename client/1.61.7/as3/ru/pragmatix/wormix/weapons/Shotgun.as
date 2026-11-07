package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §2#i§.§+%z§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import §`%&§.§8U§;
   import flash.geom.Point;
   
   public class Shotgun extends §,%r§
   {
      
      private static const §>$w§:Number = 0.05;
      
      private static const §+&+§:Number = Math.PI / 72;
      
      private static const §?"H§:uint = 4;
      
      private var §#j§:Class;
      
      private var trailColor:uint;
      
      public function Shotgun()
      {
         super();
         §"#z§ = §2$"§ = 80;
         §7&§(new §!7§());
         §-g§ = new §8U§(90,§"#z§);
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.§#j§ = getProperty("classBullet") as Class;
         this.trailColor = getProperty("trailColor") ? uint(getProperty("trailColor")) : §]"8§.§@%§;
      }
      
      override protected function §`%V§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:§]"8§ = null;
         §@%;§.play(§`!v§.§7#d§);
         var _loc1_:Point = getBarrelPoint(shotParams.angle);
         var _loc2_:int = §&$2§(getProperty("quantityBullets")).value;
         var _loc3_:Number = shotParams.angle - §+&+§ * 0.5 * (_loc2_ - 1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc4_ > 10)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"shotgun bullets hack"));
            }
            _loc5_ = _loc4_ == 0;
            _loc6_ = new this.§#j§(owner,_loc1_,paramSet,_loc3_,§"#z§,§>$w§,true,false,_loc5_);
            _loc6_.§>#7§(this.trailColor);
            _loc6_.§>#[§(§?"H§);
            if(owner.squad.isLocal())
            {
               _loc6_.customSource = §<$c§.§ !=§(§+%z§.SHOTGUN);
            }
            _loc3_ += §+&+§;
            _loc4_++;
         }
         if(shotsLeft.value == 0)
         {
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

