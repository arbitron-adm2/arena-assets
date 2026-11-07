package §%$n§
{
   import §##y§.CollisionEvent;
   import §%"1§.*;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §+%S§.§]&§;
   import §6_§.*;
   import §7"Q§.§0$L§;
   import §=!p§.§&&0§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §?$L§.§&$9§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   
   public class §&!M§ extends §?,§
   {
      
      private static const §`C§:§&$2§ = new §&$2§(2);
      
      private var §%!;§:§&$2§ = new §&$2§(0);
      
      public function §&!M§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         explode(param1.other);
         var _temp_1:* = this.§%!;§;
         if(++this.§%!;§.value >= §`C§.value)
         {
            disposed = true;
         }
      }
   }
}

