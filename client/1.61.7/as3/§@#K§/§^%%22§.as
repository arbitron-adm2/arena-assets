package §@#K§
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §0&F§.§0%v§;
   import §1#0§.§;4§;
   import §<%k§.§`!v§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   
   public class §^%"§ extends §-#8§
   {
      
      private static const §""I§:uint = 1000;
      
      private var exp:int;
      
      private var §,$Q§:int;
      
      private var §!%e§:int;
      
      public function §^%"§(param1:Point, param2:int = 1, param3:int = 4)
      {
         super(param1.x,param1.y,§+"'§.§9&1§);
         §+%;§();
         physParams.§0%m§(physParams.§`$Y§,physParams.§>"o§ - 12);
         this.exp = param2;
         this.§,$Q§ = param3;
         this.§!%e§ = getTimer();
         §5!?§(0,-10);
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§0#0§ = §<#`§.NONE;
      }
      
      override protected function §-%+§(param1:§+%]§) : Boolean
      {
         return !param1.squad.isAi() && getTimer() - this.§!%e§ >= §""I§;
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         var _loc2_:Boolean = false;
         super.§0$j§(param1);
         §8"%§.§?!W§.§7%@§.increment(§;4§.COLLECTED_STARS);
         §8"%§.§?!W§.§4"m§.§%#X§(this.exp);
         _loc2_ = param1.squad.§?"#§().getLevel() < §<!9§.getMaxLevel();
         var _loc3_:String = (_loc2_ ? §0$N§.BONUS_EXP + this.exp : "") + §0$N§.BONUS_FUZY + this.§,$Q§;
         §2!H§.§'!i§(_loc3_,§2!H§.§?$!§,this.x,this.y);
         §1"-§.§`$Q§(this.x,this.y,§+"'§.§'"o§);
         §@%;§.play(§`!v§.§0#]§);
      }
   }
}

