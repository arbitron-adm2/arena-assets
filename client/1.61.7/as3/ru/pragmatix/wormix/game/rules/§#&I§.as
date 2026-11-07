package ru.pragmatix.wormix.game.rules
{
   import § #k§.*;
   import § #m§.§;#^§;
   import § $q§.BagMenu;
   import § &5§.§0&$§;
   import §!K§.§&#Q§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.*;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§,#;§;
   import §&#h§.§-"F§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,%$§.§'§;
   import §-"N§.§"k§;
   import §-"N§.§8%0§;
   import §-%B§.*;
   import §-&5§.*;
   import §0!§.§9"u§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §0&F§.§[!F§;
   import §1#0§.§;4§;
   import §1#p§.§"Z§;
   import §1#p§.§=$G§;
   import §2!-§.DamageEvent;
   import §2#W§.PvpChestBox;
   import §3#T§.§;#Q§;
   import §4!K§.§^%A§;
   import §4#`§.*;
   import §4'§.§`"q§;
   import §5!,§.§?!P§;
   import §5!b§.§8#W§;
   import §5"J§.§ #Q§;
   import §5"J§.§'& §;
   import §5"J§.§7@§;
   import §5"J§.§8s§;
   import §5"J§.§=%s§;
   import §5"J§.§@5§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §9%W§.§!"G§;
   import §9z§.§>"d§;
   import §<!W§.§7!L§;
   import §<!W§.§;#A§;
   import §<!W§.§?#L§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=$#§.§1!$§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>"l§.§3!z§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@!N§.§2"e§;
   import §@!i§.§5%8§;
   import §@!i§.§;%v§;
   import §@!i§.§<#&§;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[" §.§ #a§;
   import §[" §.§3$y§;
   import §[" §.§^"c§;
   import §[%§.*;
   import §]#[§.§"!I§;
   import §^"<§.§+%E§;
   import §^"I§.§9"2§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import §`$T§.§"&&§;
   import §`$T§.§[!S§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.ConnectIcon;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§4W§;
   import ru.pragmatix.wormix.gui.window.WeaponTipsPanel;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.response.treasury.DonateClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §#&I§ extends §2$H§
   {
      
      protected var data:§9"2§;
      
      protected var §7"Z§:Boolean;
      
      private var §1%u§:§'§ = new §'§();
      
      private var wager:§<#&§;
      
      public function §#&I§(param1:§]$d§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         super(param1);
         this.§7"Z§ = param1.wager && param1.wager.id != 0 && (param1.battleType == §&$a§.§#"g§ || param1.battleType == §&$a§.§^#f§) && param1.wager.id != §-"P§.§="%§ && param1.wager.id != §-"P§.§5#4§;
         if(this.§7"Z§)
         {
            this.wager = param1.wager;
         }
         if(param1.§@%&§())
         {
            this.data = new §'& §(param1.mapId);
            randomWeapons = true;
         }
         else if(param1.§+#<§())
         {
            this.data = new §=%s§(§^%A§.TYPE_RECT,param1.mapId);
         }
         else if(param1.§,$,§())
         {
            this.data = new §8s§(param1.mapId);
         }
         else if(Boolean(param1.wager) && param1.§<",§())
         {
            this.data = param1.wager.§7&&§.id == PvpBattleType.FRIEND_PVP.id ? new §[!S§(param1.mapId) : new §"&&§(param1.mapId);
            if(param1.wager.id != §-"P§.§="%§)
            {
               param1.scenario = this.data;
            }
         }
         else if(Boolean(param1.wager) && param1.wager.id == §-"P§.§"!0§)
         {
            this.data = new §@5§(§^%A§.TYPE_CIRCLE,param1.mapId);
         }
         else if(param1.wager == §<#&§.§[i§)
         {
            _loc2_ = § "^§.getValue(param1.options,§ "^§.§6!R§);
            _loc3_ = § "^§.getValue(param1.options,§ "^§.DAMAGE_ZONE);
            if(_loc2_ && _loc3_)
            {
               this.data = new § #Q§(§^%A§.TYPE_RECT,param1.mapId);
            }
            else if(_loc2_)
            {
               this.data = new §'& §(param1.mapId);
            }
            else if(_loc3_)
            {
               this.data = new §@5§(§^%A§.TYPE_RECT,param1.mapId);
            }
            if(_loc2_)
            {
               randomWeapons = true;
            }
         }
         if(!this.data)
         {
            this.data = new §9"2§(param1.mapId);
         }
         this.§1%u§.§'#C§(param1.mapId);
      }
      
      private static function §>#s§(param1:§<#&§) : §6%b§
      {
         var _loc2_:§]$d§ = §8"%§.§?!W§.§^!U§();
         if(_loc2_.§"u§())
         {
            return _loc2_.wager.§7&&§.id == PvpBattleType.PVE_FRIEND.id ? new §6%b§(§1!$§.§!"1§,§1!$§.NONE,§1!$§.§%%-§,§1!$§.§%%-§) : new §6%b§(§1!$§.§!"1§,§1!$§.§%%-§,§1!$§.NONE,§1!$§.§%%-§);
         }
         if(param1.§7&&§ == PvpBattleType.WAGER_PVP_2X2)
         {
            return new §6%b§(§1!$§.§!"1§,§1!$§.§%%-§,§1!$§.§%%-§,§1!$§.§%%-§);
         }
         if(param1.id == §-"P§.§,%@§ || param1.id == §-"P§.§"!0§)
         {
            return new §6%b§(§1!$§.§!"1§,§1!$§.NONE,§1!$§.NONE,§1!$§.§%%-§,true);
         }
         return new §6%b§(§1!$§.§!"1§,§1!$§.§%%-§,§1!$§.NONE,§1!$§.§%%-§,true);
      }
      
      override public function §2%[§(param1:§4$z§) : void
      {
         this.data.clear();
         §8"%§.§?!W§.§7%@§.increment(§;4§.WAGERS_EARNED,param1.money);
      }
      
      override public function §37§(param1:§<$Z§, param2:§3$z§) : §4$z§
      {
         var _loc4_:§]$;§ = null;
         var _loc5_:§]$d§ = null;
         var _loc3_:§4$z§ = super.§37§(param1,param2);
         if(this.§7"Z§)
         {
            _loc4_ = §8"%§.§?!W§.§4"m§;
            _loc5_ = §8"%§.§?!W§.§^!U§();
            if(!_loc5_.§"u§())
            {
               _loc3_.§`&>§ = _loc4_.§@!k§();
               _loc3_.money = §;%v§.§?2§(param1,this.wager);
               _loc3_.§;% § = §;%v§.§9%V§(param1,this.wager,_loc4_.§+"T§());
               if(this.wager.id != §-"P§.§,%@§ && this.wager.id != §-"P§.MERCENARIES_DUEL)
               {
                  if(param1 == §<$Z§.§+%I§)
                  {
                     _loc3_.rankPoints = _loc5_.victoryRankPoints;
                     _loc3_.rating = _loc5_.victoryRating;
                  }
                  else if(param1 == §<$Z§.§!M§)
                  {
                     _loc3_.rankPoints = _loc5_.defeatRankPoints;
                     _loc3_.rating = _loc5_.defeatRating;
                  }
                  else if(param1 == §<$Z§.§7!i§)
                  {
                     _loc3_.rankPoints = _loc5_.drawRankPoints;
                  }
               }
            }
            if(param1 == §<$Z§.§+%I§)
            {
               if(_loc5_.§,$,§())
               {
                  _loc3_.§;% § = §,#;§.§8=§(_loc4_.§+%J§()).bonus;
               }
               if(§8"%§.§%w§.§;H§() && this.wager.value > 0)
               {
                  §8"%§.§%w§.§3!n§();
                  _loc3_.§;% § += §;%v§.§2C§;
                  _loc3_.exp += §;%v§.§=#`§;
               }
               if(this.wager.experience > 0)
               {
                  _loc3_.exp = this.wager.experience;
               }
            }
         }
         return _loc3_;
      }
      
      override public function §5$?§() : §]$;§
      {
         var _loc1_:§?!d§ = null;
         var _loc3_:Vector.<int> = null;
         var _loc4_:int = 0;
         var _loc5_:§"Z§ = null;
         var _loc6_:§;#X§ = null;
         §#"^§(§=$G§.§=q§,this.data.§;#6§());
         this.§1%u§.§3"C§(squads);
         _loc1_ = this.§,$j§();
         var _loc2_:§]$;§ = new §]$;§(squads,§1#h§,_loc1_);
         if(_loc1_.§2%L§ && Boolean(this.wager))
         {
            var _temp_3:* = new <int>[§-"P§.§"#p§,§-"P§.§>!x§,§-"P§.§'$L§,§-"P§.§,$^§,§-"P§.§"!0§];
            _loc3_ = new <int>[§-"P§.§"#p§,§-"P§.§>!x§,§-"P§.§'$L§,§-"P§.§,$^§,§-"P§.§"!0§];
            if(_loc3_.indexOf(this.wager.id) > -1)
            {
               _loc4_ = §#$R§.§,p§(this.wager.id,Application.userProfile.§7$F§().length);
               for each(_loc5_ in squads)
               {
                  _loc6_ = _loc5_.§?"#§().getBattleBackpack();
                  _loc6_.§"x§(_loc4_);
               }
            }
         }
         this.data.activate();
         this.data.§8%r§();
         return _loc2_;
      }
      
      override public function §6$y§(param1:§]$d§, param2:§4$z§) : §"k§
      {
         return new §8%0§(param1,param2);
      }
      
      private function §,$j§() : §?!d§
      {
         var _loc2_:§"Z§ = null;
         var _loc3_:§'"-§ = null;
         var _loc1_:§?!d§ = §?!d§.§!$<§(this.§7"Z§);
         if(this.wager)
         {
            _loc1_.chatSettings = §>#s§(this.wager);
            if(this.wager.id == §-"P§.MERCENARIES_DUEL)
            {
               for each(_loc2_ in squads)
               {
                  _loc3_ = _loc2_.§?"#§().§3%^§();
                  _loc3_.§%!§(§@$l§.§`!k§(_loc3_,false));
               }
            }
            if(this.wager.id == §-"P§.§,%@§ || this.wager.id == §-"P§.§"!0§)
            {
               _loc1_.§-%-§ = false;
               _loc1_.§?$p§ = true;
               _loc1_.§["%§ = true;
            }
         }
         _loc1_.§=#%§ = randomWeapons ? §7@§.§%"3§ : new Vector.<WeaponStructure>(0);
         _loc1_.§!"3§ = Boolean(this.wager) && this.wager.id != §-"P§.§,%@§;
         this.data.§1%C§(_loc1_);
         return _loc1_;
      }
   }
}

