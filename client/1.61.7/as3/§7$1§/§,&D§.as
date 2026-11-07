package §7$1§
{
   import § !P§.§9%Z§;
   import § &5§.§=#P§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §,#_§.FrameTimer;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §<!^§.§'$e§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §]$v§.§,%E§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class §,&D§ extends §=!?§
   {
      
      private static const §+$T§:Number = 0.03;
      
      private static const §<!_§:Number = 0.5;
      
      private var §"$2§:Number;
      
      protected var timer:FrameTimer;
      
      protected var §""#§:Boolean;
      
      public function §,&D§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean = true, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5);
         this.§""#§ = §8"%§.§?!W§.§4"m§.§2#-§() == param1.squad.getTeamId();
         this.§"$2§ = this.§""#§ ? §<!_§ : 0;
         this.timer = new FrameTimer(1);
         this.timer.addEventListener(FrameTimerEvent.§8$`§,this.§'%-§);
         if(param6)
         {
            this.timer.start();
         }
      }
      
      private function §'%-§(param1:FrameTimerEvent) : void
      {
         this.clip.alpha -= §+$T§;
         if(trail)
         {
            trail.alpha -= §+$T§;
         }
         if(this.clip.alpha <= this.§"$2§)
         {
            this.timer.stop();
         }
      }
      
      override protected function §#%h§() : void
      {
         if(this.timer)
         {
            this.timer.stop();
         }
         this.clip.alpha = 1;
         super.§#%h§();
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(this.timer != null)
         {
            this.timer.stop();
            this.timer.removeEventListener(FrameTimerEvent.§8$`§,this.§'%-§);
            this.timer = null;
         }
         super.§[$u§(param1);
      }
   }
}

