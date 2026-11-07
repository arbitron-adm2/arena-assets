package ru.pragmatix.wormix.weapons
{
   import § %f§.§ "r§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §0"L§.§+# §;
   import §2#i§.§+%z§;
   import §4$b§.§2m§;
   import §9%W§.§!"G§;
   import §`%&§.§`§;
   import flash.events.Event;
   
   public class HolyGrenade extends §,%r§
   {
      
      public function HolyGrenade()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §7&§(new §!"G§());
         §-g§ = new §`§(§"#z§,§2$"§,150,false);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§ "r§ = new § "r§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power));
         if(owner.squad.isLocal())
         {
            _loc1_.customSource = §<$c§.§ !=§(§+%z§.HOLY_GRENADE);
         }
         if(!getProperty("canRunAway") || !property["canRunAway"].value)
         {
            §+# §.§9! §.deactivate();
         }
         if(getProperty("healing"))
         {
            _loc1_.§8#P§();
         }
         if(getProperty("freezing"))
         {
            _loc1_.§[_§();
         }
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

