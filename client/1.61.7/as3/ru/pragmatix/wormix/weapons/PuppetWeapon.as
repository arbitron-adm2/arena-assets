package ru.pragmatix.wormix.weapons
{
   import § %f§.Puppet;
   import § &5§.§=#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §+%S§.§=$2§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §`%&§.§5$1§;
   
   public class PuppetWeapon extends §,%r§
   {
      
      public function PuppetWeapon()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §7&§(new §!"G§());
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         if(property["ignoresTerrain"])
         {
            §-g§ = new §5$1§(90,false,1);
         }
         else
         {
            §-g§ = new §5$1§(90,false,0);
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:int = 0;
         §@%;§.play(property["attackSound"] || §`!v§.§+!d§);
         var _loc1_:Class = getProperty("ammoClass") as Class;
         _loc2_ = int(int(property["hp"]) || §=$2§.§9%§);
         var _loc3_:Puppet = new _loc1_(owner,owner.x,owner.y,paramSet,shotParams.angle,§-&I§(shotParams.power),_loc2_);
         _loc3_.§=!3§(getProperty("attachedClip") as String);
         if(property["bounceSounds"])
         {
            _loc3_.bounceSounds = property["bounceSounds"];
         }
         if(property["allyTrigger"])
         {
            _loc3_.§5E§();
         }
         if(property["ignoresTerrain"])
         {
            _loc3_.§&$o§();
         }
         if(property["trailLength"])
         {
            _loc3_.trailLength = property["trailLength"];
         }
         if(property["trailWidth"])
         {
            _loc3_.trailWidth = property["trailWidth"];
         }
         if(property["trailColor"])
         {
            _loc3_.trailColor = _loc3_.§?$z§ = property["trailColor"];
         }
         _loc3_.§6"9§();
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

