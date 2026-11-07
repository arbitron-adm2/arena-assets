package §=1§
{
   import § !P§.*;
   import §"%H§.§'%u§;
   import §#k§.*;
   import §%#u§.§`"_§;
   import §&"c§.§5$n§;
   import §&&6§.§`!m§;
   import §-%B§.§-"o§;
   import §0&F§.§0$_§;
   import §1!J§.§@#%§;
   import §2"L§.§,'§;
   import §65§.§5#A§;
   import §<"?§.§@&#§;
   import §<%E§.§0#G§;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class ArcticWarrior extends §@&#§
   {
      
      public function ArcticWarrior()
      {
         super(114);
         resource = new §@#%§("arcticwarrior.swf");
      }
      
      override public function getId() : int
      {
         return §+#N§.§0"]§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §`!m§()];
      }
      
      override protected function §2!9§() : void
      {
         var _loc1_:§,'§ = null;
         super.§2!9§();
         _loc1_ = new §,'§(§8"%§.§?!W§.§^!U§().battleId ^ 0x8F);
         var _loc2_:Array = §""L§.§6$6§([mapRecord.§8$2§[2],mapRecord.§8$2§[6],mapRecord.§?$&§[2]],_loc1_);
         var _loc3_:Array = §""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[3],mapRecord.§8$2§[1],mapRecord.§8$2§[5]],_loc1_);
         §5"N§ = [[_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]],[mapRecord.§8$2§[4]],[_loc2_[0],_loc2_[1],_loc2_[2]]];
      }
   }
}

