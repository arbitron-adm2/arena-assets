package §9"-§
{
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §4!!§.§'$V§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^!]§.WeaponShootEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§%%a§;
   
   public class AnchorTeleportMark extends §&"T§
   {
      
      private static const §6Q§:Number = 1 / 30;
      
      private var owner:§+%]§;
      
      private var counter:§%%a§;
      
      private var lifetime:int;
      
      public function AnchorTeleportMark(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:int)
      {
         this.owner = param1;
         super();
         clip = §6#A§.§!&6§(param4.ammoClassName);
         this.lifetime = param5;
         this.counter = new §%%a§(param5 / 30,2);
         this.counter.attach(this,-2,-40);
         stable = true;
         this.x = param2;
         this.y = param3;
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.UNIT_DEACTIVATION,this.§,!l§,false,100);
         Application.scene.addEventListener(§0%v§.WEAPON_SHOOT,this.§0$"§);
         param1.addEventListener(§0%v§.DISPOSED,this.§ %4§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.counter)
         {
            this.counter.tick(§6Q§);
         }
         if(frames >= this.lifetime)
         {
            disposed = true;
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         var _loc2_:§'$V§ = null;
         if(!this.owner.disposed && §8"%§.§?!W§.§4"m§.activeSquad == this.owner.squad)
         {
            _loc2_ = new §'$V§(this.owner,this.owner.x,this.owner.y,true,this.owner,16777215,16777215,60);
            _loc2_.§4M§ = false;
            if(§8"%§.§?!W§.§4"m§.activeUnit == this.owner && this.owner is Cat)
            {
               Cat(this.owner).deactivateNow();
            }
            if(this.owner.physParams.§`!o§)
            {
               this.owner.physParams.§8B§();
            }
            §<H§.§"%8§(this.owner,x,y);
            §@%;§.play(§`!v§.TELEPORT);
            this.owner.setSpeedXY(0,1);
         }
         disposed = true;
      }
      
      private function §0$"§(param1:WeaponShootEvent) : void
      {
         if(!param1.hasShotsLeft && §8"%§.§?!W§.§4"m§.§'U§() && Boolean(this.counter))
         {
            this.lifetime = int.MAX_VALUE;
            this.counter.§?!K§();
            this.counter = null;
         }
      }
      
      private function § %4§(param1:Event) : void
      {
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.§,!l§);
         Application.scene.removeEventListener(§0%v§.WEAPON_SHOOT,this.§0$"§);
         §1"-§.explode(§;n§.MEDIUM,x,y,§-$[§ >> 1,§`!v§.§`%=§);
         this.owner.removeEventListener(§0%v§.DISPOSED,this.§ %4§);
         if(this.counter)
         {
            this.counter.§?!K§();
            this.counter = null;
         }
         super.§[$u§(param1);
      }
   }
}

