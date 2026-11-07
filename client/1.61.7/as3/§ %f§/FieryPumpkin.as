package § %f§
{
   import § #m§.§[&H§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'T§.§!$C§;
   import §+%S§.§+m§;
   import §+%S§.§,$p§;
   import §+%S§.§[&;§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,!t§;
   import §2#i§.§9##§;
   import §3#T§.§+&F§;
   import §4f§.§-&§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class FieryPumpkin extends §=!z§
   {
      
      private static const FIRE_DURATION:int = 100;
      
      private static const § !x§:uint = 15;
      
      private var direction:int;
      
      private var §1$m§:Boolean = false;
      
      private var §,$'§:Point;
      
      private var §^#x§:uint = 30;
      
      public function FieryPumpkin(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:uint = 1)
      {
         var _loc6_:Number = -Math.PI / 2 + param1.direction * Math.PI / 4;
         super(param1,param2,param3,param4,_loc6_,param5,0.2);
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         _damageType = §&!E§.FIRE;
         §2#J§ = null;
         §5L§ = null;
         §`4§ = §+#G§;
         clip.rotation = 0;
         initialize(new Point(param2,param3));
         this.direction = param1.direction;
         if(this.direction == §+%]§.LEFT)
         {
            §,!t§.§%v§(clip);
         }
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         this.§1$m§ = true;
         this.§,$'§ = §<H§.§ !K§(x,y,§>#9§.unit,30);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!disposed && this.§1$m§)
         {
            if(frames % 3 == 0)
            {
               this.§+$"§();
            }
         }
      }
      
      private function §+$"§() : void
      {
         var newPos:Point = null;
         var oil:§+&F§ = null;
         if(Boolean(this.§,$'§) && --this.§^#x§ > 0)
         {
            newPos = §3+§.§0!R§(this.§,$'§.x,this.§,$'§.y,this.direction,§ !x§);
            if(this.§,$'§.equals(newPos))
            {
               if(!§>#9§.point(this.§,$'§.x + this.direction * § !x§,this.§,$'§.y + § !x§))
               {
                  this.§,$'§.x += this.direction * § !x§;
                  this.§,$'§.y += § !x§;
               }
               else
               {
                  this.§,$'§ = null;
               }
            }
            else
            {
               this.§,$'§ = newPos;
            }
            if(this.§,$'§)
            {
               oil = new §+&F§(owner,0,0,this.§,$'§.x,this.§,$'§.y,FIRE_DURATION);
               oil.addEventListener(§0%v§.DISPOSED,function(param1:Event):void
               {
                  if(Boolean(oil) && !Application.scene.§@$I§.§=%d§())
                  {
                     oil.inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
                     §1"-§.explode(§;n§.§@$Y§,oil.x,oil.y,paramSet.explosionRadius.value * 0.75,§`!v§.§["s§);
                  }
               },false,int.MAX_VALUE);
            }
         }
         else
         {
            this.explode();
         }
      }
      
      override public function explode() : void
      {
         if(!disposed)
         {
            this.§1$m§ = false;
            inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            disposed = true;
            §1"-§.explode(§;n§.§8!-§,this.x,this.y,paramSet.damageRadius.value,§`!v§.§["s§);
         }
      }
   }
}

