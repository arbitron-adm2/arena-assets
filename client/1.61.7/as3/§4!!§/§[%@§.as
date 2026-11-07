package §4!!§
{
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §##y§.CollisionEvent;
   import §#%!§.*;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §4u§.ReagentHint;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8$Z§.§9"t§;
   import §<!W§.§7!L§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §[$<§.§;"E§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §[%@§ extends §&B§
   {
      
      private var §2&E§:uint = 3;
      
      public function §[%@§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint, param7:uint, param8:uint = 90)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,§&!E§.COLD);
      }
      
      override protected function attachTrail() : void
      {
         if(!disposed)
         {
            §1"-§.attachTrail(this,12,6,13694463,16777215,1,false,0.5);
         }
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.ignoresTerrain = true;
         physParams.§5N§ = §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
      }
      
      override protected function §,"4§(param1:CollisionEvent) : void
      {
         if(param1.other != null && param1.other is §+%]§ && (§ $d§ || §+%]§(param1.other).squad.getTeamId() != owner.squad.getTeamId()))
         {
            inflictDamage(param1.other,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            if(this.§2&E§ > 0)
            {
               §+%]§(param1.other).buffs.place(new §+m§(owner,this.§2&E§));
               §@%;§.play(§`!v§.§ !h§);
            }
            else
            {
               §@%;§.play(§`!v§.§`'§);
            }
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
      }
      
      public function §?!q§(param1:int) : void
      {
         this.§2&E§ = param1;
      }
   }
}

