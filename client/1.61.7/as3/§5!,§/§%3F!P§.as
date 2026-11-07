package §5!,§
{
   import § !8§.§`!d§;
   import § !P§.§9%Z§;
   import § #9§.§"$t§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.*;
   import §"!C§.§3#n§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §&!m§.§-$6§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §3#a§.§<#_§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §6"'§.§&"3§;
   import §65§.§%%o§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §<%E§.§;!y§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §="z§.§1!c§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[%§.*;
   import §^!"§.§0^§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import §`%&§.§@&,§;
   import config.§;"I§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §?!P§ extends §%%o§
   {
      
      public static const NAME:String = "CONSUMABLE_WEAPON_USE_BUFF";
      
      public static const §5%'§:int = 10;
      
      private var §2M§:int;
      
      private var §!#I§:int;
      
      private var §,#?§:int;
      
      private var §5!c§:int = 0;
      
      public function §?!P§(param1:int = 0, param2:int = 1)
      {
         this.§2M§ = param1;
         this.§!#I§ = §"!W§(param2);
         this.§,#?§ = param2;
         super(NAME,§-"^§);
      }
      
      public static function §"!W§(param1:int) : int
      {
         if(param1 > 3)
         {
            param1 = 3;
         }
         return param1 * 2 + 2;
      }
      
      public static function update(param1:§+%]§) : void
      {
         var _loc2_:§?!P§ = null;
         if(!param1.squad.isAi() && §8"%§.§?!W§.§^!U§().§;#D§())
         {
            _loc2_ = §8z§(param1);
            if(_loc2_)
            {
               _loc2_.increase();
            }
            else
            {
               param1.buffs.place(new §?!P§(1,param1.squad.§1!Y§));
            }
         }
      }
      
      public static function §8z§(param1:§+%]§) : §?!P§
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:§?!P§ = §?!P§(param1.buffs.getBuff(NAME));
         if(!_loc2_)
         {
            _loc3_ = param1.squad.§1!n§();
            for each(_loc4_ in _loc3_)
            {
               _loc2_ = §?!P§(_loc4_.buffs.getBuff(NAME));
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
         var _loc2_:§?!P§ = null;
         if(!param1.squad.isAi() && §8"%§.§?!W§.§^!U§().§;#D§())
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
      
      public static function §3%V§(param1:§+%]§) : void
      {
         var _loc2_:§?!P§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         if(!param1.squad.isAi() && §8"%§.§?!W§.§^!U§().§;#D§())
         {
            _loc2_ = §?!P§(param1.buffs.getBuff(NAME));
            if(_loc2_)
            {
               _loc3_ = param1.squad.§1!n§();
               for each(_loc4_ in _loc3_)
               {
                  if(_loc4_ != param1 && !_loc4_.buffs.hasBuff(NAME))
                  {
                     break;
                  }
               }
               if(_loc4_)
               {
                  _loc2_.§+"k§(_loc4_);
               }
            }
         }
      }
      
      public function increase() : void
      {
         if(this.§2M§ < this.§!#I§)
         {
            ++this.§2M§;
         }
      }
      
      public function §6!g§() : void
      {
         if(this.§2M§ > 0)
         {
            --this.§2M§;
         }
      }
      
      override public function reset() : void
      {
         super.reset();
         this.§2M§ = 0;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.replace(new §?!P§(this.§2M§,this.§,#?§));
      }
      
      public function get used() : int
      {
         return this.§2M§;
      }
      
      public function get limit() : int
      {
         return this.§!#I§;
      }
      
      public function get §5c§() : Boolean
      {
         return this.§2M§ >= this.§!#I§;
      }
   }
}

