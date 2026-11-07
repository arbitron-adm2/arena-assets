package §>%I§
{
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §0&F§.§0%v§;
   import §7$1§.§;$n§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import flash.display.MovieClip;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §-#f§ extends §;$n§
   {
      
      private var §7%E§:MovieClip;
      
      private var §^i§:Boolean;
      
      public function §-#f§(param1:MovieClip, param2:§+%]§, param3:int, param4:int, param5:§5$n§, param6:int, param7:Boolean)
      {
         param5.ammoClassName = "PoisonSporeIdle";
         super(param2,param3,param4,param5,true,false,param6);
         this.§7%E§ = param1;
         this.§^i§ = param7;
         §##9§.value = param1.totalFrames;
         setSpeedXY(0,0);
         §@%;§.play(§`!v§.§-$z§);
         addEventListener(§0%v§.MINE_SET_UP,this.§8!Z§);
         physicModel.keepUnstable = false;
         stable = true;
         §#g§ = true;
      }
      
      protected function §8!Z§(param1:MineSetUpEvent) : void
      {
         physicModel.keepUnstable = false;
         stable = true;
      }
      
      override protected function §#%h§() : void
      {
         swapClip(this.§7%E§);
         clip.gotoAndPlay(1);
      }
      
      override public function set disabled(param1:Boolean) : void
      {
      }
   }
}

