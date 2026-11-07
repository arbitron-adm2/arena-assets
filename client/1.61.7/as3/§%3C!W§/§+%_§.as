package §<!W§
{
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §0%z§.§+y§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §8$Z§.§9!&§;
   import §9![§.§^§;
   import §<V§.§!&-§;
   import §=1§.*;
   import §?"j§.*;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §+%_§ extends §`"C§
   {
      
      public static const NAME:String = "ELEMENTS_WEAKNESS_PLACER_BUFF";
      
      public static const §?"D§:String = "ELEMENTS_WEAKNESS";
      
      public static const §]!M§:String = "ResistDestruct";
      
      public static const §>$9§:Array = [Bonus.FIRE_DEFENSE,Bonus.FROST_DEFENSE,Bonus.SHOCK_DEFENSE,Bonus.AIR_DEFENSE];
      
      public static const §,!#§:§&$2§ = new §&$2§(60);
      
      public static const §5"M§:§&$2§ = new §&$2§(10);
      
      public static const §?&B§:§&$2§ = new §&$2§(20);
      
      private var target:§+%]§;
      
      private var §&$l§:Vector.<Number>;
      
      private var §]@§:Vector.<Number>;
      
      public var §8!h§:§]$q§;
      
      public function §+%_§(param1:int = -1, param2:int = 0)
      {
         super(NAME,param1,param2);
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§<%g§);
         Application.scene.addEventListener(§0%v§.EOT,this.§5%x§);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§<%g§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§5%x§);
         this.§5%x§();
      }
      
      private function §5%x§(param1:Event = null) : void
      {
         if(this.target)
         {
            this.target.removeEventListener(§0%v§.§&!D§,this.§?$u§);
            this.target.bonuses.§9=§(this.§8!h§);
            this.target = null;
         }
      }
      
      private function §<%g§(param1:Event = null) : void
      {
         var enemies:Vector.<§+%]§> = null;
         var nearestDistance:int = 0;
         var enemy:§+%]§ = null;
         var i:int = 0;
         var length:int = 0;
         var distance:int = 0;
         var currentProtection:uint = 0;
         var delimeter:int = 0;
         var tmpTarget:§+%]§ = null;
         var clip:MovieClip = null;
         var e:Event = param1;
         if(§8"%§.§?!W§.§4"m§.activeSquad.getTeamId() == unit.squad.getTeamId())
         {
            this.§&$l§ = new Vector.<Number>(0);
            this.§]@§ = new Vector.<Number>(0);
            this.§8!h§ = new §]$q§(§?"D§);
            enemies = §8"%§.§?!W§.§4"m§.§6"M§(unit);
            nearestDistance = 0;
            for each(enemy in enemies)
            {
               distance = §-q§.distance(unit.x,unit.y,enemy.x,enemy.y);
               if(!this.target || nearestDistance > distance)
               {
                  if(!enemy.buffs.hasBuff(§7%h§.NAME))
                  {
                     this.target = enemy;
                     nearestDistance = distance;
                  }
               }
            }
            if(!this.target)
            {
               return;
            }
            i = 0;
            length = int(§>$9§.length);
            while(i < length)
            {
               currentProtection = uint(this.target.bonuses.getStatValue(§>$9§[i]));
               this.§&$l§[i] = Math.min(§,!#§.value,currentProtection);
               delimeter = §>$9§[i] == Bonus.FIRE_DEFENSE ? §?&B§.value : §5"M§.value;
               this.§]@§[i] = this.§&$l§[i] / delimeter;
               if(this.§&$l§[i] > 0)
               {
                  this.§8!h§.§3%<§(new §@"I§(§>$9§[i],-this.§&$l§[i]));
               }
               i++;
            }
            this.target.bonuses.§]!X§(this.§8!h§);
            this.target.buffs.place(new §7%h§());
            this.target.addEventListener(§0%v§.§&!D§,this.§?$u§);
            if(!§-#M§.§&$i§(this.target))
            {
               tmpTarget = this.target;
               clip = §6#A§.§!&6§(§]!M§);
               tmpTarget.graphics.§5$#§(§2m§.§-w§,clip,0,0);
               §8$a§.§%!E§(30,function():void
               {
                  if(tmpTarget)
                  {
                     tmpTarget.graphics.detachClip(clip,§2m§.§-w§);
                  }
               });
            }
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(Boolean(this.target) && !this.target.disposed)
         {
            this.target.bonuses.§9=§(this.§8!h§);
            this.§8!h§ = new §]$q§(§?"D§);
            _loc2_ = 0;
            _loc3_ = int(§>$9§.length);
            while(_loc2_ < _loc3_)
            {
               this.§&$l§[_loc2_] -= this.§]@§[_loc2_];
               if(this.§&$l§[_loc2_] > 0)
               {
                  this.§8!h§.§3%<§(new §@"I§(§>$9§[_loc2_],-this.§&$l§[_loc2_]));
               }
               _loc2_++;
            }
            this.target.bonuses.§]!X§(this.§8!h§);
         }
      }
   }
}

