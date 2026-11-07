package ru.pragmatix.wormix.weapons
{
   import § %f§.Parasite;
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §@!i§.§<!9§;
   import §^!]§.WeaponShootEvent;
   import §`%&§.§5$1§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class ParasiteWeapon extends §,%r§
   {
      
      public function ParasiteWeapon()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §7&§(new §!"G§());
         §-g§ = new §5$1§(90,false,0);
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.§+!d§);
         var _loc1_:Class = getProperty("ammoClass") as Class;
         var _loc2_:Parasite = new _loc1_(owner,owner.x,owner.y,paramSet,shotParams.angle,§-&I§(shotParams.power));
         _loc2_.§@L§(getProperty("blinkClip") as String,getProperty("attachedClip") as String);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

