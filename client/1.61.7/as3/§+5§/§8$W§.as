package §+5§
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%[§.§#&B§;
   import §+$=§.§6#A§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §2"L§.§##l§;
   import §2#H§.§?#S§;
   import §3#T§.Boomerang;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §8$V§.*;
   import §9"-§.§?!s§;
   import §;!Z§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §?$L§.§ "N§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §[$<§.§[!$§;
   import §]$v§.§<§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §8$W§ extends §7$`§
   {
      
      private static const §+"U§:§&$2§ = new §&$2§(50);
      
      private var §>]§:Boolean;
      
      private var §>%V§:Boolean;
      
      private var §9%m§:§[!$§;
      
      public function §8$W§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int, param7:Number, param8:int, param9:Boolean)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§>]§ = true;
         §1#t§ = §`!v§.§["s§;
         this.§9%m§ = §1"-§.§;%k§(this,§;n§.§6#B§,8,1);
      }
      
      override protected function §%$e§(param1:CollisionEvent) : void
      {
         super.§%$e§(param1);
         if(this.§>]§ && !this.§>%V§)
         {
            this.§9%m§.remove();
            §1"-§.explode(§;n§.MEDIUM,x,y,clip.width,§1#t§);
            this.§?"R§();
            setSpeedXY(speedX,speedY * 0.75);
            this.§>%V§ = true;
         }
      }
      
      override protected function §,#U§() : void
      {
         super.§,#U§();
         if(disposed)
         {
            this.§?"R§();
         }
      }
      
      private function §?"R§() : void
      {
         var _loc1_:§&!E§ = null;
         if(this.§>]§)
         {
            _loc1_ = !this.§>%V§ ? §&!E§.AIR : §&!E§.§!?§;
            §'"$§.§]#I§(owner,x,y,null,§+"U§.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,_loc1_,true,true,true,true,_customSource);
         }
      }
      
      override protected function dispose() : void
      {
         this.§?"R§();
         super.dispose();
      }
   }
}

