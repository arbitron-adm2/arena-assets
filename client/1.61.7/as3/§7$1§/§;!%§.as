package §7$1§
{
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§-$s§;
   import §,$J§.§,$O§;
   import §4f§.§-&§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   
   public class §;!%§ extends §;$n§
   {
      
      private static const §"&!§:§&$2§ = new §&$2§(1);
      
      private static const §>$t§:§&$2§ = new §&$2§(6);
      
      public function §;!%§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean = true)
      {
         super(param1,param2,param3,param4,param5);
         §2#J§ = [§`!v§.§?"x§];
         §##9§.value = 1;
         §=$`§.value = param4.explosionRadius.value;
         if(§5%g§(§-&§.CAPTURABLE))
         {
            §,q§.splice(§,q§.indexOf(§-&§.CAPTURABLE),1);
         }
      }
      
      override public function explode() : void
      {
         var _loc1_:int = 0;
         if(Boolean(activator) && activator.§0!e§)
         {
            _loc1_ = activator.squad.getTeamId() == owner.squad.getTeamId() ? §"&!§.value : §>$t§.value;
            activator.buffs.place(new §-$s§(owner,§"&!§.value,0,§,$O§.GIFT_BOX_WEAPON,true,true));
            §@%;§.play(§`!v§.§9#q§);
         }
         else
         {
            §1"-§.explode(§;n§.§6#B§,x,y,30,§`!v§.§+#O§);
         }
         disposed = true;
      }
   }
}

