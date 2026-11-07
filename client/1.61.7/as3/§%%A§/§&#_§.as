package §%%A§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §0"L§.§+# §;
   import §6%2§.§!"x§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import config.achievements.§!$L§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §&#_§ extends §1>§
   {
      
      private var targets:Vector.<§+%]§>;
      
      public function §&#_§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
         physParams.removeAllForces();
         §%#<§();
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:§+%]§ = null;
         super.§!!>§();
         if(y < -200)
         {
            if(frames % 5 == 0 || !this.targets || this.targets.length == 0)
            {
               this.targets = §8"%§.§?!W§.§4"m§.§6"M§(owner);
            }
            else
            {
               §7z§.§7"K§(this.targets);
            }
            if(this.targets.length)
            {
               _loc1_ = this.targets[int(§8"%§.randomSeed.§,!q§(0,this.targets.length - 1))];
               §^"F§(§-q§.§@$H§(this,_loc1_),speed);
            }
         }
      }
   }
}

