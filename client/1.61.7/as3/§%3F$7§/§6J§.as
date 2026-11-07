package §?$7§
{
   import § #g§.*;
   import § $q§.§3U§;
   import §#"V§.§!&5§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §+u§.§'n§;
   import §,"v§.§9%d§;
   import §-@§.§0"e§;
   import §0%[§.Cookie;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §4u§.ReagentHint;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §<!W§.§!"+§;
   import §<%E§.*;
   import §<%c§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §?$L§.§&$9§;
   import §?>§.§]!V§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@&H§.§9#u§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§2#n§;
   import §`#x§.§5$x§;
   import §`#x§.§7"^§;
   import §`#x§.§9#@§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.TopClansRequest;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.*;
   
   public class §6J§
   {
      
      private static var instance:§6J§;
      
      private var §7§:Vector.<HeroicMissionStructure>;
      
      private var heroicMissionDailyProgress:Vector.<HeroicMissionDailyProgressTO>;
      
      private var defeatContributionMoney:int;
      
      public function §6J§()
      {
         super();
      }
      
      public static function getInstance() : §6J§
      {
         if(!instance)
         {
            instance = new §6J§();
         }
         return instance;
      }
      
      public function §""O§(param1:Vector.<HeroicMissionStructure>) : void
      {
         this.§7§ = param1;
      }
      
      public function §[#=§() : Vector.<HeroicMissionStructure>
      {
         return this.§7§;
      }
      
      public function §,$e§(param1:int) : HeroicMissionStructure
      {
         return param1 < this.§7§.length ? this.§7§[param1] : null;
      }
      
      public function §`"o§(param1:int, param2:Vector.<int>) : int
      {
         var _loc4_:HeroicMissionStructure = null;
         var _loc3_:uint = 0;
         for each(_loc4_ in this.§7§)
         {
            if(_loc4_.bossId1 == param2[0] && _loc4_.bossId2 == param2[1] && (param1 == -1 || _loc4_.mapId == param1))
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function §9$b§() : Boolean
      {
         return Boolean(this.§7§) && this.§7§.length > 0;
      }
      
      public function §=%R§(param1:Vector.<HeroicMissionDailyProgressTO>, param2:int) : void
      {
         this.heroicMissionDailyProgress = param1;
         this.defeatContributionMoney = param2;
      }
      
      public function §?"r§(param1:uint) : HeroicMissionDailyProgressTO
      {
         return param1 < this.heroicMissionDailyProgress.length ? this.heroicMissionDailyProgress[param1] : null;
      }
      
      public function §<!y§() : int
      {
         return this.defeatContributionMoney;
      }
   }
}

