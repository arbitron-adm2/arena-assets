package §9![§
{
   import § !P§.*;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§ G§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+%S§.§;%l§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!§.§8$Y§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2#V§.§-#U§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §6$z§.BonusTrait;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$Z§.*;
   import §9%W§.§&!P§;
   import §;!J§.*;
   import §<!W§.§#&#§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§`%u§;
   import §>!_§.§'!&§;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §`#x§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import vk.*;
   
   public class §#$k§ extends BonusTrait
   {
      
      private static const §'"y§:Number = 0.4;
      
      private var §^!O§:Boolean;
      
      private var §8,§:Boolean = §8"%§.§?!W§.§^!U§().§6"3§();
      
      public function §#$k§()
      {
         super();
      }
      
      public static function §;%$§(param1:§+%]§) : void
      {
         var _loc2_:§#$k§ = null;
         if(!param1.disposed && param1.bonuses.§^#5§(Bonus.§!$=§))
         {
            _loc2_ = param1.bonuses.§'"S§(Bonus.§!$=§) as §#$k§;
            _loc2_.§+#Y§();
         }
      }
      
      override protected function activate(param1:int) : void
      {
         if(this.§8,§)
         {
            return;
         }
         this.§+#Y§();
      }
      
      private function §+#Y§() : void
      {
         if(this.§8,§)
         {
            return;
         }
         if(!this.§^!O§ && !owner.buffs.hasBuff(§3#j§.NAME) && (owner.§="r§ || !owner.bonuses.§^#5§(Bonus.§7I§)))
         {
            this.§^!O§ = true;
            owner.buffs.place(new §3#j§(true));
            owner.addEventListener(§0%v§.§^$3§,this.onSink);
         }
      }
      
      private function onSink(param1:Event) : void
      {
         var _loc3_:§^$E§ = null;
         var _loc4_:§^%%§ = null;
         var _loc5_:int = 0;
         var _loc2_:§`"C§ = owner.buffs.getBuff(§3#j§.NAME);
         if(Boolean(_loc2_) && Boolean(_loc2_ is §;%l§) && §;%l§(_loc2_).activated)
         {
            return;
         }
         if(!owner.disposed && this.§^!O§)
         {
            this.§^!F§();
            _loc3_ = owner.§2u§();
            _loc4_ = owner.§+!b§();
            if(Boolean(_loc3_) && _loc3_.getBonusList().§^#5§(Bonus.§!$=§))
            {
               owner.§,#x§(0);
               if(_loc4_)
               {
                  owner.§;"U§(null);
                  owner.§;"U§(_loc4_);
               }
               this.§`"4§();
            }
            else if(Boolean(_loc4_) && _loc4_.getBonusList().§^#5§(Bonus.§!$=§))
            {
               owner.§;"U§(null);
               if(_loc3_)
               {
                  owner.§,#x§(0);
                  owner.§,#x§(_loc3_.getId());
               }
               this.§`"4§();
            }
            else if(Boolean(owner.§ !5§()) && owner.§ !5§().getBonusList().§^#5§(Bonus.§!$=§))
            {
               if(_loc3_)
               {
                  owner.§,#x§(0);
               }
               else if(_loc4_)
               {
                  owner.§;"U§(null);
               }
               this.§`"4§();
            }
            _loc5_ = int(Math.floor((owner.record.stats.§8+§.value + owner.record.stats.§3$L§.value) * §'"y§));
            §'"$§.§]#I§(owner,owner.x,owner.y,owner,_loc5_,0,0,true,true,null,false,false,false);
         }
      }
      
      private function §`"4§() : void
      {
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !owner.squad.isAi())
         {
            §`%u§.§5$+§(Bonus.§!$=§,owner);
         }
      }
      
      override protected function deactivate(param1:int) : void
      {
         if(this.§8,§)
         {
            return;
         }
         this.§^!F§();
      }
      
      public function §^!F§() : void
      {
         var _loc1_:§`"C§ = owner.buffs.getBuff(§3#j§.NAME);
         if(this.§^!O§)
         {
            this.§^!O§ = false;
            owner.buffs.§6C§(§3#j§.NAME);
            owner.removeEventListener(§0%v§.§^$3§,this.onSink);
         }
      }
   }
}

