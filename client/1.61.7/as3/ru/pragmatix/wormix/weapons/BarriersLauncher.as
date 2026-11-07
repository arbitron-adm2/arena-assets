package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §2#i§.§+%z§;
   import §6%2§.§'"Y§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §`%&§.§8U§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class BarriersLauncher extends §,%r§
   {
      
      §§push(§§findproperty(§ #F§));
      var _temp_1:* = new <int>[§+%z§.§]h§,§+%z§.LASER_BARRIER_UPG_1,§+%z§.LASER_BARRIER_UPG_2];
      
      private static const § #F§:Vector.<int> = new <int>[§+%z§.§]h§,§+%z§.LASER_BARRIER_UPG_1,§+%z§.LASER_BARRIER_UPG_2];
      
      private static const §+&+§:Number = Math.PI / 36;
      
      private var §#![§:§;#_§;
      
      private var §67§:Boolean;
      
      public function BarriersLauncher()
      {
         super();
         this.§67§ = false;
         §"#z§ = §2$"§ = 30;
         var _loc1_:§!7§ = new §!7§();
         §7&§(_loc1_);
         §-g§ = new §8U§(90,§"#z§);
      }
      
      override public function attach(param1:§+%]§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§#$s§ = null;
         super.attach(param1);
         var _loc2_:int = int(§+%z§.§]h§);
         for each(_loc3_ in § #F§)
         {
            if(_loc3_ > §'"Y§.§;9§)
            {
               _loc4_ = §1!S§.§?!4§(_loc3_);
               if(param1.record.getLevel() >= _loc4_.level)
               {
                  _loc2_ = _loc3_;
               }
            }
         }
         this.§#![§ = §<$c§.§ !=§(_loc2_);
      }
      
      override protected function §`%V§() : void
      {
         var _loc3_:uint = 0;
         var _loc4_:§[$ § = null;
         §@%;§.play(§`!v§.§7#d§);
         var _loc1_:Number = shotParams.angle - §+&+§ * 0.5 * (this.§#![§.§]!C§() - 1);
         var _loc2_:int = 0;
         while(_loc2_ < this.§#![§.§]!C§())
         {
            _loc3_ = this.§#![§.property["radiusIncreasing"] ? uint(this.§#![§.property["radiusIncreasing"]) : 0;
            var _temp_1:* = new §[$ §(owner,this.§#![§.§<$4§,_loc1_,§"#z§,_loc3_);
            _loc4_ = new §[$ §(owner,this.§#![§.§<$4§,_loc1_,§"#z§,_loc3_);
            _loc4_.§ !G§();
            _loc1_ += §+&+§;
            _loc2_++;
         }
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

