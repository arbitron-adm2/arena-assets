package §,"`§
{
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §5#`§.§7%g§;
   import §7"Q§.§"&=§;
   import §9%W§.§ !@§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §;8§ extends §9#s§
   {
      
      public static const § !6§:§&$2§ = new §&$2§(8);
      
      public function §;8§(param1:§+%]§, param2:§5$n§, param3:§5$n§, param4:String, param5:§&$2§, param6:Class, param7:Number, param8:uint)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function explode() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:int = 0;
         var _loc3_:§+%]§ = null;
         if(!disposed)
         {
            _loc1_ = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
            _loc2_ = § !6§.value + owner.bonuses.getStatValue(Bonus.POISONING_ADDITION);
            for each(_loc3_ in _loc1_)
            {
               §7%g§.§>!%§(_loc3_,owner,_loc2_);
            }
         }
         super.explode();
      }
   }
}

