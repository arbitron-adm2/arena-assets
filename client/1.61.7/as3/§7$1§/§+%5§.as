package §7$1§
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §+%5§ extends §;$n§
   {
      
      public function §+%5§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean = true)
      {
         super(param1,param2,param3,param4,param5);
         _damageType = §&!E§.COLD;
         §##9§.value = 1;
         §=$`§.value = param4.explosionRadius.value;
      }
      
      override public function explode() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
         for each(_loc2_ in _loc1_)
         {
            §'"$§.§]#I§(owner,_loc2_.x,_loc2_.y,_loc2_,paramSet.damage.value,0,0,false,false,_damageType);
            _loc2_.buffs.place(new §+m§(owner));
         }
         §1"-§.explode(§;n§.§7q§,x,y,paramSet.explosionRadius.value,§`!v§.§ !h§);
         disposed = true;
      }
   }
}

