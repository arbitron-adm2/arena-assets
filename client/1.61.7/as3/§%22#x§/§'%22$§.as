package §"#x§
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §'T§.§!$C§;
   import §+%S§.§=t§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §1&-§.§'$y§;
   import §2!-§.DamageEvent;
   import §4&F§.*;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §8$V§.*;
   import §9%W§.§ !@§;
   import §9%W§.§!"G§;
   import §9%W§.§8#p§;
   import §<%k§.*;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ClearNameResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §'"$§
   {
      
      public static const §7w§:Number = 0.025;
      
      public static const §>"W§:Number = 0.03;
      
      public static const §0$C§:Number = 1;
      
      private static const §3#t§:§&$2§ = new §&$2§(5);
      
      private static const §#e§:§&$2§ = new §&$2§(60);
      
      private static const §'$P§:Number = 2.5;
      
      public function §'"$§()
      {
         super();
      }
      
      public static function §]#I§(param1:§+%]§, param2:int, param3:int, param4:§&"T§, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean = false, param10:§&!E§ = null, param11:Boolean = true, param12:Boolean = true, param13:Boolean = true, param14:Boolean = true, param15:Object = null, param16:int = 0) : void
      {
         var _loc17_:§6#I§ = new §6#I§(param1,param2,param3,true,§6#I§.§&i§,param10);
         _loc17_.§`#=§ = param16;
         _loc17_.x = param2;
         _loc17_.y = param3;
         _loc17_.§4M§ = param12;
         _loc17_.§5#C§ = param11;
         _loc17_.§1!e§ = param13;
         inflictDamage(_loc17_,param4,param5,param6,param7,param8,param9,param15);
      }
      
      public static function inflictDamage(param1:§6#I§, param2:§&"T§, param3:Number, param4:Number, param5:Number, param6:Boolean = true, param7:Boolean = false, param8:Object = null) : void
      {
         var _loc9_:Vector.<§&"T§> = null;
         var _loc10_:Boolean = false;
         var _loc11_:§&"T§ = null;
         var _loc12_:Boolean = false;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         §0!Q§(param1,param5,param8);
         if(param2 != null)
         {
            §2"!§(param1,param3,param2,param7,param8);
         }
         if(param4 > §<H§.§?O§)
         {
            _loc9_ = Application.scene.§@$I§.§@!_§();
            _loc10_ = param2 == null;
            for each(_loc11_ in _loc9_)
            {
               _loc12_ = !_loc11_.disposed && _loc11_ != param2 && (param6 || param1.owner != _loc11_);
               if(_loc12_)
               {
                  _loc13_ = §%#4§(param1,_loc11_,param4);
                  if(!isNaN(_loc13_))
                  {
                     _loc14_ = param3 * _loc13_;
                     §2"!§(param1,_loc14_,_loc11_,param7,_loc10_ && _loc11_ is §+%]§ ? param8 : null);
                     §?"g§(param3,_loc14_);
                  }
               }
            }
         }
      }
      
      private static function §0!Q§(param1:§6#I§, param2:Number, param3:Object = null) : void
      {
         var _loc4_:int = int(Math.round(param2));
         if(_loc4_ > 0)
         {
            Application.scene.§,# §(param1.x,param1.y,int(_loc4_),param3,param1.§`#=§);
            DamageEvent.§!"2§(param1,null,param2,§0%v§.§]!l§);
         }
      }
      
      private static function §%#4§(param1:§6#I§, param2:§&"T§, param3:Number) : Number
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc4_:int = param2.x;
         var _loc5_:int = param2.y;
         if(param2 is §+%]§)
         {
            if(param1.y > _loc5_ + §<H§.§-#C§)
            {
               _loc5_ += §<H§.§-#C§;
            }
            else if(param1.y < _loc5_ - §<H§.§-#C§)
            {
               _loc5_ -= §<H§.§-#C§;
            }
         }
         var _loc6_:int = Math.abs(_loc4_ - param1.x);
         var _loc7_:int = Math.abs(_loc5_ - param1.y);
         var _loc8_:Number = NaN;
         if(param1 != param2 && _loc6_ <= param3 && _loc7_ <= param3)
         {
            _loc9_ = param3 * param3;
            _loc10_ = _loc6_ * _loc6_ + _loc7_ * _loc7_;
            if(_loc9_ - _loc10_ > §<H§.§?O§)
            {
               _loc8_ = 1 - _loc10_ / _loc9_;
            }
         }
         return _loc8_;
      }
      
      private static function §2"!§(param1:§6#I§, param2:Number, param3:§&"T§, param4:Boolean = false, param5:Object = null) : void
      {
         var _loc7_:§'$y§ = null;
         var _loc8_:DamageEvent = null;
         if(!param3.canBeDamaged)
         {
            return;
         }
         var _loc6_:Number = param2;
         if(Boolean(param1) && Boolean(param1.§5#C§) && Boolean(param1.owner))
         {
            _loc7_ = §'$y§.§-0§(param1);
            if((Boolean(_loc7_)) && _loc6_ > 0)
            {
               _loc7_.§0;§();
               if(_loc7_.§%&0§)
               {
                  _loc6_ += §-q§.§8$G§(_loc7_.getValue(),_loc6_);
               }
            }
         }
         if(param3 is §+%]§)
         {
            _loc6_ = §>%B§(param1,_loc6_,§+%]§(param3),param4);
            _loc8_ = new DamageEvent(param1,param3,_loc6_,§0%v§.§&!D§);
            _loc8_.customSource = param5;
            param3.dispatchEvent(_loc8_);
            if(param3.attributes.hp.§@#@§() > 0)
            {
               DamageEvent.§!"2§(param1,param3,_loc6_,§0%v§.DAMAGE,param5);
            }
         }
         else
         {
            param3.dispatchEvent(new DamageEvent(param1,param3,_loc6_,§0%v§.§&!D§));
         }
      }
      
      public static function §@%#§(param1:Number, param2:int, param3:int) : Number
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         _loc4_ = Math.min(param2,§<!9§.getMaxLevel());
         _loc5_ = Math.min(_loc4_ * 3,param3);
         var _loc6_:int = Math.max(0,param3 - _loc5_);
         _loc7_ = 0.036 - 0.012 * Math.log(0.13 * _loc4_);
         _loc8_ = 100000;
         var _loc9_:Number = Math.round(_loc7_ * _loc8_) / _loc8_;
         var _loc10_:Number = 0.01;
         return param1 * (1 + _loc5_ * _loc9_ + _loc6_ * _loc10_);
      }
      
      public static function §1%M§(param1:Number, param2:int) : Number
      {
         return param1 * (1 - 0.05 * param2 / (1 + Math.abs(param2) * 0.075));
      }
      
      private static function §>%B§(param1:§6#I§, param2:Number, param3:§+%]§, param4:Boolean) : Number
      {
         var _loc6_:§^%'§ = null;
         var _loc11_:int = 0;
         var _loc13_:§=t§ = null;
         var _loc5_:Number = param2;
         if(!param1.owner)
         {
            return param2;
         }
         _loc6_ = param1.owner.bonuses;
         var _loc7_:§^%'§ = param3.bonuses;
         var _loc8_:int = param1.owner.record.getLevel();
         var _loc9_:int = param1.owner.attributes.attack.value;
         var _loc10_:int = param3.attributes.armor.value;
         _loc11_ = 100;
         var _loc12_:int = _loc6_.getStatValue(Bonus.PENETRATION,_loc11_);
         if(_loc12_ > 0 && _loc10_ > 0)
         {
            _loc10_ = Math.max(0,_loc10_ - §-q§.§8$G§(_loc12_,_loc10_));
         }
         if(!param4 && (param1.damageType == §&!E§.§!?§ || param1.damageType == §&!E§.AIR))
         {
            if(param1.mindAttack)
            {
               _loc5_ = §@%#§(_loc5_,_loc8_,_loc9_);
            }
            if(param1.§5!4§)
            {
               _loc5_ = §1%M§(_loc5_,_loc10_);
            }
         }
         switch(param1.damageType)
         {
            case §&!E§.§!?§:
               if(!param4 && param1.§1!e§)
               {
                  _loc5_ -= §-q§.§8$G§(_loc7_.getStatValue(Bonus.PHYSICAL_DEFENSE,_loc11_),_loc5_);
               }
               break;
            case §&!E§.AIR:
               _loc5_ += §-q§.§8$G§(_loc6_.getStatValue(Bonus.AIR_DAMAGE),_loc5_);
               _loc5_ = _loc5_ - §-q§.§8$G§(_loc7_.getStatValue(Bonus.AIR_DEFENSE,_loc11_),_loc5_);
               break;
            case §&!E§.COLD:
               _loc5_ += §-q§.§8$G§(_loc6_.getStatValue(Bonus.FROST_DAMAGE),_loc5_);
               _loc5_ = _loc5_ - §-q§.§8$G§(_loc7_.getStatValue(Bonus.FROST_DEFENSE,_loc11_),_loc5_);
               break;
            case §&!E§.§=$-§:
               _loc5_ += §-q§.§8$G§(_loc6_.getStatValue(Bonus.SHOCK_DAMAGE),_loc5_);
               _loc5_ = _loc5_ - §-q§.§8$G§(_loc7_.getStatValue(Bonus.SHOCK_DEFENSE,_loc11_),_loc5_);
               break;
            case §&!E§.FIRE:
               _loc5_ += §-q§.§8$G§(_loc6_.getStatValue(Bonus.FIRE_DAMAGE),_loc5_);
               _loc5_ = _loc5_ - §-q§.§8$G§(_loc7_.getStatValue(Bonus.FIRE_DEFENSE,_loc11_),_loc5_);
               break;
            case §&!E§.POISON:
               _loc5_ = Math.max(§3#t§.value,_loc5_);
               _loc5_ = §-q§.§'%$§(_loc6_.getStatValue(Bonus.POISON_DAMAGE),_loc5_);
               _loc5_ = _loc5_ - §-q§.§8$G§(_loc7_.getStatValue(Bonus.POISON_DEFENSE,_loc11_),_loc5_);
               _loc13_ = §=t§(param3.buffs.getBuff(§=t§.NAME));
               _loc5_ = Math.min(Boolean(_loc13_) && Boolean(_loc13_.§'I§) ? _loc13_.§'I§ : §#e§.value,_loc5_);
         }
         return _loc5_;
      }
      
      private static function §?"g§(param1:Number, param2:Number) : void
      {
         if(int(param2) > 0 && param2 > param1 * 1.2)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"explosion damage (" + param2 + " > " + param1 + ")"));
         }
      }
      
      public static function §<#j§(param1:§&"T§, param2:Number, param3:Number, param4:Boolean) : void
      {
         var _loc5_:Number = §##%§(param1);
         if(param4)
         {
            param1.§5!?§(_loc5_ * param2,_loc5_ * param3);
         }
         else
         {
            param1.setSpeedXY(_loc5_ * param2,_loc5_ * param3);
         }
      }
      
      public static function §@$t§(param1:§&"T§, param2:Number, param3:Number, param4:Boolean, param5:Number = 0, param6:Number = 0) : void
      {
         param6 = param6 == 0 ? §##%§(param1) : param6;
         if(param4)
         {
            param1.§6"O§(param2,param6 * param3 + param5);
         }
         else
         {
            param1.§^"F§(param2,param6 * param3 + param5);
         }
      }
      
      public static function §##%§(param1:§&"T§) : Number
      {
         var _loc2_:Number = 1;
         var _loc3_:Number = 0.4;
         var _loc4_:Number = 0.01;
         return param1 is §+%]§ ? Math.max(_loc3_,_loc2_ - _loc4_ * §+%]§(param1).bonuses.getStatValue(Bonus.FORTITUDE)) : _loc2_;
      }
      
      public static function § &0§(param1:§&"T§) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:Number = 6;
         var _loc4_:Number = 0.15;
         return param1 is §+%]§ ? Math.min(_loc3_,_loc4_ * §+%]§(param1).bonuses.getStatValue(Bonus.ATTACK_POWER_ADDITION)) : _loc2_;
      }
   }
}

