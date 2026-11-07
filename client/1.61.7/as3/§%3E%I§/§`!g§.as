package §>%I§
{
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §,&8§.§@r§;
   import §0!§.§9"u§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §4!!§.§!%n§;
   import §4!!§.§%$$§;
   import §7!B§.§6#I§;
   import §8$V§.§^#§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.events.TextEvent;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §`!g§ extends §6#I§ implements §^%c§
   {
      
      public static const FIRE:int = 0;
      
      public static const POISON:int = 1;
      
      private static const POISON_DAMAGE:int = 60;
      
      private static const FIRE_DAMAGE:int = 8;
      
      private static const PI_ONE_45:int = Math.PI / 45;
      
      private static const PI_ONE_180:int = Math.PI / 180;
      
      private var bar:§%&F§;
      
      private var attack:Function;
      
      private var §^i§:Boolean;
      
      public function §`!g§(param1:§+%]§, param2:int, param3:int, param4:int, param5:Boolean)
      {
         super(param1,param2,param3,false,-1);
         canBeDamaged = true;
         §8%g§ = new §9"u§(this,100,0,0);
         this.x = param2;
         this.y = param3;
         physicModel.keepUnstable = false;
         if(param4 == FIRE)
         {
            clip = §6#A§.§!&6§("FireDruidTotem");
            this.attack = this.§,"x§;
            this.bar = new §[N§(param1,§0$N§.BOSS_DRUID_TOTEM_FIRE,50);
         }
         else
         {
            clip = §6#A§.§!&6§("PoisonDruidTotem");
            this.attack = this.§@"S§;
            this.bar = new §[N§(param1,§0$N§.BOSS_DRUID_TOTEM_POISION,50);
         }
         this.§^i§ = param5;
         Application.scene.addEventListener(§0%v§.SOT,this.trigger);
         §@%;§.play(§`!v§.§1$t§);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function trigger(param1:Event) : void
      {
         if(§8"%§.§?!W§.§4"m§.activeSquad.getTeamId() == owner.squad.getTeamId())
         {
            this.§6!F§();
         }
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§!#6§;
         physicModel = new §;$S§(physParams);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         §@%;§.play(§`!v§.BONUS);
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
      
      private function §6!F§() : void
      {
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         if(_loc1_.length > 0)
         {
            this.attack(§<H§.§7%+§(this,§""L§.§,"=§(_loc1_)));
         }
      }
      
      private function §,"x§(param1:§+%]§) : void
      {
         var _loc6_:§%$$§ = null;
         var _loc2_:Number = Math.atan2(param1.y - y,param1.x - x);
         var _loc3_:int = 4 * PI_ONE_180;
         var _loc4_:int = FIRE_DAMAGE * (this.§^i§ ? 1.5 : 1);
         var _loc5_:int = -4;
         while(_loc5_ <= 4)
         {
            _loc6_ = new §%$$§(owner,x,y,param1,_loc4_,30,24);
            _loc6_.§^"F§(_loc2_ + _loc5_ * PI_ONE_45,30);
            _loc6_.homingFeat.§<$1§ = _loc3_;
            _loc5_++;
         }
         §@%;§.play(§`!v§.§>"6§);
      }
      
      private function §@"S§(param1:§+%]§) : void
      {
         new §!%n§(owner,x,y,false,param1,POISON_DAMAGE * (this.§^i§ ? 1.5 : 1));
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.trigger);
         super.§[$u§(param1);
      }
   }
}

