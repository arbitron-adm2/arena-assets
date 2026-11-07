package §<!W§
{
   import § !P§.*;
   import § #k§.*;
   import §"!C§.§3#n§;
   import §#%!§.§ §;
   import §%"1§.§@%;§;
   import §&!?§.§"_§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§]!&§;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §65§.§%%o§;
   import §7$t§.§&!e§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.*;
   import api.com.odnoklassniki.net.OdnoklassnikiRequest;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §=!6§ extends §%%o§
   {
      
      public static const NAME:String = "REVENGE_BUFF";
      
      private static const §9%Q§:§&$2§ = new §&$2§(30);
      
      private var §+$,§:int = 0;
      
      private var §#& §:int = 0;
      
      private var §8#^§:Boolean;
      
      private var §;#g§:Boolean;
      
      private var §&&2§:Boolean;
      
      private var §[#[§:Boolean;
      
      public function §=!6§(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         super(NAME,-1,§9%Q§.value);
         this.§8#^§ = param1;
         this.§[#[§ = param2;
         this.§&&2§ = param3;
         this.§;#g§ = param4;
      }
      
      override protected function §5#F§() : void
      {
         if((unit.record.getRace().equals(Race.§"$H§.§]!D§()) || this.§;#g§) && (!unit.isRevived() || this.§8#^§))
         {
            unit.addEventListener(§0%v§.§^$3§,this.§`#z§);
            unit.addEventListener(§0%v§.§&!D§,this.§3h§);
            unit.addEventListener(§0%v§.DISPOSED,this.§<$%§,false,§[!F§.§[$m§);
         }
      }
      
      private function §`#z§(param1:Event) : void
      {
         this.§+$,§ = unit ? unit.bonuses.getStatValue(Bonus.POISONING_ADDITION) : 0;
         this.§#& § = unit ? unit.bonuses.getStatValue(Bonus.REVENGE_DAMAGE) : 0;
      }
      
      private function §3h§(param1:DamageEvent) : void
      {
         this.§+$,§ = unit ? unit.bonuses.getStatValue(Bonus.POISONING_ADDITION) : 0;
         this.§#& § = unit ? unit.bonuses.getStatValue(Bonus.REVENGE_DAMAGE) : 0;
      }
      
      private function §<$%§(param1:Event) : void
      {
         unit.removeEventListener(§0%v§.§^$3§,this.§`#z§);
         unit.removeEventListener(§0%v§.§&!D§,this.§3h§);
         unit.removeEventListener(§0%v§.DISPOSED,this.§<$%§);
         if(!Application.scene.§@$I§.§=%d§() && !unit.§,&&§())
         {
            this.§8]§(§8"%§.§?!W§.§4"m§.activeUnit);
         }
      }
      
      private function §8]§(param1:§+%]§) : void
      {
         var spawnY:int = 0;
         var baseDamage:uint = 0;
         var finalDamage:uint = 0;
         var bolt:§'$V§ = null;
         var target:§+%]§ = param1;
         if(Boolean(target && !target.disposed) && Boolean(target != unit) && target.squad.getTeamId() != unit.squad.getTeamId())
         {
            §@%;§.play(§`!v§.§""^§);
            spawnY = Application.scene.height < unit.y ? int(Application.scene.height) : unit.y;
            baseDamage = value.value == -1 ? (this.§[#[§ ? §]!h§.§9%Q§ : §!%n§.§9%Q§) : uint(value.value);
            finalDamage = baseDamage * (1 + this.§#& § / 100);
            if(this.§[#[§)
            {
               bolt = new §]!h§(unit,unit.x,spawnY,false,target,finalDamage);
            }
            else
            {
               bolt = new §!%n§(unit,unit.x,spawnY,false,target,finalDamage,§!%n§.§[%]§,this.§+$,§);
               if(unit.squad.isLocal())
               {
                  bolt.onHitCallback = function onHitCallback(param1:int):void
                  {
                     if(param1 > 0)
                     {
                        §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§+T§,param1);
                     }
                  };
               }
            }
            bolt.y -= 20;
         }
      }
      
      override protected function §0&"§() : void
      {
         if(unit.hasEventListener(§0%v§.DISPOSED))
         {
            unit.removeEventListener(§0%v§.§^$3§,this.§`#z§);
            unit.removeEventListener(§0%v§.§&!D§,this.§3h§);
            unit.removeEventListener(§0%v§.DISPOSED,this.§<$%§);
         }
      }
      
      public function get §9!T§() : Boolean
      {
         return this.§[#[§;
      }
      
      public function get ignoreRevived() : Boolean
      {
         return this.§8#^§;
      }
      
      public function get isDamaged() : Boolean
      {
         return this.§&&2§;
      }
   }
}

