package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §]$v§.§1>§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§,L§;
   
   public class DrillGun extends §,%r§
   {
      
      protected var armorReduction:uint = 0;
      
      protected var homingEnabled:Boolean;
      
      public function DrillGun()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §7&§(new §!"G§());
         §-g§ = new §,L§();
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["armorReduction"])
         {
            this.armorReduction = §&$2§(param1["armorReduction"]).value;
         }
         if(param1["homingEnabled"])
         {
            this.homingEnabled = §?"&§(param1["homingEnabled"]).value;
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:§1>§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         §@%;§.play(§`!v§.§["p§);
         var _loc1_:uint = §-&I§(shotParams.power);
         if(this.homingEnabled)
         {
            new §`0§(owner,paramSet,shotParams.angle,_loc1_);
         }
         else
         {
            _loc2_ = new §1>§(owner,paramSet,shotParams.angle,_loc1_,this.armorReduction);
            if(Boolean(property["drillLength"]) && Boolean(property["drillRadius"]))
            {
               _loc3_ = §&$2§(property["drillLength"]).value;
               _loc4_ = §&$2§(property["drillRadius"]).value;
               _loc2_.§+"E§(_loc3_,_loc4_);
            }
         }
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

