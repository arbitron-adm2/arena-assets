package §^4§
{
   import § !8§.§`!d§;
   import § "L§.RocketTurret;
   import §"#]§.*;
   import §#"V§.§<"4§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'&"§.§,&3§;
   import §'&"§.TutorialCard;
   import §+%S§.§73§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2"v§.*;
   import §2B§.§#&E§;
   import §2B§.§8"n§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §=&!§.§<$!§;
   import §=&!§.§]$d§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.display.ContentDisplay;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §0#q§ extends §]"8§
   {
      
      private var armorReduction:§&$2§ = new §&$2§(0);
      
      public function §0#q§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Number = 2, param7:Boolean = false, param8:Boolean = false, param9:Boolean = true, param10:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      public function setArmorReduce(param1:§&$2§) : void
      {
         this.armorReduction = param1;
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         if(param1.other is §+%]§)
         {
            §+%]§(param1.other).buffs.addValue(new §73§(this.armorReduction.value));
            §@%;§.play(§`!v§.§;]§);
            §@&-§ = true;
         }
         super.onCollide(param1);
      }
   }
}

