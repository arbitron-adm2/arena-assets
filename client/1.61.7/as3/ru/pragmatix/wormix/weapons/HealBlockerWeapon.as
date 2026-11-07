package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%&6§.§0%2§;
   import §%&6§.§8!`§;
   import §2#i§.§+%z§;
   import §9%W§.§!"G§;
   import §=$#§.§`%u§;
   import §^#[§.§&$2§;
   import §`%&§.§3!D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class HealBlockerWeapon extends §,%r§
   {
      
      public function HealBlockerWeapon()
      {
         super();
         §"#z§ = 5;
         §2$"§ = 35;
         §7&§(new §!"G§());
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §3!D§(§"#z§,§2$"§,80,Class(getProperty("ammoClass")) is §0%2§);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§&$2§ = null;
         _loc1_ = §&$2§(getProperty("duration"));
         var _loc2_:Class = Class(getProperty("ammoClass"));
         var _loc3_:String = String(getProperty("idleClipName"));
         var _temp_1:* = new _loc2_(owner,paramSet,shotParams.angle,§-&I§(shotParams.power),_loc1_);
         var _loc4_:§8!`§ = new _loc2_(owner,paramSet,shotParams.angle,§-&I§(shotParams.power),_loc1_);
         _loc4_.§!"-§(_loc3_);
         if(!§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §`%u§.§0!1§(§+%z§.§"!S§,owner);
         }
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

