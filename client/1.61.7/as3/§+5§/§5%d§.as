package §+5§
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §4!!§.§]!h§;
   import §4'§.§^"p§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §9%W§.§!"G§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!`§.ArchivistSeal;
   import §^!]§.WeaponShootEvent;
   import §`%&§.§5$1§;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §5%d§ extends §^$[§
   {
      
      private static const DAMAGE:uint = 25;
      
      private static const FREEZE_DURATION:uint = 2;
      
      public function §5%d§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function §!2§() : void
      {
         new §]!h§(owner,x,y,false,target,DAMAGE,FREEZE_DURATION,true);
      }
   }
}

