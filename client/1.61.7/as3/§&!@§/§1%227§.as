package §&!@§
{
   import § $q§.§-%f§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §&#h§.§5f§;
   import §&&6§.*;
   import §+$=§.*;
   import §-%B§.*;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§>&&§;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §2!-§.DamageEvent;
   import §2#W§.PvpChestBox;
   import §2#i§.§+%z§;
   import §2#s§.§7"N§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §<!W§.§;#A§;
   import §<"?§.§6"d§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §?$7§.§+#N§;
   import §?%J§.§7"h§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[%§.*;
   import §^!"§.§^$F§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.ui.Mouse;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class §1"7§ extends §6"d§
   {
      
      private static const §+=§:int = 2;
      
      public function §1"7§()
      {
         super(65);
      }
      
      override public function getId() : int
      {
         return §+#N§.§]!j§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §7"h§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[§#$J§(1991,1153),§#$J§(1300,1097),§#$J§(666,823),§#$J§(2337,728)],[§#$J§(1389,621)],[§#$J§(1991,609)]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§0%v§.§&!D§,this.§?$u§);
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         var _loc2_:§2R§ = §]%!§(BossAchieves.KING_DEAD_KILL_IN_ONE_TURN);
         if(_loc2_.available && _loc2_.count == 1)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.victim.disposed)
         {
            _loc2_ = §]%!§(BossAchieves.KING_DEAD_KILL_IN_ONE_TURN);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,§+=§);
            }
         }
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.code == BossAchieves.KING_DEAD_DONT_LET_RES_FIVE_TIMES)
         {
            _loc2_ = §]%!§(BossAchieves.KING_DEAD_DONT_LET_RES_FIVE_TIMES);
            if(_loc2_.available)
            {
               _loc2_.§#"!§();
               §5X§(_loc2_);
            }
         }
         else if(param1.code == BossAchieves.KING_DEAD_LET_SPAWN_10_ZOMBIES)
         {
            _loc2_ = §]%!§(BossAchieves.KING_DEAD_LET_SPAWN_10_ZOMBIES);
            if(_loc2_.available)
            {
               _loc2_.completed = true;
               §`#t§(_loc2_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.KING_DEAD_DONT_LET_RES_FIVE_TIMES).§,%,§();
      }
   }
}

