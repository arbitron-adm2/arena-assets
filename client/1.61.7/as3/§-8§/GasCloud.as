package §-8§
{
   import §!$d§.*;
   import §"#x§.§'"$§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+%S§.§'%V§;
   import §+%S§.§73§;
   import §+%S§.§=t§;
   import §,"v§.§9%d§;
   import §2!-§.GameObjectDisposed;
   import §7!B§.§&"T§;
   import §?$K§.§=z§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class GasCloud extends §3!x§
   {
      
      private static const §]=§:§&$2§ = new §&$2§(6);
      
      private static const §+&?§:§&$2§ = new §&$2§(2);
      
      private var armorReduction:uint = 0;
      
      private var maxPoisonDamage:int;
      
      public function GasCloud(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:String, param6:Object)
      {
         if(param6.cloudRadius)
         {
            radius = param6.cloudRadius;
         }
         var _loc7_:int = §]=§.value + param1.bonuses.getStatValue(Bonus.POISONING_ADDITION);
         super(param1,param2,param3,param4,param5,_loc7_);
         if(param6.armorReduction)
         {
            this.armorReduction = param6.armorReduction;
         }
         if(param6.maxPoisonDamage)
         {
            this.maxPoisonDamage = param6.maxPoisonDamage;
         }
         if(radius != §9!"§.value)
         {
            §`"$§.scaleX = §`"$§.scaleY = radius / §9!"§.value;
            bar.§&!J§(radius - §9!"§.value);
         }
      }
      
      override protected function §=%I§(param1:§+%]§) : Boolean
      {
         return Boolean(super.§=%I§(param1)) && !param1.buffs.hasBuff(§'%V§.NAME);
      }
      
      override protected function §[%x§(param1:§+%]§) : void
      {
         var _loc4_:uint = 0;
         param1.buffs.place(new §=t§(this.maxPoisonDamage));
         if(this.armorReduction > 0)
         {
            _loc4_ = param1 != null ? uint(Math.round(0.01 * this.armorReduction * param1.attributes.armor.value)) : 0;
            if(_loc4_ > 0)
            {
               param1.buffs.place(new §73§(_loc4_,§+&?§.value));
            }
         }
         if(!§0%X§[param1])
         {
            §0%X§[param1] = {
               "unit":param1,
               "count":0
            };
         }
         var _loc2_:Point = §=z§.§-L§(param1);
         var _loc3_:int = param1.bonuses.getStatValue(Bonus.POISONING_REDUCTION);
         if(Boolean(§0%X§[param1]) && §0%X§[param1].count < duration.value + _loc3_)
         {
            ++§0%X§[param1].count;
            §'"$§.§]#I§(owner,param1.x,param1.y,param1,paramSet.damage.value,0,0,true,true,§&!E§.POISON,true,false,true,true,_customSource);
         }
         if(_loc2_)
         {
            §=z§.§5!u§(param1,_loc2_);
         }
      }
   }
}

