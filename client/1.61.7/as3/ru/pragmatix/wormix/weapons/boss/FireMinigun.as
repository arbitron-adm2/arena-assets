package ru.pragmatix.wormix.weapons.boss
{
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#!5§.§]#w§;
   import §#$e§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§@x§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§%$$§;
   import §4!!§.§6$V§;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §5!b§.*;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=7§.*;
   import §?#g§.Race;
   import §?$K§.§!"t§;
   import §?$K§.§`""§;
   import §?%J§.*;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§2z§;
   import com.adobe.images.JPGEncoder;
   import config.§5%T§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class FireMinigun extends SoulMinigun
   {
      
      public function FireMinigun()
      {
         super();
         §"#z§ = §2$"§ = 30;
         §2$K§ = 2000;
      }
      
      override public function §2#v§() : void
      {
         §-g§ = new §2z§(85,§"#z§);
      }
      
      override protected function getTargets() : Vector.<§&"T§>
      {
         var _loc3_:§+%]§ = null;
         var _loc1_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         for each(_loc3_ in _loc2_)
         {
            _loc1_.push(_loc3_);
         }
         return _loc1_;
      }
      
      override protected function §<%8§(param1:Number) : void
      {
         var _loc3_:Point = null;
         §;#8§();
         var _loc2_:§+%]§ = targets.length > 0 ? targets[int(§8"%§.randomSeed.§,!q§(0,targets.length - 1))] : owner;
         _loc3_ = getBarrelPoint(param1);
         var _loc4_:§%$$§ = new §%$$§(owner,_loc3_.x,_loc3_.y,_loc2_,paramSet.damage.value,§2$"§,24);
         _loc4_.§^"F§(param1,§2$"§);
         _loc4_.homingFeat.§<$1§ = § "[§;
         if(owner.squad.isLocal())
         {
            _loc4_.customSource = §<$c§.§ !=§(§+%z§.SOUL_GUN);
         }
         §^!g§(§`!v§.§>"6§);
      }
      
      override protected function §>#B§() : void
      {
      }
      
      override protected function §?& §() : void
      {
      }
   }
}

