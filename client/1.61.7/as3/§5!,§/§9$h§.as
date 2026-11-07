package §5!,§
{
   import § !8§.§`!d§;
   import § "L§.§`#r§;
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"R§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.§[!F§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§9##§;
   import §2o§.§]#@§;
   import §4'§.§^"p§;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §9%W§.§!"G§;
   import §9&+§.*;
   import §;#O§.§+%7§;
   import §<!W§.§!"+§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§4T§;
   import §<%E§.§=$u§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §?#g§.§&"P§;
   import §?$7§.*;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §`%&§.§5$1§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §9$h§ extends §%%o§
   {
      
      public static const NAME:String = "UNSPENDING_WEAPON_USE_BUFF";
      
      public static const §,h§:int = 5;
      
      private var §2M§:int;
      
      public function §9$h§(param1:int = 0)
      {
         this.§2M§ = param1;
         super(NAME,1);
      }
      
      public static function update(param1:§+%]§) : void
      {
         var _loc2_:§9$h§ = null;
         if(!param1.squad.isAi() && §8"%§.§?!W§.§^!U§().§^"9§())
         {
            _loc2_ = §8z§(param1);
            if(_loc2_)
            {
               _loc2_.increase();
            }
            else
            {
               param1.buffs.place(new §9$h§(1));
            }
         }
      }
      
      public static function §8z§(param1:§+%]§) : §9$h§
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:§9$h§ = §9$h§(param1.buffs.getBuff(NAME));
         if(!_loc2_)
         {
            _loc3_ = param1.squad.§1!n§();
            for each(_loc4_ in _loc3_)
            {
               _loc2_ = §9$h§(_loc4_.buffs.getBuff(NAME));
               if(_loc2_)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      public static function §!%w§(param1:§+%]§) : Boolean
      {
         var _loc2_:§9$h§ = null;
         if(!param1.squad.isAi() && §8"%§.§?!W§.§^!U§().§^"9§())
         {
            _loc2_ = §8z§(param1);
            if(Boolean(_loc2_) && _loc2_.§5c§)
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §#!Z§.fire(§#!Z§.§[!E§);
               }
               return true;
            }
         }
         return false;
      }
      
      public function increase() : void
      {
         if(this.§2M§ < §,h§)
         {
            ++this.§2M§;
         }
      }
      
      override public function reset() : void
      {
         super.reset();
         this.§2M§ = 0;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.replace(new §9$h§(this.§2M§));
      }
      
      public function get used() : int
      {
         return this.§2M§;
      }
      
      public function get §5c§() : Boolean
      {
         return this.§2M§ >= §,h§;
      }
   }
}

