package §?%J§
{
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"%H§.§1! §;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&$Y§.§5%]§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.*;
   import §,!f§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0"L§.*;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2!-§.§<%;§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §2#i§.§6§;
   import §2#x§.§]s§;
   import §2B§.§#&E§;
   import §3#T§.AtomBomb;
   import §3#a§.§-!`§;
   import §4!!§.§!%n§;
   import §4!!§.§2&F§;
   import §4&F§.*;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §7$t§.§=?§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%k§.*;
   import §=#g§.*;
   import §=&!§.§<$!§;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §^!"§.§0^§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.treasury.CashMedalsClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §-$n§ extends §-"o§
   {
      
      public static const §5!t§:uint = 1;
      
      public static const §3$[§:uint = 2;
      
      private static const §?%%§:§&$2§ = new §&$2§(20);
      
      private static const §1%c§:§&$2§ = new §&$2§(5);
      
      private var bosses:Vector.<§+%]§>;
      
      private var §!""§:MovieClip;
      
      private var § !H§:§+%]§;
      
      public function §-$n§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("wanderingSoul.swf");
      }
      
      private static function §'&E§(param1:§+%]§) : uint
      {
         return §-q§.§8$G§(§?%%§.value,param1.attributes.hp.§#&"§());
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc5_:Array = [this.§2%+§(Race.§+#T§,1.1,param2,param3),this.§2%+§(Race.§ "w§,1,param2,param3),this.§2%+§(Race.§+&8§,1,param2,param3)];
         _loc4_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_SOUL_1"),[_loc5_[0],_loc5_[1],_loc5_[2]]));
         return _loc4_;
      }
      
      private function §2%+§(param1:Race, param2:Number, param3:uint, param4:uint) : UserProfile
      {
         var _loc5_:uint = 0;
         _loc5_ = uint(param2 * (5 + 1.7 * param3));
         var _loc6_:uint = -30 + 3 * _loc5_ + 5 * _loc5_ * param4;
         var _loc7_:uint = 0.6 * _loc5_;
         var _loc8_:uint = 0.73 * _loc5_;
         return UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_SOUL_1"),_loc5_,param1,_loc6_,_loc7_,_loc8_,§,$O§.DARTH_VADER);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc5_:Vector.<§>%Q§> = null;
         var _loc2_:Vector.<§+%]§> = param1[0].§1!n§();
         var _loc3_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         this.bosses = new Vector.<§+%]§>(0);
         var _loc4_:uint = 0;
         while(_loc4_ < _loc2_.length)
         {
            this.bosses[_loc4_] = _loc2_[_loc4_];
            _loc5_ = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.BAZOOKA_UPG_1,0.3),new §>%Q§(§+%z§.CARPET_BAZOOKA,1),new §>%Q§(§+%z§.MOLOTOV,0.4),new §>%Q§(§+%z§.CANNON,0.1)];
            this.bosses[_loc4_].aiArsenal = new §,%8§(_loc5_);
            if(_loc3_)
            {
               this.bosses[_loc4_].aiArsenal.subtractWeapons([§+%z§.CARPET_BAZOOKA,§+%z§.CARPET_BAZOOKA_UPG_1,§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1]);
               this.bosses[_loc4_].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.5),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.5),new §>%Q§(§+%z§.VILE_PUMPKIN,0.5),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.3,1),new §>%Q§(§+%z§.§;%Z§,0.7),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.3,2)],uint.MAX_VALUE);
            }
            this.bosses[_loc4_].buffs.place(new §3#j§());
            §8$a§.§&!#§(this.bosses[_loc4_],§0%v§.DISPOSED,this.onBossDisposed);
            _loc4_++;
         }
         super.§+$L§(param1);
         this.§!""§ = §6#A§.§!&6§(§1"-§.§&%m§);
         this.§!""§.filters = [new GlowFilter(6736896,1,2,2,2,1)];
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         dispatchEvent(new §7%K§(§3$[§));
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(!§4"m§.§;#l§())
         {
            this.§,o§();
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:§+%]§ = null;
         if(Boolean(!§4"m§.§;#l§()) && Boolean(this.§ !H§) && !this.§ !H§.disposed)
         {
            dispatchEvent(new §7%K§(§5!t§));
            for each(_loc2_ in §4"m§.§="T§(this.§ !H§))
            {
               new §2&F§(this.§ !H§,this.§ !H§.x,this.§ !H§.y,_loc2_,§'&E§(_loc2_));
            }
            new §2&F§(this.§ !H§,this.§ !H§.x,this.§ !H§.y,this.§ !H§,§'&E§(this.§ !H§));
         }
      }
      
      private function §,o§() : void
      {
         var _loc1_:§+%]§ = this.§ !H§;
         this.§@]§(this.§ !H§);
         this.§ !H§ = null;
         var _loc2_:Vector.<§+%]§> = §4"m§.§="T§(this.bosses[0],false,true);
         if(Boolean(_loc1_) && _loc2_.length > 1)
         {
            _loc2_.splice(_loc2_.indexOf(_loc1_),1);
         }
         if(_loc2_.length > 0)
         {
            this.§ !H§ = _loc2_[randomSeed.§,!q§(0,_loc2_.length - 1)];
            this.§ !H§.clip.addChild(this.§!""§);
            this.§ !H§.addEventListener(§0%v§.§&!D§,this.§'$R§);
         }
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = param1.source.owner;
         var _loc3_:§+%]§ = param1.victim as §+%]§;
         for each(_loc4_ in §4"m§.§="T§(_loc3_,true,true))
         {
            if(_loc4_ == _loc2_)
            {
               return;
            }
         }
         if(!_loc2_ || _loc2_.disposed)
         {
            _loc5_ = §4"m§.§6"M§(_loc3_);
            if(_loc5_.length > 0)
            {
               _loc2_ = _loc5_[0];
            }
         }
         if(Boolean(_loc2_) && !_loc2_.disposed)
         {
            new §!%n§(this.§ !H§,this.§ !H§.x,this.§ !H§.y,false,_loc2_,§-q§.§8$G§(§1%c§.value,_loc2_.attributes.hp.§8!R§()),0);
         }
         this.§@]§(this.§ !H§);
         this.§ !H§ = null;
      }
      
      private function §@]§(param1:§+%]§) : void
      {
         if(Boolean(param1) && param1.clip.contains(this.§!""§))
         {
            param1.clip.removeChild(this.§!""§);
            param1.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         this.§!""§ = null;
         this.§ !H§ = null;
         for each(_loc1_ in this.bosses)
         {
            _loc1_.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         }
         this.bosses.length = 0;
      }
   }
}

