package § "L§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §&"c§.§%$m§;
   import §+$=§.§6#A§;
   import §-!U§.§&%j§;
   import §0&F§.§0%v§;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §3#T§.Boomerang;
   import §3#a§.§-#M§;
   import §4'§.§^"p§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.§<§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import org.gestouch.core.GestureState;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   use namespace gestouch_internal;
   
   public class RocketTurret extends §`!r§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      protected const §@!9§:String = "RocketTurret";
      
      private const §]"O§:int = 10;
      
      private const §+!p§:int = 30;
      
      private const §4a§:int = 4;
      
      private const §;"3§:int = 10;
      
      private var params:§%$m§;
      
      private var §3%_§:int = 0;
      
      public function RocketTurret(param1:int, param2:int, param3:Point, param4:Point, param5:§%$m§, param6:int = 0)
      {
         super(param1,param2,param3,param4,param6);
         paramSet = §<$c§.§ !=§(§+%z§.BAZOOKA).§<$4§.clone();
         this.params = param5;
         barrel.rotation = head.rotation = §-q§.§%%>§(param5.angle);
      }
      
      override protected function §8&8§() : void
      {
         §!%8§ = §6#A§.§!&6§(this.§@!9§);
         super.§8&8§();
      }
      
      override protected function §3K§() : void
      {
         if(Boolean(target) && Boolean(§<#6§ <= frames) && checkTargets)
         {
            this.§3%_§ = 0;
            if(this.params.§<"r§ != 0)
            {
               this.params.angle = -PI_HALF;
            }
            if(this.params.§3"]§ != 0)
            {
               this.params.power = this.§]"O§;
            }
            if(this.params.§%#0§)
            {
               this.params.§=!P§ = §8"%§.randomSeed.§,!q§(this.§4a§,this.§;"3§);
            }
            §<#6§ = frames + this.params.§&#H§;
            §8$a§.§%!E§(this.params.§-#E§,this.§<%8§);
         }
      }
      
      override protected function §<%8§() : void
      {
         barrel.rotation = head.rotation = §-q§.§%%>§(this.params.angle);
         var _loc1_:Point = getBarrelPoint(this.params.angle);
         var _loc2_:Number = this.params.angle - PI_HALF + §-q§.§7%8§(clip.rotation);
         var _loc3_:int = this.params.§`#M§ ? int(§8"%§.randomSeed.§,!q§(this.§]"O§,this.§+!p§)) : this.params.power;
         new §<#1§(_loc1_,paramSet,_loc2_,_loc3_,this.params.useGravity);
         ++this.§3%_§;
         this.params.angle += this.params.§<"r§;
         this.params.power += this.params.§3"]§;
         if(this.§3%_§ < this.params.§=!P§)
         {
            §8$a§.§%!E§(this.params.§&6§,this.§<%8§);
         }
      }
      
      override protected function §1n§(param1:Event) : void
      {
         var _loc3_:§<#1§ = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§<#1§]);
         for each(_loc3_ in _loc2_)
         {
            _loc3_.disposed = true;
         }
         super.§1n§(param1);
      }
   }
}

