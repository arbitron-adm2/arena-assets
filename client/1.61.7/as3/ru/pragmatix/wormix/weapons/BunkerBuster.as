package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §^#[§.§&$2§;
   import §`%&§.§0$]§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class BunkerBuster extends §,%r§
   {
      
      public static const §8V§:uint = 20;
      
      protected static const §?!!§:uint = 24;
      
      protected static const §6"o§:int = 100;
      
      protected var y0:Number = -50;
      
      protected var counter:uint = 20;
      
      protected var armorReduction:uint = 0;
      
      public function BunkerBuster()
      {
         super();
         §7&§(new §8#p§(this.§@%@§));
         §-g§ = new §0$]§();
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["counter"])
         {
            this.counter = §&$2§(param1["counter"]).value;
         }
         if(param1["armorReduction"])
         {
            this.armorReduction = §&$2§(param1["armorReduction"]).value;
         }
      }
      
      private function §@%@§(param1:int, param2:int) : Boolean
      {
         if(param2 > §6"o§)
         {
            return true;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.CROSSHAIR_TOO_HIGH,true);
         }
         return false;
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Number = shotParams.point.x;
         this.§]y§(_loc1_,this.y0);
         §1"-§.§##7§(shotParams.point.x,shotParams.point.y,20);
         §@%;§.play(§`!v§.AIR_STRIKE);
         §?!K§();
         §=#P§.§6+§();
      }
      
      protected function §]y§(param1:int, param2:int) : void
      {
         var _loc3_:§+%n§ = new §+%n§(owner,paramSet,paramSetEx,param1,param2,this.counter,this.armorReduction);
         if(getProperty("cripple"))
         {
            _loc3_.setCripple();
         }
      }
   }
}

