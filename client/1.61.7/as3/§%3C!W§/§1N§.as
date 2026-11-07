package §<!W§
{
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §+$=§.§1§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2!-§.UnitKilledEvent;
   import §2o§.§]#@§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §65§.§`"C§;
   import §8#<§.§^#O§;
   import §=$#§.§ "V§;
   import §=;§.§>%>§;
   import §?#g§.Race;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.*;
   import api.com.odnoklassniki.net.OdnoklassnikiRequest;
   import com.greensock.TweenLite;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §1N§ extends §`"C§
   {
      
      public static const NAME:String = "REVIVAL_BUFF";
      
      public static const §=!-§:§&$2§ = new §&$2§(6);
      
      public static const §4!'§:§&$2§ = new §&$2§(3);
      
      private var §5!H§:Boolean;
      
      public function §1N§(param1:Boolean = false)
      {
         super(NAME,-1,0);
         this.§5!H§ = param1;
      }
      
      override protected function §5#F§() : void
      {
         var _loc1_:§+%]§ = Boolean(unit) && Boolean(unit.squad) ? unit.squad.§&$;§() : null;
         var _loc2_:Boolean = _loc1_ && _loc1_ != unit && _loc1_.§8!1§ && _loc1_.record.getRace().equals(Race.§"$H§.§]!D§());
         this.activate(_loc2_);
      }
      
      public function activate(param1:Boolean = false) : void
      {
         if(param1 || unit.record.getRace().equals(Race.§"$H§.§]!D§()) && !unit.isRevived())
         {
            unit.addEventListener(§0%v§.UNIT_KILLED,this.§0"0§);
         }
      }
      
      protected function §0"0§(param1:UnitKilledEvent) : void
      {
         var victim:§+%]§;
         var skin:int;
         var au:§+%]§;
         var hpMultiplier:Number;
         var grave:ZombieGrave;
         var e:UnitKilledEvent = param1;
         if(Application.scene.§@$I§.§=%d§())
         {
            return;
         }
         if(!(e.victim is §+%]§))
         {
            return;
         }
         victim = e.victim as §+%]§;
         if(victim.isRevived() || victim.§8o§)
         {
            return;
         }
         skin = unit.record.getRace().equals(Race.§"$H§.§]!D§()) ? unit.record.§5"L§().§7"=§() : 0;
         au = §8"%§.§?!W§.§4"m§.activeUnit;
         hpMultiplier = this.§5!H§ ? §4!'§.value : §=!-§.value;
         if(unit.bonuses.§^#5§(Bonus.REVIVAL_HP))
         {
            hpMultiplier += hpMultiplier * unit.bonuses.getStatValue(Bonus.REVIVAL_HP) / 100;
         }
         grave = new ZombieGrave(victim.record.getRace().graveType,victim.x,victim.y,victim,victim.record.getCharName(),au.record.getLevel(),au.squad,null,hpMultiplier,skin);
         grave.§1$&§();
         grave.setSpeedXY(e.victim.speedX,e.victim.speedY);
         victim.§=%P§();
         if(unit.squad.isLocal() && !unit.§+&,§(victim))
         {
            grave.§7##§ = function callbackOnSpawnRevivedEnemy(param1:§+%]§):void
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§&#U§);
            };
         }
      }
      
      override protected function §0&"§() : void
      {
         unit.removeEventListener(§0%v§.UNIT_KILLED,this.§0"0§);
      }
   }
}

