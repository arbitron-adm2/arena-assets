package §7$1§
{
   import §%&6§.§0%2§;
   import §&"c§.§5$n§;
   import §0&F§.§0%v§;
   import §9"-§.§?!s§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§?"&§;
   import §`%&§.§3!D§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.Grenade;
   
   public class §[#m§ extends §,&D§
   {
      
      private static const §5$§:Number = Grenade.§`&#§.value;
      
      private var §+#n§:Boolean = false;
      
      public function §[#m§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,false);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         §'%y§ = false;
      }
      
      private function §@%D§(param1:Event) : void
      {
         if(§8"%§.§?!W§.§4"m§.activeSquad.getTeamId() == owner.squad.getTeamId() && !this.§+#n§)
         {
            timer.start();
            this.§+#n§ = true;
         }
         else if(this.§+#n§)
         {
            clip.alpha = 1;
            if(trail)
            {
               trail.alpha = 1;
            }
            §8$a§.§%!E§(§5$§,timer.start);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         super.§[$u§(param1);
      }
   }
}

