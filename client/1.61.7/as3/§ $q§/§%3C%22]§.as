package § $q§
{
   import § !8§.§`!d§;
   import § "%§.§0$[§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §&$Y§.§&!R§;
   import §&&6§.*;
   import §,"v§.§9%d§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §2!-§.DamageEvent;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#H§.§"j§;
   import §2B§.§&!Y§;
   import §3"_§.*;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8$V§.§]!i§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §>%S§.§^!V§;
   import §?$7§.§+l§;
   import §?$7§.§6%k§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@"s§.§#&3§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyUnlockMission;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §<"]§ extends §,#W§
   {
      
      private var §[+§:int;
      
      private var price:uint;
      
      public function §<"]§(param1:int, param2:uint)
      {
         super(§0$N§.TITLE_CONFIRMATION,§0$N§.UNLOCK_BOSS_PANEL_TEXT,§,#W§.§7"d§,null);
         this.§[+§ = param1;
         this.price = param2;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.okAction();
      }
      
      override protected function okAction() : void
      {
         §%%w§.§##$§(BuyUnlockMissionResult,this.§^#"§);
         §%%w§.§,U§(new BuyUnlockMission(this.§[+§));
         if(isShown())
         {
            hide();
         }
         §[&G§.§3$5§.show();
      }
      
      private function §^#"§(param1:§9$v§) : void
      {
         var _loc4_:§+l§ = null;
         var _loc5_:§,#W§ = null;
         §%%w§.§-"j§(BuyUnlockMissionResult,this.§^#"§);
         §[&G§.§3$5§.hide();
         var _loc2_:String = "";
         var _loc3_:Function = null;
         if(BuyUnlockMissionResult(param1.message).result == 0)
         {
            _loc2_ = §0$N§.UNLOCK_BOSS_RESULT_SUCCESS;
            _loc4_ = §6%k§.§>!+§(this.§[+§);
            Application.userProfile.§]!c§(Application.userProfile.§@$D§() - this.price);
            §8"%§.§@1§.increase([§!$L§.§`&0§],[this.price]);
            Application.§5!>§.§8$w§();
            _loc4_.§^&§ = this.§[+§ - 1;
            (§8"%§.§%w§.getArenaMenu().§8N§(§&!Y§.BOSS_TAB_NAME) as §3!V§).§@#H§().update();
         }
         else
         {
            _loc2_ = §0%§.format(§0$N§.UNLOCK_BOSS_RESULT_ERROR,{"code":BuyUnlockMissionResult(param1.message).result});
            _loc5_ = §,#W§.§'!+§(§0$N§.UNLOCK_BOSS_RESULT_TITLE,_loc2_,0);
            _loc5_.show();
         }
      }
   }
}

