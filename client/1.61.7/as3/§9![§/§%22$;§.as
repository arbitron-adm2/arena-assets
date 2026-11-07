package §9![§
{
   import § &5§.§@N§;
   import §!#g§.*;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&!?§.*;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#h§.§-"F§;
   import §&&6§.§8"O§;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §,%$§.§0>§;
   import §-%B§.§-"o§;
   import §-@§.*;
   import §0!§.§6#z§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §1#p§.§2=§;
   import §1&-§.§'$y§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2!-§.UnitKilledEvent;
   import §2"L§.§^$y§;
   import §2#H§.§1%I§;
   import §2#H§.§`#D§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §4$b§.§2m§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5#`§.*;
   import §6",§.§[%w§;
   import §6$z§.§!"§;
   import §6$z§.BonusTrait;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<%E§.§%#z§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=$#§.§`%u§;
   import §=1§.*;
   import §=;§.§>%>§;
   import §>%I§.§-#f§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^!]§.MineSetUpEvent;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.*;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §"$;§ extends BonusTrait
   {
      
      private static const §'%q§:GlowFilter = new GlowFilter(§;#L§.§ &<§,100,10,10,2);
      
      private static const §-"w§:String = "ScytheSweep";
      
      private static const §7&2§:String = "ScytheSweepShort";
      
      private static const §0%O§:String = "ScytheSweepShortAlt";
      
      private static const §`%j§:int = 62;
      
      private static const §6#_§:int = 26;
      
      private static const §=%0§:int = 29;
      
      private static const §-#^§:int = 9;
      
      private var §""J§:int;
      
      private var §]"w§:Dictionary;
      
      private var damagedUnits:Dictionary;
      
      private var §`#U§:Boolean;
      
      private var dummy:§&"T§;
      
      private var §4"H§:Vector.<Point>;
      
      private var §-%P§:Vector.<MovieClip>;
      
      private var §<"-§:Boolean;
      
      public function §"$;§()
      {
         super();
      }
      
      private static function §^%,§(param1:String, param2:Point, param3:Number) : MovieClip
      {
         var _loc4_:MovieClip = §6#A§.§!&6§(param1);
         if(§8"%§.§&S§.§41§())
         {
            §'%q§.quality = §8"%§.§&S§.§?#E§();
            _loc4_.filters = [§'%q§];
         }
         §1"-§.§,&§(param2.x,param2.y,_loc4_,param3,false,null,§@N§.§[!i§);
         return _loc4_;
      }
      
      override protected function activate(param1:int) : void
      {
         this.§""J§ = param1;
         this.§]"w§ = new Dictionary();
         this.damagedUnits = new Dictionary();
         this.dummy = Application.scene.§,$z§();
         this.dummy.stable = true;
         this.§4"H§ = new Vector.<Point>(0);
         this.§-%P§ = new Vector.<MovieClip>(0);
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(owner) && Boolean(owner.squad))
         {
            this.§4""§();
         }
         else
         {
            Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         if(this.§]"w§)
         {
            this.§4""§();
         }
      }
      
      private function §4""§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_ != owner)
            {
               _loc2_.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
               _loc2_.addEventListener(§0%v§.DISPOSED,this.onDisposed);
            }
         }
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
      }
      
      override protected function deactivate(param1:int) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(owner.squad))
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§5#h§();
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_ != owner)
               {
                  _loc3_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
                  _loc3_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
               }
            }
         }
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         if(!this.§`#U§)
         {
            Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
            this.§6&>§();
            this.§]"w§ = this.damagedUnits = null;
         }
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit != owner && !param1.unit.disposed)
         {
            param1.unit.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            param1.unit.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         }
      }
      
      private function onDisposed(param1:Event) : void
      {
         §+%]§(param1.target).removeEventListener(§0%v§.DISPOSED,this.onDisposed);
         §+%]§(param1.target).removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
      }
      
      private function §3"M§(param1:HpChangeEvent) : void
      {
         var _loc2_:DamageEvent = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:String = null;
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         if(Boolean(!param1.§ %M§.disposed && param1.§ %M§ is §+%]§ && param1.changeType == §6#z§.DMG_TAKEN) && Boolean(param1.§=#r§) && param1.§=#r§ is DamageEvent)
         {
            _loc2_ = param1.§=#r§ as DamageEvent;
            _loc3_ = param1.§ %M§ as §+%]§;
            if(Boolean(param1.amount < 0 && _loc2_.source) && Boolean(_loc2_.source.owner) && owner == _loc2_.source.owner)
            {
               _loc4_ = _loc3_.getId().toString();
               this.§`#U§ = true;
               this.damagedUnits[_loc4_] = _loc3_;
               if(this.§]"w§[_loc4_] == undefined)
               {
                  this.§]"w§[_loc4_] = Math.abs(param1.amount);
               }
               else
               {
                  this.§]"w§[_loc4_] += Math.abs(param1.amount);
               }
            }
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(this.§`#U§)
         {
            if(this.§""J§ > 0)
            {
               this.§9"m§();
            }
            this.§`#U§ = false;
         }
         if(Boolean(this.§]"w§) && Boolean(this.damagedUnits))
         {
            this.§6&>§();
         }
         if(owner.disposed)
         {
            Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
            this.§]"w§ = this.damagedUnits = null;
         }
      }
      
      private function §9"m§() : void
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         if(!this.§]"w§ || !this.damagedUnits)
         {
            return;
         }
         var _loc1_:int = 0;
         for(_loc2_ in this.damagedUnits)
         {
            if(§+%]§(this.damagedUnits[_loc2_]).hp > this.§""J§ || §+%]§(this.damagedUnits[_loc2_]).disposed)
            {
               delete this.§]"w§[_loc2_];
               delete this.damagedUnits[_loc2_];
            }
         }
         for(_loc2_ in this.§]"w§)
         {
            if(this.§]"w§[_loc2_] > _loc1_)
            {
               _loc1_ = int(this.§]"w§[_loc2_]);
            }
         }
         for(_loc2_ in this.§]"w§)
         {
            if(this.§]"w§[_loc2_] < _loc1_)
            {
               delete this.§]"w§[_loc2_];
               delete this.damagedUnits[_loc2_];
            }
         }
         _loc3_ = new Vector.<§+%]§>(0);
         for(_loc2_ in this.damagedUnits)
         {
            if(this.§=!B§(this.damagedUnits[_loc2_]))
            {
               _loc3_.push(§+%]§(this.damagedUnits[_loc2_]));
            }
         }
         if(_loc3_.length > 0)
         {
            this.dummy.stable = false;
            _loc4_ = _loc3_.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               this.§5!!§(_loc3_[_loc5_],_loc5_,_loc4_);
               _loc5_++;
            }
            this.§3"!§();
         }
      }
      
      private function §=!B§(param1:§+%]§) : Boolean
      {
         var _loc2_:§`"C§ = param1.buffs.getBuff(§`#D§.NAME);
         if(_loc2_)
         {
            return false;
         }
         this.§4"H§.push(new Point(param1.x,param1.y));
         this.§`"4§();
         §8"%§.§?!W§.§>$y§(owner.record.getCharName() + " victim " + param1.record.getCharName() + " is debuffed!");
         return true;
      }
      
      private function §5!!§(param1:§+%]§, param2:int, param3:int) : Boolean
      {
         var victim:§+%]§ = param1;
         var index:int = param2;
         var count:int = param3;
         var tmp:§!"§ = this;
         var frames:int = count == 1 ? §6#_§ : int(§-#^§ * (1 + index));
         §8$a§.§%!E§(frames,function applyFatalDamageWaitAndDo():void
         {
            if(Boolean(victim) && Boolean(!victim.disposed) && !Application.scene.§@$I§.§=%d§())
            {
               victim.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,§3"M§);
               §'"$§.§]#I§(owner,victim.x,victim.y,victim,victim.hp,0,0,false,true,null,false,false,false);
               Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§0%n§,false,false,§0%v§.DAMAGE_TRIGGER));
            }
         });
         return true;
      }
      
      private function §3"!§() : void
      {
         var tmp:§!"§;
         var pointsCount:uint = 0;
         var isMultiEffect:Boolean = false;
         pointsCount = this.§4"H§.length;
         isMultiEffect = pointsCount > 1;
         var scale:Number = isMultiEffect ? (pointsCount > 2 ? 0.6 : 0.8) : 1;
         var effectName:String = isMultiEffect ? §7&2§ : §-"w§;
         var effectFrames:int = isMultiEffect ? int(§=%0§ + §-#^§ * (pointsCount - 1)) : §`%j§;
         this.§-%P§.push(§^%,§(effectName,this.§4"H§[0],scale));
         tmp = this;
         §8$a§.§%!E§(effectFrames,function onWaitAndPlayEffect():void
         {
            var _loc1_:MovieClip = null;
            if(Boolean(dummy && !dummy.disposed) && Boolean(!dummy.stable) && !Application.scene.§@$I§.§=%d§())
            {
               dummy.stable = true;
            }
            for each(_loc1_ in §-%P§)
            {
               if(_loc1_.parent)
               {
                  _loc1_.parent.removeChild(_loc1_);
               }
            }
            §-%P§.length = 0;
            §4"H§.length = 0;
         });
         if(isMultiEffect)
         {
            this.§[$T§();
         }
      }
      
      private function §[$T§() : void
      {
         var scale:Number = NaN;
         scale = this.§4"H§.length > 2 ? 0.6 : 0.8;
         var tmp:§!"§ = this;
         §8$a§.§%!E§(§-#^§ - 1,function onWaitAndPlayNextEffect():void
         {
            var _loc1_:String = §-%P§.length % 2 == 0 ? §7&2§ : §0%O§;
            var _loc2_:MovieClip = §^%,§(_loc1_,§4"H§[§-%P§.length],scale);
            §-%P§.push(_loc2_);
            if(§4"H§.length > §-%P§.length)
            {
               §[$T§();
            }
         });
      }
      
      private function §`"4§() : void
      {
         if(!this.§<"-§ && §8"%§.§?!W§.§4"m§.§=%g§() && !owner.squad.isAi())
         {
            this.§<"-§ = true;
            §`%u§.§5$+§(Bonus.DEATH_GRIP,owner);
         }
      }
      
      private function §6&>§() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.§]"w§)
         {
            delete this.§]"w§[_loc1_];
            delete this.damagedUnits[_loc1_];
         }
      }
   }
}

