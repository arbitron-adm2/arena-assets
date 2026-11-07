package ru.pragmatix.wormix.model.items.backpack
{
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"R§.§3B§;
   import §&"R§.§`&7§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.QuestGiftItem;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[0§;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §-8§.§3!x§;
   import §0!§.§[k§;
   import §0%"§.§[!^§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2B§.§^%y§;
   import §4#`§.*;
   import §4f§.§-&§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §7!B§.*;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §9%W§.§!"G§;
   import §;#O§.§4&A§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<K§.RatingTabClan;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §?>§.§0!7§;
   import §?o§.§!%I§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §^!]§.MineSetUpEvent;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.Dynamite;
   import ru.pragmatix.wormix.weapons.Firework;
   import ru.pragmatix.wormix.weapons.interfaces.§&$+§;
   
   public class §;! § extends §6#Q§
   {
      
      private var § %P§:Object = {};
      
      public function §;! §()
      {
         super();
      }
      
      public function §,%T§(param1:§&!e§, param2:int = -1, param3:Boolean = false, param4:int = -1) : BackpackItem
      {
         var _loc6_:int = 0;
         var _loc5_:BackpackItem = §0%8§(param1);
         if(param2 != -1 && !param3)
         {
            this.§ %P§[param1.getId()] = param2;
         }
         else if(param1.§8!t§() > 0)
         {
            _loc6_ = param3 && param2 > -1 ? param2 : int(new Date().getTime() / 1000);
            this.§ %P§[param1.getId()] = _loc6_ + (param4 > -1 ? param4 : param1.§8!t§() * §0#2§.§8$]§);
         }
         return _loc5_;
      }
      
      public function §3#5§() : Vector.<int>
      {
         var _loc2_:BackpackItem = null;
         var _loc3_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>(0);
         for each(_loc2_ in §9#?§)
         {
            _loc3_ = this.§6# §(_loc2_.getId());
            if(_loc3_ != -1)
            {
               if(_loc3_ < §0#2§.§@&6§())
               {
                  _loc1_.push(_loc2_.getId());
               }
            }
         }
         return _loc1_;
      }
      
      override public function §2$I§(param1:int, param2:int = -1, param3:Boolean = true) : void
      {
         var _loc5_:UserProfile = null;
         super.§2$I§(param1);
         if(this.isTemporalItem(param1))
         {
            delete this.§ %P§[param1];
         }
         var _loc4_:Vector.<UserProfile> = Application.userProfile.§"]§();
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§4!^§() != §2=§.§"!$§)
            {
               if(Boolean(_loc5_.§2u§()) && _loc5_.§2u§().getId() == param1)
               {
                  _loc5_.§7"i§(null);
               }
               else if(Boolean(_loc5_.§+!b§()) && _loc5_.§+!b§().getId() == param1)
               {
                  _loc5_.§;"U§(null);
               }
               if(_loc5_.§4!^§() == §2=§.MERCENARY)
               {
                  §4&A§.§9&7§(_loc5_);
               }
            }
         }
      }
      
      public function §4$s§(param1:int) : void
      {
         super.§2$I§(param1);
         if(this.isTemporalItem(param1))
         {
            delete this.§ %P§[param1];
         }
      }
      
      public function §6# §(param1:int) : int
      {
         var _loc2_:int = -1;
         if(this.isTemporalItem(param1))
         {
            _loc2_ = int(this.§ %P§[param1]);
         }
         return _loc2_;
      }
      
      public function isTemporalItem(param1:int) : Boolean
      {
         return this.§ %P§[param1] != null;
      }
      
      public function §?!M§(param1:uint) : Vector.<§2"y§>
      {
         var _loc3_:BackpackItem = null;
         var _loc4_:§2"y§ = null;
         var _loc2_:Vector.<§2"y§> = new Vector.<§2"y§>(0);
         for each(_loc3_ in §9#?§)
         {
            _loc4_ = _loc3_.getRecord() as §2"y§;
            if((Boolean(_loc4_)) && _loc4_.getType() == param1)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public function §8##§() : Vector.<§2"y§>
      {
         var _loc2_:BackpackItem = null;
         var _loc3_:§2"y§ = null;
         var _loc1_:Vector.<§2"y§> = new Vector.<§2"y§>(0);
         for each(_loc2_ in §9#?§)
         {
            _loc3_ = _loc2_.getRecord() as §2"y§;
            if(_loc3_)
            {
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function §^!>§(param1:int, param2:§&!e§) : void
      {
         if(§9#?§[param1])
         {
            §9#?§[param1] = new BackpackItem(param2,-1,0);
         }
      }
      
      public function §1$o§() : void
      {
         var _loc1_:BackpackItem = null;
         for each(_loc1_ in §9#?§)
         {
            if(§[!^§.§-$+§(_loc1_.getId()))
            {
               this.§2$I§(_loc1_.getId());
            }
         }
      }
   }
}

