package §+5§
{
   import § &5§.§@N§;
   import §&"c§.§5$n§;
   import §'!Z§.§;n§;
   import §+%S§.§;!4§;
   import §4!!§.§!%n§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §;$8§.§6"E§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6%#§ extends §^$[§
   {
      
      private static const DAMAGE:int = 10;
      
      public function §6%#§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
         if(_damageType == §&!E§.POISON)
         {
            §9%N§ = §;n§.§8%a§;
         }
      }
      
      override protected function §!2§() : void
      {
         new §!%n§(owner,x,y,false,target,DAMAGE,§!%n§.§[%]§,owner.bonuses.getStatValue(Bonus.POISONING_ADDITION));
      }
   }
}

