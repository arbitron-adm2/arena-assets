package ru.pragmatix.wormix.weapons.boss
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §&%7§.§^"N§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §5#`§.§7%g§;
   import §6$z§.§!"§;
   import §9![§.*;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$<§.§>$o§;
   import §[%'§.§<"G§;
   import §]$v§.§1>§;
   import §`%&§.§,L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class AssassinHeavyKnifeWeapon extends §,%r§
   {
      
      public function AssassinHeavyKnifeWeapon()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §7&§(new §!"G§());
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         §-g§ = new §,L§();
         paramSet = §'%_§.getWeapon(§+%z§.SHURIKEN_U2A_TRAJECTORY).§4!J§().clone();
      }
      
      override protected function §`%V§() : void
      {
         var self:§+%]§ = null;
         var ammo:§1>§ = null;
         var listener:Function = null;
         var trailParams:§>$o§ = §>$o§.§<#=§(paramSet.ammoClassName,1,true);
         self = owner;
         ammo = new §1>§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power),0,null);
         if(owner.squad.isLocal())
         {
            ammo.customSource = §<$c§.§ !=§(§+%z§.SHURIKEN);
         }
         listener = function(param1:CollisionEvent):void
         {
            if(ammo.disposed)
            {
               ammo.removeEventListener(§0%v§.§+&=§,listener);
            }
            if(param1.other is §+%]§)
            {
               §7%g§.§>!%§(§+%]§(param1.other),self);
            }
         };
         ammo.§+"E§(8,12);
         ammo.§7%"§(§`!v§.§=%2§(§"%5§.§&!_§),§`!v§.§=%2§(§"%5§.§!"P§));
         ammo.addEventListener(§0%v§.§+&=§,listener);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

