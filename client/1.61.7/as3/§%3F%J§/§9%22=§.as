package §?%J§
{
   import § &5§.§0&$§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"$+§.§^$`§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#",§.ReturnFriendRequestMenu;
   import §#",§.ReturnFriendRewardMenu;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%#u§.§8"F§;
   import §%#u§.§9"g§;
   import §%#u§.§@"c§;
   import §%E§.§5%C§;
   import §%E§.§<#l§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§>"4§;
   import §&#h§.§!#x§;
   import §&$N§.§7!e§;
   import §&%X§.§47§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§2!x§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!Y§.§!$%§;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.NewUnitEvent;
   import §2!-§.NextTurnEvent;
   import §2"L§.§^$y§;
   import §2#H§.§>#M§;
   import §2#V§.§-#U§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §3%J§.SpecialDealWindow;
   import §4!x§.§@& §;
   import §4B§.§=%8§;
   import §6%2§.§<<§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §<$2§.§<%>§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?"[§.*;
   import §?#g§.Race;
   import §?$K§.§=z§;
   import §?$K§.§`""§;
   import §?o§.§?!x§;
   import §@!N§.§4"0§;
   import §@!i§.§1""§;
   import §@!i§.§<#&§;
   import §@$§.§6$[§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §]$&§.§2&2§;
   import §]7§.§0'§;
   import §^!]§.TeleportEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`v§.§2&H§;
   import com.greensock.loading.*;
   import config.§5%T§;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§2!7§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §9"=§ extends §-"o§
   {
      
      public static const §>#P§:uint = 1;
      
      private static const §1#F§:§&$2§ = new §&$2§(70);
      
      private static const §0O§:§&$2§ = new §&$2§(1200);
      
      private static const §;"F§:§&$2§ = new §&$2§(32);
      
      private static const §%"[§:int = 30;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §`#a§:Number = 3 * Math.PI / 2;
      
      private var §"!<§:Vector.<§?"&§> = new Vector.<§?"&§>();
      
      private var bosses:Vector.<§+%]§> = new Vector.<§+%]§>();
      
      private var §7"F§:Vector.<§7!e§> = new Vector.<§7!e§>();
      
      private var §]!n§:§5$n§;
      
      private var §=#s§:§&$2§;
      
      public function §9"=§(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = 0;
         this.§]!n§ = §5$n§.§<#=§("MainElectricHarpoonTip",0,§<H§.§-#C§ * 2,§<H§.§-#C§ + 4);
         _loc4_ = uint(5 + 1.5 * param2);
         this.§=#s§ = new §&$2§(_loc4_ * 2);
         var _loc5_:UserProfile = UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_MANIAC_1"),_loc4_,Race.§"$H§,110 + 6 * param2 + 7 * param2 * param3,_loc4_ * 1,_loc4_ * 0.8,§,$O§.§0#'§,0,§5%T§.§`$K§);
         var _loc6_:UserProfile = UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_MANIAC_2"),_loc4_,Race.§"$H§,80 + 5 * param2 + 8 * param2 * param3,_loc4_ * 0.7,_loc4_ * 1,§,$O§.§0#'§,0,§5%T§.§`$K§);
         var _loc7_:Vector.<§-!`§> = new Vector.<§-!`§>();
         if(§^i§)
         {
            _loc7_.push(new §-!`§(§0$N§.BOSS_MANIACS_NAME,[_loc5_,_loc6_]));
         }
         else
         {
            _loc7_.push(new §-!`§(§0$N§.§%! §("BOT_NAME_MANIAC_1"),[_loc5_]));
            _loc7_.push(new §-!`§(§0$N§.§%! §("BOT_NAME_MANIAC_2"),[_loc6_]));
         }
         return _loc7_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc5_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>();
         if(§^i§)
         {
            _loc2_ = param1[0].§1!n§();
         }
         else
         {
            _loc2_.push(param1[0].§1!n§()[0]);
            _loc2_.push(param1[1].§1!n§()[0]);
         }
         var _loc3_:Boolean = §<#A§();
         var _loc4_:uint = 0;
         while(_loc4_ < 2)
         {
            _loc5_ = _loc2_[_loc4_];
            _loc5_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE,0.9),new §>%Q§(§+%z§.§!`§,0.6),new §>%Q§(§+%z§.§4"k§,0.6),new §>%Q§(§+%z§.SHOTGUN,0.5),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.PARASITE,0.4)]);
            if(!§^i§)
            {
               if(§^"8§)
               {
                  _loc5_.aiArsenal.subtractWeapons([§+%z§.§"!S§]);
                  _loc5_.buffs.place(new §`""§());
               }
               else
               {
                  §-#M§.§&"r§(_loc5_);
               }
            }
            if(_loc3_)
            {
               _loc5_.aiArsenal.subtractWeapons([§+%z§.SNIPER_RIFLE,§+%z§.SNIPER_RIFLE_UPG_1,§+%z§.SNIPER_RIFLE_UPG_2A,§+%z§.SNIPER_RIFLE_UPG_2B,§+%z§.§!`§,§+%z§.§4"k§,§+%z§.SHOTGUN,§+%z§.PARASITE]);
               _loc5_.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.9),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.6),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.6),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.5),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,0.5),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.4,2),new §>%Q§(§+%z§.§,!_§,0.5,2),new §>%Q§(§+%z§.CANNON_UPG_3A,0.5),new §>%Q§(§+%z§.§'&<§,0.5)],uint.MAX_VALUE);
            }
            this.bosses[_loc4_] = _loc5_;
            this.§"!<§.push(new §?"&§());
            _loc4_++;
         }
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§+%]§ = null;
         var _loc7_:§+%]§ = null;
         var _loc8_:Point = null;
         var _loc10_:§+%]§ = null;
         var _loc11_:Vector.<§+%]§> = null;
         var _loc12_:§+%]§ = null;
         var _loc13_:int = 0;
         var _loc14_:§7!e§ = null;
         super.§ "a§(param1,param2);
         if(!this.§]#Z§())
         {
            return;
         }
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc9_:Vector.<§+%]§> = param2.squad.§1!n§();
         for each(_loc10_ in _loc9_)
         {
            _loc11_ = §4"m§.§6"M§(_loc10_);
            for each(_loc12_ in _loc11_)
            {
               if(_loc12_ != _loc7_)
               {
                  _loc5_ = §-q§.distance(_loc10_.x,_loc10_.y,_loc12_.x,_loc12_.y);
                  if(_loc5_ > §1#F§.value && _loc5_ < §0O§.value && _loc5_ < _loc3_)
                  {
                     _loc4_ = §-q§.§'x§(_loc10_.x,_loc10_.y,_loc12_.x,_loc12_.y);
                     _loc8_ = §-q§.§2!B§(32,_loc4_);
                     if(!§>#9§.point(_loc10_.x + _loc8_.x,_loc10_.y + _loc8_.y))
                     {
                        _loc3_ = _loc5_;
                        _loc6_ = _loc12_;
                     }
                  }
               }
            }
            if(_loc6_)
            {
               _loc4_ = §-q§.§'x§(_loc10_.x,_loc10_.y,_loc6_.x,_loc6_.y);
               _loc13_ = Math.abs(_loc4_) > PI_HALF && Math.abs(_loc4_) < §`#a§ ? §+%]§.LEFT : §+%]§.RIGHT;
               _loc10_.turn(_loc13_);
               _loc14_ = new §7!e§(_loc10_,this.§]!n§,_loc4_,§%"[§,§0O§.value);
               _loc14_.addEventListener(§0%v§.DISPOSED,this.§4%%§);
               _loc14_.addEventListener(§7%K§.NAME,this.§ %G§);
               this.§7"F§.push(_loc14_);
               _loc7_ = _loc6_;
               _loc6_ = null;
               _loc3_ = Number.MAX_VALUE;
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(!§4"m§.§;#l§())
         {
            return;
         }
         this.§?$B§();
         var _loc2_:uint = 0;
         while(_loc2_ < this.bosses.length)
         {
            this.§"!<§[_loc2_].value = false;
            _loc2_++;
         }
      }
      
      public function §4%%§(param1:Event) : void
      {
         var _loc2_:§7!e§ = §7!e§(param1.currentTarget);
         _loc2_.removeEventListener(§0%v§.DISPOSED,this.§4%%§);
         _loc2_.removeEventListener(§7%K§.NAME,this.§ %G§);
         this.§7"F§.splice(this.§7"F§.indexOf(_loc2_),1);
         this.§?$B§();
      }
      
      private function §?$B§() : void
      {
         var _loc2_:§?"&§ = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         if(!this.§]#Z§())
         {
            return;
         }
         var _loc1_:uint = 0;
         while(_loc1_ < this.bosses.length)
         {
            _loc2_ = this.§"!<§[_loc1_];
            _loc3_ = this.bosses[_loc1_];
            if(!_loc3_.disposed && !_loc2_.value)
            {
               _loc4_ = §<H§.§5"]§(_loc3_.x,_loc3_.y,§1#F§.value);
               for each(_loc5_ in _loc4_)
               {
                  if(_loc5_ != _loc3_ && _loc5_.squad.getTeamId() != _loc3_.squad.getTeamId())
                  {
                     §-#M§.§<$$§(_loc3_.x,_loc3_.y,_loc5_,this.§=#s§.value,§;"F§.value);
                     _loc2_.value = true;
                  }
               }
               if(_loc2_.value)
               {
                  §1"-§.explode(§;n§.§6#B§,_loc3_.x,_loc3_.y,§1#F§.value);
               }
            }
            _loc1_++;
         }
      }
      
      private function §]#Z§() : Boolean
      {
         if(currentUnit.disposed)
         {
            return false;
         }
         if(this.bosses.indexOf(currentUnit) == -1)
         {
            return false;
         }
         return true;
      }
      
      private function § %G§(param1:§7%K§) : void
      {
         dispatchEvent(new §7%K§(§>#P§));
      }
      
      public function getManiacs() : Vector.<§+%]§>
      {
         return this.bosses;
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(!param1.unit.disposed && (§^i§ ? Boolean(param1.unit.squad.getNumber() == this.bosses[0].squad.getNumber()) : Boolean(param1.unit.squad.getTeamId() == this.bosses[0].squad.getTeamId())))
         {
            this.bosses.push(param1.unit);
            this.§"!<§.push(new §?"&§());
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:§7!e§ = null;
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         this.bosses.length = 0;
         for each(_loc1_ in this.§7"F§)
         {
            if(_loc1_.hasEventListener(§0%v§.DISPOSED))
            {
               _loc1_.removeEventListener(§0%v§.DISPOSED,this.§4%%§);
            }
            if(_loc1_.hasEventListener(§7%K§.NAME))
            {
               _loc1_.removeEventListener(§7%K§.NAME,this.§ %G§);
            }
         }
         this.§7"F§.length = 0;
      }
   }
}

