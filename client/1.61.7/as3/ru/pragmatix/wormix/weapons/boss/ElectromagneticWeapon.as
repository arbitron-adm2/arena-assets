package ru.pragmatix.wormix.weapons.boss
{
   import § "L§.§`#r§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §2#i§.§9##§;
   import §4!!§.§?%O§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §@!N§.§'+§;
   import §@!i§.§8%6§;
   import §`%&§.§"#C§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequestMethod;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class ElectromagneticWeapon extends §,%r§
   {
      
      public function ElectromagneticWeapon()
      {
         super();
         §"#z§ = §2$"§ = 50;
         §-g§ = new §"#C§(35,§"#z§);
      }
      
      override public function §""2§(param1:Object) : void
      {
         §7&§(new §!7§());
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.§,!3§);
         new §?%O§(owner,getBarrelPoint(shotParams.angle),paramSet,shotParams.angle,§"#z§);
         if(shotsLeft.value == 0)
         {
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

