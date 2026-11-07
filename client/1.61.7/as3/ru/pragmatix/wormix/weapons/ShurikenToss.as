package ru.pragmatix.wormix.weapons
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §`%&§.§`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class ShurikenToss extends §,%r§
   {
      
      public function ShurikenToss()
      {
         super();
      }
      
      override public function §""2§(param1:Object) : void
      {
         §"#z§ = §2$"§ = param1["power"].value;
         if(param1["trajectoryCrosshair"].value)
         {
            §7&§(new §%G§(§2$"§,new <§]%G§>[§]%G§.§5$r§]));
         }
         else
         {
            §7&§(new §!7§());
         }
         super.§""2§(param1);
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §`§(§"#z§,§2$"§,70,false,15);
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:Class = getProperty("classShuriken") as Class;
         _loc2_ = getProperty("noTrail") == true;
         var _loc3_:§"%5§ = new _loc1_(owner,paramSet,shotParams.angle,§"#z§,!_loc2_);
         if(owner.squad.isLocal())
         {
            _loc3_.customSource = §<$c§.§ !=§(§+%z§.SHURIKEN);
         }
         if(shotsLeft.value == 0)
         {
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

