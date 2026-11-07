package ru.pragmatix.wormix.model.bonus
{
   import § K§.§2""§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&$Y§.§7#T§;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0%"§.§[!^§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2#i§.§+%z§;
   import §3#T§.Helicopter;
   import §4'§.§`"q§;
   import §5!9§.§6$,§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§[!X§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<$q§.§,%3§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §?$7§.*;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import avmplus.getQualifiedClassName;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §]$q§
   {
      
      public static const RACE:String = "RACE";
      
      public static const HAT:String = "HAT";
      
      public static const OFF_HAND:String = "OFF_HAND";
      
      public static const BOOSTER:String = "BOOSTER";
      
      public static const ITEMSSET:String = "ITEMSSET";
      
      public static const BUNDLE:String = "BUNDLE";
      
      public static const VIP:String = "VIP";
      
      public static const NONE:String = "NONE";
      
      private var §?!"§:String;
      
      private var bonuses:Vector.<§@"I§>;
      
      public function §]$q§(param1:String)
      {
         super();
         this.§?!"§ = param1;
         this.bonuses = new Vector.<§@"I§>();
      }
      
      public static function §7!a§(param1:String, param2:Vector.<§@"I§>) : §]$q§
      {
         var _loc4_:§@"I§ = null;
         var _loc3_:§]$q§ = new §]$q§(param1);
         for each(_loc4_ in param2)
         {
            _loc3_.§3%<§(_loc4_);
         }
         return _loc3_;
      }
      
      public function §3%<§(param1:§@"I§) : void
      {
         this.bonuses[this.bonuses.length] = param1;
      }
      
      public function §<%i§() : Vector.<§@"I§>
      {
         return this.bonuses;
      }
      
      public function §]#l§(param1:Bonus) : §@"I§
      {
         var _loc2_:§@"I§ = null;
         for each(_loc2_ in this.bonuses)
         {
            if(_loc2_.getType() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^#5§(param1:Bonus) : Boolean
      {
         return this.§]#l§(param1) != null;
      }
      
      public function §1$9§(param1:Bonus) : int
      {
         var _loc2_:§@"I§ = this.§]#l§(param1);
         return _loc2_ ? _loc2_.getValue() : 0;
      }
      
      public function getSourceType() : String
      {
         return this.§?!"§;
      }
   }
}

