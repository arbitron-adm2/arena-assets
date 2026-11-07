package §%$n§
{
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §<%<§ extends §?,§
   {
      
      private static const WEAPON_COOLDOWN_NEXT:§&$2§ = new §&$2§(3);
      
      private static const §]%c§:§&$2§ = new §&$2§(3);
      
      public function §<%<§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
         _damageType = §&!E§.§=$-§;
      }
      
      override protected function explode(param1:§&"T§) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc4_:* = undefined;
         _loc2_ = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
         var _loc3_:Dictionary = §7%g§.§8!f§(_loc2_,§]%c§.value,WEAPON_COOLDOWN_NEXT.value);
         for each(_loc4_ in _loc3_)
         {
            if(Boolean(_loc4_.unit) && !_loc4_.unit.disposed)
            {
               §7%g§.§`%i§(_loc4_.unit,_loc4_.weapons,_loc4_.cooldowns);
            }
         }
         §1"-§.§&!C§(x,y,16);
         §1"-§.explode(§;n§.§1"E§,x,y,paramSet.damageRadius.value * 0.6,§`!v§.§`%9§);
         inflictDamage(param1,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
      }
   }
}

