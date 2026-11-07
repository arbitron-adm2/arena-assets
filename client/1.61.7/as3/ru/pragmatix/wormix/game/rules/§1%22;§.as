package ru.pragmatix.wormix.game.rules
{
   import § "d§.§,!c§;
   import §!!i§.§@&&§;
   import §##y§.CollisionEvent;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&%7§.§'&2§;
   import §,$J§.§,$O§;
   import §-!U§.§&%j§;
   import §-"N§.§"k§;
   import §-"N§.§,%;§;
   import §-%B§.*;
   import §1#p§.§"Z§;
   import §1#p§.§=$G§;
   import §2"L§.§^$y§;
   import §3#a§.§-!`§;
   import §4!K§.§^%A§;
   import §5!,§.§-§;
   import §5"J§.§ #Q§;
   import §5"J§.§'& §;
   import §5"J§.§@5§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §<$q§.§,%3§;
   import §<$q§.§?!d§;
   import §<%c§.§>!^§;
   import §=&!§.§ "^§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?#g§.Race;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]$&§.§3$%§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import §`$T§.§[!S§;
   import §`%c§.*;
   import config.§5%T§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §1";§ extends §2$H§
   {
      
      protected var data:§>!^§;
      
      public function §1";§(param1:§]$d§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         super(param1);
         if(param1.§9$=§)
         {
            this.data = new §[!S§(param1.mapId);
         }
         else
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
         }
      }
      
      override public function §5$?§() : §]$;§
      {
         var _loc1_:§?!d§ = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:UserProfile = null;
         var _loc7_:int = 0;
         var _loc8_:§"Z§ = null;
         var _loc9_:§;#X§ = null;
         §#"^§(§=$G§.§0<§);
         _loc1_ = §?!d§.§#"N§();
         var _loc2_:§]$;§ = new §]$;§(squads,§1#h§,_loc1_);
         if(§8"%§.§?!W§.§^!U§().§9$=§)
         {
            _loc1_.timer = §,%3§.ROPE_RACE;
         }
         else
         {
            _loc6_ = squads[1].§&!G§();
            _loc6_.§>%q§(Application.userProfile.getBattleBackpack().clone());
         }
         if(Application.instance.§#&7§() && _loc1_.§2%L§)
         {
            _loc7_ = §#$R§.§,p§(§-"P§.§"#p§,Application.userProfile.§7$F§().length);
            for each(_loc8_ in squads)
            {
               _loc9_ = _loc8_.§?"#§().getBattleBackpack();
               _loc9_.§"x§(_loc7_);
            }
         }
         var _loc3_:Vector.<§+%]§> = squads[1].§1!n§();
         var _loc4_:Vector.<§+%]§> = squads[0].§1!n§();
         for each(_loc5_ in _loc3_)
         {
            _loc5_.lastWeapon = _loc4_[0].lastWeapon;
         }
         if(this.data)
         {
            this.data.activate();
            this.data.§8%r§();
         }
         return _loc2_;
      }
      
      override public function §2%[§(param1:§4$z§) : void
      {
         if(this.data)
         {
            this.data.clear();
         }
      }
      
      override public function §37§(param1:§<$Z§, param2:§3$z§) : §4$z§
      {
         return §6#H§.§,$g§(§<$Z§.§+%I§,param2);
      }
      
      override public function §6$y§(param1:§]$d§, param2:§4$z§) : §"k§
      {
         return new §,%;§(param1,param2);
      }
   }
}

