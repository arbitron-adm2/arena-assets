package §@<§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § $q§.SelectMapMenu;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+%S§.§%!%§;
   import §+%S§.§%#j§;
   import §+%S§.§73§;
   import §+%S§.§>!I§;
   import §+%S§.§["4§;
   import §+%S§.§[&;§;
   import §+%S§.§[`§;
   import §+5§.§^$[§;
   import §,!f§.*;
   import §-%B§.*;
   import §-8§.*;
   import §0!§.§8$Y§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1&-§.§6"`§;
   import §2#s§.*;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §5$p§.§4&$§;
   import §5$p§.ArchdemonRope;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §7$t§.§=?§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §;&2§.§!#W§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import §^§.*;
   import §`#x§.§"$r§;
   import §`%&§.§8U§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §5"O§
   {
      
      public function §5"O§()
      {
         super();
      }
      
      public static function changeRace(param1:§+%]§, param2:§`!d§, param3:int = 0, param4:Class = null) : §+%]§
      {
         var _loc5_:§]$;§ = null;
         var _loc7_:UserProfile = null;
         var _loc9_:§+%]§ = null;
         var _loc11_:§`"C§ = null;
         var _loc17_:§^$[§ = null;
         var _loc18_:§=z§ = null;
         var _loc19_:§6"`§ = null;
         _loc5_ = §8"%§.§?!W§.§4"m§;
         var _loc6_:Boolean = _loc5_.activeUnit == param1 && !param1.disposed;
         param1.graphics.stay();
         param1.graphics.lock();
         param1.§5#Q§ = true;
         _loc7_ = param1.record.§ "P§();
         _loc7_.§;$v§(param1.record.§4!^§());
         _loc7_.§&$g§(param2);
         _loc7_.§?!0§(param2.getId(),param3);
         var _loc8_:Class = _loc7_.getRace().getClass();
         _loc9_ = new _loc8_(_loc7_,param1.x,param1.y,true);
         _loc9_.§="r§ = param1.§="r§;
         var _loc10_:§8$Y§ = _loc9_.attributes.hp;
         _loc10_.§3e§(param1.attributes.hp.§8!R§());
         _loc10_.change(-(_loc10_.§#&"§() - _loc10_.§#&"§() * param1.attributes.hp.§9"H§()));
         _loc10_.§@#§(param1.attributes.hp.§4$M§());
         _loc9_.attributes.attack.§3e§(param1.attributes.attack.§8!R§());
         _loc9_.attributes.armor.§3e§(param1.attributes.armor.§8!R§());
         _loc9_.turn(param1.direction);
         _loc9_.§,#x§(param1.§2u§() ? param1.§2u§().getId() : 0);
         _loc9_.§;"U§(param1.§+!b§());
         _loc11_ = param1.buffs.getBuff(§=z§.NAME);
         var _loc12_:int = _loc11_ ? _loc11_.§8#z§() : 0;
         var _loc13_:§`"C§ = param1.buffs.getBuff(§3#j§.NAME);
         var _loc14_:§6"`§ = §6"`§(param1.buffs.getBuff(§6"`§.NAME));
         if(_loc9_.bonuses.§^#5§(Bonus.§7I§) && !_loc13_)
         {
            _loc9_.buffs.§6C§(§3#j§.NAME);
         }
         var _loc15_:Boolean = param1.isLeader;
         if((_loc15_) && param1.§8!1§)
         {
            param1.§#!I§();
         }
         param1.§7"i§(null);
         param1.§;"U§(null);
         param1.buffs.§1!D§(_loc9_);
         if(_loc12_)
         {
            _loc18_ = §=z§(_loc9_.buffs.getBuff(§=z§.NAME));
            if(_loc18_)
            {
               _loc18_.setDuration(_loc12_);
            }
         }
         else
         {
            _loc9_.buffs.§6C§(§=z§.NAME);
         }
         Application.scene.§@$I§.§1$+§(_loc9_,!_loc6_);
         if(_loc6_ && !_loc5_.§1"3§())
         {
            Application.scene.§=P§(_loc9_.layer).addChild(_loc9_.clip);
            _loc5_.§?&C§(_loc9_);
            if(_loc9_.weapon != null)
            {
               _loc9_.weapon.§?!K§();
            }
         }
         param1.squad.§2!p§(_loc9_,param1);
         if(_loc14_)
         {
            _loc19_ = §6"`§(_loc9_.buffs.getBuff(§6"`§.NAME));
            _loc19_.§^!,§(_loc14_.getAppliedCount());
         }
         if(_loc15_)
         {
            _loc9_.§1%f§();
         }
         Application.scene.§7#o§.§1"X§(_loc9_);
         if(!_loc5_.§#"G§() && _loc5_.§=%g§() && param1.squad.isLocal())
         {
            §+# §.§9! §.deactivate();
            §8"%§.§?!W§.§4"m§.§%!J§(false);
         }
         var _loc16_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§^$[§]);
         _loc16_ = §<H§.§3%'§(param1.x,param1.y,§<H§.§@k§,_loc16_,false);
         for each(_loc17_ in _loc16_)
         {
            _loc17_.§=#>§(param1,_loc9_);
         }
         §1"-§.explode(param4 || §;n§.SWAP_RACE,param1.x,param1.y,30);
         param1.§%!F§();
         param1.§#+§();
         return _loc9_;
      }
      
      public static function isSleep(param1:§+%]§) : Boolean
      {
         var _loc2_:§`"C§ = param1.buffs.getBuff(§%!%§.NAME);
         return Boolean(_loc2_) && §%!%§(_loc2_).isSleep();
      }
      
      public static function §4#+§(param1:§+%]§) : Boolean
      {
         var _loc2_:§`"C§ = param1.buffs.getBuff(§%#j§.NAME);
         return param1.squad && !param1.squad.isAi() && Boolean(_loc2_) && §%#j§(_loc2_).getBlocked();
      }
      
      public static function §^"V§(param1:§+%]§, param2:int, param3:int, param4:int, param5:Number, param6:int = 1) : void
      {
         if(param1.buffs.hasBuff(§[`§.NAME))
         {
            return;
         }
         var _loc7_:int = §1!x§(param2,param3,param4,param5);
         param1.buffs.addValue(new §[`§(_loc7_,param6));
         §@%;§.play(§`!v§.§-$z§);
      }
      
      public static function §^"a§(param1:§+%]§, param2:int, param3:int, param4:int, param5:Number, param6:int = 1) : void
      {
         if(param1.buffs.hasBuff(§73§.NAME))
         {
            return;
         }
         var _loc7_:int = §1!x§(param2,param3,param4,param5);
         param1.buffs.addValue(new §73§(_loc7_,param6));
         if(!§-#M§.§&$i§(param1))
         {
            §1"-§.§8"l§(param1,§1"-§.§`"g§);
         }
         §@%;§.play(§`!v§.§-$z§);
      }
      
      public static function §1!x§(param1:int, param2:int, param3:int, param4:Number) : int
      {
         return param1 + Math.min(param2,int(param3 / param4));
      }
      
      public static function increaseAttack(param1:§+%]§, param2:int, param3:int, param4:String) : void
      {
         var _loc5_:§`"C§ = param1.buffs.getBuff(param4);
         var _loc6_:int = param2;
         if(_loc5_ != null)
         {
            _loc6_ += _loc5_.getValue();
            param1.buffs.§6C§(param4);
         }
         if(_loc6_ != 0)
         {
            param1.buffs.place(new §["4§(param4,_loc6_,param3));
         }
         §2"a§(param1,param2,§0$N§.BONUS_ATTACK,§2!H§.§8"<§);
      }
      
      public static function increaseArmor(param1:§+%]§, param2:int, param3:int, param4:String) : void
      {
         var _loc5_:§`"C§ = param1.buffs.getBuff(param4);
         var _loc6_:int = param2;
         if(_loc5_ != null)
         {
            _loc6_ += _loc5_.getValue();
            param1.buffs.§6C§(param4);
         }
         if(_loc6_ != 0)
         {
            param1.buffs.place(new §>!I§(param4,_loc6_,param3));
         }
         §2"a§(param1,param2,§0$N§.BONUS_ARMOR,§2!H§.§@!]§);
      }
      
      public static function §2"a§(param1:§+%]§, param2:int, param3:String, param4:String) : void
      {
         §1"-§.§8"l§(param1,§1"-§.§>#t§,80);
         § #7§(param3,param2,param1,param4);
      }
      
      public static function § #7§(param1:String, param2:int, param3:§+%]§, param4:String) : void
      {
         §2!H§.§'!i§(§0%§.format(param1,{"value":param2}),param4,param3.x + param3.width * 0.5,param3.y + param3.height * 0.5,20);
      }
      
      public static function §,c§(param1:§6#I§, param2:Boolean, param3:int, param4:int, param5:String) : void
      {
         var _loc6_:String = "";
         if(param1 != null)
         {
            switch(param1.damageType)
            {
               case §&!E§.FIRE:
                  _loc6_ = §+"'§.§0"§;
                  break;
               case §&!E§.§=$-§:
                  _loc6_ = §+"'§.§-%y§;
                  break;
               case §&!E§.COLD:
                  _loc6_ = §+"'§.§<#c§;
            }
         }
         if(!param2 && Boolean(_loc6_))
         {
            §1"-§.§`$Q§(param3,param4,_loc6_,1,false);
         }
         else
         {
            §1"-§.§`$Q§(param3,param4,param5,0.035,false);
         }
      }
   }
}

