package §@&H§
{
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §<$q§.§,%3§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §[$<§.§;"E§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§;$]§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §>#&§
   {
      
      public function §>#&§()
      {
         super();
      }
      
      public function test() : Boolean
      {
         var i:int;
         var tc:§;$]§ = new §;$]§(null,new §,%3§(30));
         var cbCheck:Boolean = false;
         tc.§1$c§(1);
         tc.start(function():void
         {
            cbCheck = true;
         });
         tc.pause();
         if(!tc.timer || tc.timer.running || !tc.paused || !tc.paused.value)
         {
            return false;
         }
         i = 0;
         while(i < 10)
         {
            tc.§6"v§.value -= §;$]§.§2"§.value;
            i++;
         }
         tc.§,!>§();
         return tc.§6"v§.value == 22000 && cbCheck;
      }
   }
}

