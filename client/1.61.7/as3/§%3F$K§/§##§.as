package §?$K§
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§<"4§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%$!§.§@!o§;
   import §+$=§.§6#A§;
   import §+%S§.§@x§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,!t§;
   import §4$b§.§2m§;
   import §5#`§.§7%g§;
   import §65§.§=&9§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §7$t§.§^$E§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§-O§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §["3§.*;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetAbandonedFriends;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §##§ extends §=&9§
   {
      
      public static const NAME:String = "DEFENSIVE_ROAR";
      
      public static const DAMAGE:int = 40;
      
      private static const §3$3§:String = "DefensiveRoar";
      
      private static const §4!t§:String = "Roar";
      
      private static const §4%#§:int = 60;
      
      private static const §^#g§:int = 170;
      
      private static const §!#s§:Number = Math.PI / 4;
      
      private static const §0"q§:int = 7;
      
      private static const §7!O§:int = 33;
      
      private static const §=#k§:int = 10;
      
      private static const §;$3§:int = 2;
      
      private var §,%s§:int = 0;
      
      private var §^y§:int = 170;
      
      private var §2$J§:int = 40;
      
      public function §##§(param1:int = -1)
      {
         super(NAME,param1,1);
      }
      
      override protected function §7$d§() : void
      {
         var enemies:Vector.<§&"T§>;
         var hw:int;
         var unitEnemies:Vector.<§+%]§>;
         var movieClip:MovieClip;
         var enemy:§+%]§ = null;
         var targets:Vector.<§&"T§> = null;
         var clip:MovieClip = null;
         var dummy:§&"T§ = null;
         if(!unit.stable)
         {
            return;
         }
         if(§8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            return;
         }
         if(counter.value < this.§,%s§)
         {
            return;
         }
         enemies = new Vector.<§&"T§>(0);
         hw = int(§<H§.§@% §);
         unitEnemies = §8"%§.§?!W§.§4"m§.§6"M§(unit);
         for each(enemy in unitEnemies)
         {
            enemies.push(enemy);
         }
         targets = §<H§.§9#!§(unit.x + hw,unit.y,this.§^y§,Math.PI,§!#s§,enemies);
         targets = targets.concat(§<H§.§9#!§(unit.x - hw,unit.y,this.§^y§,0,§!#s§,enemies));
         if(targets.length == 0)
         {
            return;
         }
         enemy = §+%]§(targets[0]);
         if(§8"%§.§?!W§.§4"m§.§,j§() <= 1 && enemy != §8"%§.§?!W§.§4"m§.activeUnit)
         {
            return;
         }
         unit.turn(unit.x < enemy.x ? §@!o§.RIGHT.value : §@!o§.LEFT.value);
         movieClip = unit.graphics.§6w§(unit.graphics.§6%z§().racePrefix + §4!t§,true);
         if(!movieClip)
         {
            unit.graphics.roar();
         }
         clip = §6#A§.§!&6§(§3$3§);
         §,!t§.§%v§(clip);
         unit.graphics.§5$#§(§2m§.§-w§,clip,0,0);
         dummy = Application.scene.§,$z§();
         §8$a§.§%!E§(clip.totalFrames,function onTotalFrames():void
         {
            dummy.disposed = true;
            if(unit)
            {
               unit.graphics.detachClip(clip,§2m§.§-w§);
            }
            if(clip.totalFrames > 1)
            {
               clip.stop();
            }
            if(clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(clip));
            }
         });
         this.§,%s§ = counter.value + §4%#§;
         §§push(§8$a§);
         §§push(§0"q§);
         with({})
         {
            var _temp_3:* = onPreRoarFrames = function():void
            {
               var _loc3_:Number = NaN;
               if(Application.scene.§@$I§.§=%d§())
               {
                  return;
               }
               if(!unit)
               {
                  return;
               }
               if(!unit.squad.isAi())
               {
                  return;
               }
               if(unit.disposed || enemy.disposed)
               {
                  return;
               }
               var _loc1_:Boolean = §<H§.§5"]§(unit.x,unit.y,§^y§,new <§+%]§>[enemy]).length > 0;
               var _loc2_:Number = §;$3§ - §-q§.distance(unit.x,unit.y,enemy.x,enemy.y) / §^y§;
               if(_loc1_)
               {
                  §'"$§.§]#I§(unit,unit.x,unit.y,enemy,§2$J§ * _loc2_,0,0,false);
                  _loc3_ = §-q§.§'x§(unit.x,unit.y,enemy.x,enemy.y);
                  enemy.§6"O§(_loc3_,§=#k§ * _loc2_);
               }
            };
         }
         §§pop().§%!E§(§§pop(),_temp_3);
         §8$a§.§%!E§(§7!O§,function onRoarFrames():void
         {
            if(Application.scene.§@$I§.§=%d§())
            {
               return;
            }
            if(Boolean(unit) && Boolean(!unit.disposed) && unit.stable)
            {
               unit.§2!W§();
            }
         });
      }
      
      override protected function §5#F§() : void
      {
      }
      
      override protected function §0&"§() : void
      {
      }
      
      public function set radius(param1:int) : void
      {
         this.§^y§ = param1;
      }
      
      public function set damage(param1:int) : void
      {
         this.§2$J§ = param1;
      }
   }
}

