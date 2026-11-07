package ru.pragmatix.wormix.game.rules
{
   import § $q§.§3U§;
   import §!$D§.§2$^§;
   import §"#]§.§,#F§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.*;
   import §,"v§.§9%d§;
   import §-"N§.§"k§;
   import §-"N§.§3%d§;
   import §0&F§.§0%v§;
   import §1"r§.§4!u§;
   import §1#0§.§;4§;
   import §1#p§.§=$G§;
   import §2#x§.*;
   import §3"_§.*;
   import §4$b§.§2m§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §9%W§.§&!P§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%c§.§-! §;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §="z§.§9%1§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §@!N§.§2"e§;
   import §@!i§.§8%6§;
   import §@!i§.§;%v§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §^4§.§9!K§;
   import §`"p§.*;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §%$%§ extends §2$H§
   {
      
      private var data:§>!^§;
      
      private var difficulty:§<$!§;
      
      public function §%$%§(param1:§]$d§)
      {
         super(param1);
         this.difficulty = param1.§-!K§;
         this.data = param1.scenario;
      }
      
      override public function §8%r§() : void
      {
         §8"%§.§[%h§.§8!M§();
      }
      
      override public function §2%[§(param1:§4$z§) : void
      {
         this.data.clear();
         §8"%§.§?!W§.§7%@§.increment(§;4§.MISSIONS_EARNED,param1.money);
      }
      
      override public function §37§(param1:§<$Z§, param2:§3$z§) : §4$z§
      {
         var _loc3_:§4$z§ = super.§37§(param1,param2);
         _loc3_.§?#_§ = §8"%§.§?!W§.§4"m§.§;$x§();
         _loc3_.§`&>§ = §8"%§.§?!W§.§4"m§.§@!k§();
         _loc3_.§-!K§ = this.difficulty;
         var _loc4_:§-! § = this.data as §-! §;
         if(_loc4_)
         {
            _loc3_.totalDamageToPlayer = _loc4_.§`"W§;
            _loc3_.totalDamageToBoss = _loc4_.§%J§;
            _loc3_.totalUsedItems = _loc4_.§&<§;
         }
         _loc3_.money = §;%v§.§%_§(_loc3_);
         _loc3_.exp = §;%v§.§-%?§(_loc3_);
         §2$^§.§;%K§(_loc3_);
         return _loc3_;
      }
      
      override public function §5$?§() : §]$;§
      {
         §#"^§(§=$G§.AI);
         var _loc1_:§-! § = this.data as §-! §;
         if(_loc1_)
         {
            _loc1_.§^!=§(squads);
         }
         var _loc2_:§]$;§ = new §]$;§(squads,§1#h§,§?!d§.§8&+§());
         this.data.activate();
         this.data.§8%r§();
         return _loc2_;
      }
      
      override public function §6$y§(param1:§]$d§, param2:§4$z§) : §"k§
      {
         return new §3%d§(param1,param2);
      }
   }
}

