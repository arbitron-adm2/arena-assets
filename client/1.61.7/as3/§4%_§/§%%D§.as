package §4%_§
{
   import §!L§.§+"'§;
   import §#",§.§+!h§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.§^$[§;
   import §-&5§.*;
   import §0&F§.§0%v§;
   import §2#H§.§3$p§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §[!`§.SolarSphere;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§?"&§;
   import §^4§.§9!K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §%%D§ extends §3#3§
   {
      
      private static const §0"w§:int = 250;
      
      private static const ammoParamSet:§5$n§ = §5$n§.§<#=§(null,4,30,15);
      
      public function §%%D§(param1:§+%]§, param2:int, param3:int)
      {
         super(param1,param2,param3);
      }
      
      private function attack(param1:§+%]§) : void
      {
         new §9!K§(owner,this,ammoParamSet,Math.atan2(param1.y - y,param1.x - x),50,10,4);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:Vector.<§&"T§> = §<H§.§"%G§(x,y,§""L§.§,"=§(§=$6§(§0"w§)));
         if(_loc2_.length)
         {
            this.attack(_loc2_[0] as §+%]§);
         }
         super.§[$u§(param1);
      }
   }
}

