package §7$1§
{
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §3#T§.Boomerang;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class StickyMine extends §;$n§
   {
      
      private var §1!-§:Boolean = false;
      
      public function StickyMine(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean = true, param6:Boolean = true, param7:uint = 55)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         addEventListener(§0%v§.MINE_SET_UP,this.§8!Z§);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new §7%[§(physParams);
      }
      
      override protected function §-$%§() : void
      {
         if(stable)
         {
            physParams.removeAllForces();
         }
         else
         {
            stable = false;
         }
         physicModel.keepUnstable = true;
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         setSpeedXY(0,0);
         §@%;§.play(§`!v§.§-$z§);
         if(!this.§1!-§)
         {
            this.§1!-§ = true;
            §#g§ = true;
            §@$!§();
         }
         if(§"%K§)
         {
            stable = true;
         }
         else
         {
            physParams.removeAllForces();
            physicModel.stop();
         }
      }
      
      protected function §8!Z§(param1:MineSetUpEvent) : void
      {
         if(this.§1!-§ && !param1.triggered)
         {
            setSpeedXY(0,0);
            physParams.removeAllForces();
            physParams.addForce(§]%G§.§5$r§);
            stable = true;
         }
      }
   }
}

