package ru.pragmatix.wormix.game.rules
{
   import § $q§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §#"V§.§6"%§;
   import §#"V§.§8"@§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&"R§.§`&7§;
   import §&"c§.§!!q§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§["4§;
   import §+%S§.§[0§;
   import §,!f§.*;
   import §,#_§.FrameTimer;
   import §-"N§.§"k§;
   import §-%B§.*;
   import §-@§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §1#p§.§=$G§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §6"'§.§9$Z§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%E§.§,$2§;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.*;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import §^!]§.MineSetUpEvent;
   import §^§.*;
   import com.greensock.TweenLite;
   import com.greensock.data.TweenLiteVars;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.client.EndBattle;
   import ru.pragmatix.wormix.messages.server.EndBattleResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   
   use namespace gestouch_internal;
   
   public class §2$H§ implements §1#>§
   {
      
      private static const §%N§:uint = 4;
      
      private static const §@n§:uint = 2;
      
      protected var squads:Vector.<§"Z§>;
      
      private var profiles:Vector.<UserProfile>;
      
      private var §0"o§:Vector.<uint>;
      
      private var mapRecord:§9$Z§;
      
      private var seed:int;
      
      protected var §1#h§:uint;
      
      protected var randomWeapons:Boolean = false;
      
      public function §2$H§(param1:§]$d§)
      {
         super();
         this.§1#h§ = param1.§^!W§();
         this.profiles = param1.getProfiles();
         this.§0"o§ = param1.§9#^§();
         this.mapRecord = param1.scene.§^$'§();
         this.seed = param1.seed;
      }
      
      public function §8%r§() : void
      {
      }
      
      public function §2%[§(param1:§4$z§) : void
      {
      }
      
      public function §5$?§() : §]$;§
      {
         return null;
      }
      
      protected function §#"^§(param1:§=$G§, param2:uint = 0) : void
      {
         var _loc4_:UserProfile = null;
         this.squads = new Vector.<§"Z§>(0);
         var _loc3_:uint = param2 > 0 ? param2 : (this.profiles.length <= 2 ? §%N§ : §@n§);
         var _loc5_:uint = 0;
         var _loc6_:int = int(this.profiles.length);
         while(_loc5_ < _loc6_)
         {
            _loc4_ = UserProfile(this.profiles[_loc5_]);
            this.squads[_loc5_] = §6#H§.§0%M§(_loc4_,"Squad " + _loc5_,_loc5_,_loc5_ == this.§1#h§ ? §=$G§.§0<§ : param1,this.§0"o§[_loc5_],§6#H§.§>#S§(_loc4_,_loc3_));
            _loc5_++;
         }
         §6#H§.§0&§(this.squads,this.mapRecord,this.seed);
      }
      
      public function §37§(param1:§<$Z§, param2:§3$z§) : §4$z§
      {
         return §6#H§.§,$g§(param1,param2);
      }
      
      public function §6$y§(param1:§]$d§, param2:§4$z§) : §"k§
      {
         return null;
      }
      
      public function §^%g§(param1:Array) : void
      {
      }
      
      public function §@$0§() : §1%z§
      {
         return null;
      }
   }
}

