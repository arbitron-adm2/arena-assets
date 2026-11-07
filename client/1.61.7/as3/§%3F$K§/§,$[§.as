package §?$K§
{
   import §##y§.§9§;
   import §&!?§.*;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.*;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1&-§.§ &=§;
   import §2!-§.HpChangeEvent;
   import §3#a§.§<#_§;
   import §65§.§%%o§;
   import §65§.§`"C§;
   import §7$1§.§=!?§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §9![§.*;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §,$[§ extends §%%o§
   {
      
      private static const §0&=§:§&$2§ = new §&$2§(90);
      
      public static const NAME:String = "TRAPPER_BUFF";
      
      private static const §@!9§:String = "AmGuardingBot";
      
      private static const DAMAGE:uint = 125;
      
      private static const §<$C§:uint = 50;
      
      private static const §3P§:uint = 30;
      
      private var params:§5$n§;
      
      private var §>i§:§=!?§;
      
      public function §,$[§()
      {
         super(NAME,-1,0);
         this.params = §5$n§.§<#=§(§@!9§,DAMAGE,§<$C§,§3P§);
      }
      
      override protected function §7$d§() : void
      {
         this.§^Q§();
      }
      
      private function §^Q§() : void
      {
         if(!this.§>i§ || this.§>i§.disposed)
         {
            this.§>i§ = new §=!?§(unit,unit.x,unit.y,this.params);
            this.§>i§.setSpeedXY(0,0);
         }
         else if(!unit.disposed && §-q§.distance(unit.x,unit.y,this.§>i§.x,this.§>i§.y) >= §0&=§.value)
         {
            §1"-§.explode(§;n§.§@%d§,this.§>i§.x,this.§>i§.y,24);
            this.§>i§.disposed = true;
            this.§^Q§();
         }
      }
   }
}

