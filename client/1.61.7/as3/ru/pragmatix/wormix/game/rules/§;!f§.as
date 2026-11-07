package ru.pragmatix.wormix.game.rules
{
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § $q§.*;
   import § &5§.§0&$§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §##j§.§!%&§;
   import §##j§.§'"%§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-"N§.§"k§;
   import §-"N§.§#%g§;
   import §-"N§.§'"T§;
   import §-"N§.§+#R§;
   import §-"N§.§?%8§;
   import §-%B§.*;
   import §-&5§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%j§.*;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.§"Z§;
   import §2!-§.UnitKilledEvent;
   import §2#i§.§+%z§;
   import §2o§.§]#@§;
   import §4#`§.*;
   import §4$b§.§2m§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §8#<§.§!#^§;
   import §8$Z§.§9!&§;
   import §<"?§.§6"d§;
   import §<"?§.§6$c§;
   import §<"?§.§@&#§;
   import §<"L§.*;
   import §<$q§.§?!d§;
   import §<%E§.§%#z§;
   import §<%c§.§>!^§;
   import §<%c§.§]"C§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=&!§.§ "^§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §=;§.§>%>§;
   import §>"l§.§?$O§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§8%6§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §]^§.§-$T§;
   import §^"<§.§+%E§;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§#"U§;
   import com.greensock.data.TweenLiteVars;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import config.§#!"§;
   import flash.display.AVM1Movie;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   use namespace gestouch_internal;
   
   public class §;!f§ implements §1#>§
   {
      
      private var data:§>!^§;
      
      private var §8y§:Boolean;
      
      private var §>$'§:Boolean;
      
      private var missionIds:Array;
      
      private var profiles:Vector.<UserProfile>;
      
      private var §1#h§:uint;
      
      private var §6$T§:§1%z§;
      
      private var §;!E§:Vector.<§`%g§>;
      
      private var §2$c§:Vector.<§!%&§>;
      
      private var §[!,§:Vector.<int>;
      
      private var §2%@§:Boolean;
      
      public function §;!f§(param1:§]$d§)
      {
         var _loc2_:int = 0;
         var _loc3_:§8"e§ = null;
         var _loc4_:§8%6§ = null;
         var _loc5_:§-$T§ = null;
         var _loc6_:int = 0;
         super();
         this.data = param1.scenario;
         this.missionIds = [].concat(param1.missionIds);
         this.§1#h§ = param1.§^!W§();
         this.profiles = param1.getProfiles();
         if(param1.§>$'§())
         {
            this.§>$'§ = true;
            this.§6$T§ = new §1%z§([]);
         }
         else if(param1.§]_§())
         {
            this.§8y§ = true;
            _loc2_ = §6J§.getInstance().§`"o§(param1.mapId,param1.missionIds);
            if(_loc2_ != -1)
            {
               _loc3_ = §8"e§.§["V§(_loc2_);
               param1.§^"g§ = _loc3_;
               this.§6$T§ = _loc3_.§&%s§();
            }
            else
            {
               param1.§^"g§ = §8"e§.§?=§;
               this.§6$T§ = new §1%z§([]);
            }
         }
         else
         {
            _loc4_ = §6%k§.§7%q§(this.missionIds[0]);
            this.§8y§ = §6%k§.§8y§(_loc4_.getId());
            this.§2%@§ = this.§8y§ && _loc4_.getId() == §6%k§.§>!+§(_loc4_.getId()).§?U§() + 1;
            if(this.§8y§)
            {
               _loc5_ = §-$T§(_loc4_);
               if(this.§2%@§)
               {
                  this.§6$T§ = _loc5_.§3"c§();
               }
               else if(§8"%§.§%w§.§7#G§())
               {
                  this.§6$T§ = _loc5_.§2!T§();
               }
               else
               {
                  this.§6$T§ = _loc5_.§+%`§();
               }
            }
            else
            {
               this.§6$T§ = _loc4_.§2!T§();
            }
         }
         this.§2$c§ = new Vector.<§!%&§>(0);
         this.§[!,§ = new Vector.<int>(0);
         if(this.§8y§)
         {
            if(Boolean(param1.reagentsForBattle) && param1.reagentsForBattle.length > 0)
            {
               for each(_loc6_ in param1.reagentsForBattle)
               {
                  this.§2$c§.push(new §!%&§(_loc6_,1));
                  this.§[!,§.push(_loc6_);
               }
            }
         }
         this.§;!E§ = this.§6$T§.getWeapons();
      }
      
      public function §8%r§() : void
      {
         §8"%§.§[%h§.§8!M§();
      }
      
      public function §2%[§(param1:§4$z§) : void
      {
         this.data.clear();
      }
      
      public function §37§(param1:§<$Z§, param2:§3$z§) : §4$z§
      {
         var _loc4_:int = 0;
         var _loc5_:§6"d§ = null;
         var _loc3_:§4$z§ = §6#H§.§,$g§(param1,param2);
         if(Boolean(this.§6$T§) && (_loc3_.result == §<$Z§.§+%I§ || this.§>$'§))
         {
            _loc3_.exp = this.§6$T§.§[!s§(true);
            _loc3_.money = this.§6$T§.§#!G§();
            _loc3_.realMoney = this.§6$T§.§@$D§();
            _loc3_.§1"4§ = this.§6$T§.§2!O§();
            _loc3_.reagents = this.§8y§ ? this.§2$c§ : this.§6$T§.§]#x§();
            _loc3_.§`&>§ = this.§8y§ ? this.§[!,§ : this.§6$T§.§2%a§();
            _loc3_.weapons = this.§;!E§;
            if(this.§8y§ || this.data is §]"C§)
            {
               §2$^§.§;%K§(_loc3_);
            }
            if(this.§8y§ && this.§2%@§)
            {
               _loc4_ = §6%k§.§7%q§(this.missionIds[0]).getId();
               if(this.data is §6"d§ && _loc4_ == §6&'§.getInstance().§^&§ + 1)
               {
                  §6&'§.getInstance().§^&§ = _loc4_;
               }
               else if(this.data is §@&#§ && _loc4_ == §!#3§.getInstance().§^&§ + 1)
               {
                  §!#3§.getInstance().§^&§ = _loc4_;
               }
            }
            if(this.§8y§ && (this.data is §6"d§ || this.data is §@&#§) && §8"%§.§%w§.§7#G§())
            {
               §8"%§.§%w§.§-!E§();
            }
         }
         if(this.data is §6"d§)
         {
            _loc5_ = §6"d§(this.data);
            _loc3_.totalDamageToBoss = _loc5_.§%J§;
            _loc3_.totalDamageToPlayer = _loc5_.§`"W§;
            _loc3_.totalUsedItems = _loc5_.§&<§;
         }
         return _loc3_;
      }
      
      public function §5$?§() : §]$;§
      {
         var _loc1_:§?!d§ = this.data.§,$j§();
         if(this.profiles.length > 1)
         {
            §?!d§.§5$Q§(_loc1_);
         }
         var _loc2_:§]$;§ = new §]$;§(this.data.§!&;§(this.profiles,this.§1#h§),this.§1#h§,_loc1_);
         this.data.activate();
         this.data.§8%r§();
         if(this.data is §6$c§)
         {
            §6$c§(this.data).activateAchievs(this.missionIds[0],this.§2%@§);
         }
         return _loc2_;
      }
      
      public function §6$y§(param1:§]$d§, param2:§4$z§) : §"k§
      {
         if(this.§>$'§)
         {
            return new §'"T§(param1,param2);
         }
         return this.§8y§ ? new §?%8§(param1,param2) : new §#%g§(param1,param2);
      }
      
      public function isLearning() : Boolean
      {
         return this.data is §]"C§;
      }
      
      public function §^%g§(param1:Array) : void
      {
         this.§6$T§ = §1%z§.§!!Z§(param1);
      }
      
      public function §@$0§() : §1%z§
      {
         return this.§6$T§;
      }
   }
}

