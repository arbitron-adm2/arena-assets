package ru.pragmatix.wormix.game.rules
{
   import § !8§.§`!d§;
   import § !P§.§1!8§;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#5§.*;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-%B§.*;
   import §-&5§.*;
   import §-@§.§,Y§;
   import §0!§.§6#z§;
   import §0!Y§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%j§.*;
   import §0%z§.§#%x§;
   import §0%z§.§,$h§;
   import §0%z§.§1"6§;
   import §0%z§.§@"q§;
   import §0%z§.§@#S§;
   import §0%z§.AchievTabPage;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §1&-§.§ &=§;
   import §1&-§.§]%4§;
   import §2!-§.DamageEvent;
   import §2!-§.GameObjectDisposed;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2!-§.WaterLevelChangedEvent;
   import §2"L§.§!#H§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#H§.§;#;§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3"_§.*;
   import §3#T§.§+&F§;
   import §3#T§.§8w§;
   import §3#a§.*;
   import §4$b§.*;
   import §4u§.§9!]§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5"J§.*;
   import §5$]§.§`1§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§8%%§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%E§.§6#`§;
   import §<%E§.§;!y§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §=!p§.§7#E§;
   import §="z§.§7%-§;
   import §="z§.§9%1§;
   import §=#g§.§!"X§;
   import §=$#§.§ b§;
   import §=&!§.§&$a§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@!i§.§5%8§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$v§.§,%E§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^"I§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`#x§.*;
   import §`$T§.*;
   import §`%&§.§8U§;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.§"!&§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.client.ToggleTeamMember;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §+&-§
   {
      
      public static const §3%§:uint = 0;
      
      public static const § !z§:uint = 1;
      
      public static const §;%?§:uint = 2;
      
      public static const §%#1§:uint = 800;
      
      public static const §4F§:uint = 200;
      
      private var §#%s§:int;
      
      private var §&"h§:int;
      
      private var §!&1§:int;
      
      private var §0#n§:int;
      
      private var §[&4§:uint;
      
      private var §5Q§:uint;
      
      private var §'%x§:Boolean;
      
      private var §+s§:uint;
      
      private var §6!]§:uint;
      
      private var firstBlood:Boolean = true;
      
      private var unit:§+%]§;
      
      private var allies:Vector.<§+%]§>;
      
      private var enemies:Vector.<§+%]§>;
      
      private var §`#m§:Array;
      
      private var §3&7§:Array;
      
      private var §8#J§:Array;
      
      private var §;%!§:Array;
      
      private var §0"B§:Array;
      
      private var §=G§:Array;
      
      private var §3,§:int = 0;
      
      private var §^e§:Array;
      
      private var §0"P§:Array = [];
      
      private var §#!P§:Object;
      
      private var §@$d§:int = 1;
      
      private var §?$R§:uint = 0;
      
      private var §,$v§:Boolean = false;
      
      private var §;!U§:Boolean = false;
      
      private var §!!4§:Boolean = false;
      
      private var events:§!#H§ = new §!#H§();
      
      private var §-$W§:uint;
      
      private var §<$[§:Boolean;
      
      private var §,% §:Boolean;
      
      public function §+&-§()
      {
         super();
      }
      
      private function reset() : void
      {
         var _loc1_:MechanicEventV2 = null;
         this.§#%s§ = 0;
         this.§&"h§ = 0;
         this.§!&1§ = 0;
         this.§0#n§ = 0;
         this.§+s§ = 0;
         this.§6!]§ = 0;
         this.§[&4§ = 0;
         this.§5Q§ = 0;
         this.§'%x§ = false;
         this.§;!U§ = false;
         this.§!!4§ = false;
         this.§`#m§ = [];
         this.§3&7§ = [];
         this.§8#J§ = [];
         this.§;%!§ = [];
         this.§0"B§ = [];
         this.§=G§ = [];
         this.§3,§ = 0;
         this.§^e§ = [];
         this.§#!P§ = {};
         for each(_loc1_ in this.§0"P§)
         {
            this.§^e§.push(_loc1_);
         }
         this.§0"P§ = [];
         this.§-$W§ = §3%§;
         this.§,% § = this.§<$[§ = false;
      }
      
      public function activate(param1:§+%]§, param2:uint) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:§+%]§ = null;
         if(this.§,$v§)
         {
            return;
         }
         this.§,$v§ = true;
         this.§-$W§ = param2;
         this.§<$[§ = param2 == § !z§;
         this.§,% § = param2 == §;%?§;
         if(Application.scene)
         {
            this.events.add(Application.scene,§0%v§.DAMAGE,this.§'"7§).add(Application.scene,§0%v§.§'%e§,this.§'"7§).add(Application.scene,§0%v§.WEAPON_SHOOT,this.§8#i§).add(Application.scene,§0%v§.DAMAGE_TRIGGER,this.§8#i§).add(Application.scene,§0%v§.NEW_UNIT_ADDED,this.§ j§).add(Application.scene,§0%v§.GAME_OBJECT_HP_CHANGE,this.§^$?§);
         }
         this.unit = param1;
         this.allies = §8"%§.§?!W§.§4"m§.§="T§(param1);
         this.enemies = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         this.events.add(param1,§0%v§.DISPOSED,this.§ &B§);
         for each(_loc3_ in this.allies)
         {
            this.events.add(_loc3_,§0%v§.DISPOSED,this.§!%_§);
         }
         for each(_loc4_ in this.enemies)
         {
            this.events.add(_loc4_,§0%v§.DISPOSED,this.§@%2§);
         }
         this.reset();
         this.events.run();
      }
      
      public function deactivate() : void
      {
         if(!this.§,$v§)
         {
            return;
         }
         this.§,$v§ = false;
         this.events.clear();
         this.§-$W§ = §3%§;
         this.§,% § = this.§<$[§ = false;
         this.unit = null;
         this.allies = null;
         this.enemies = null;
         this.§`#m§ = null;
         this.§3&7§ = null;
         this.§8#J§ = null;
         this.§;%!§ = null;
         this.§0"B§ = null;
         this.§=G§ = null;
         this.§^e§ = null;
         this.§#!P§ = null;
         if(this.firstBlood && this.§&"h§ > 0)
         {
            this.firstBlood = false;
         }
      }
      
      private function §'"7§(param1:DamageEvent) : void
      {
         var _loc8_:Boolean = false;
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         if(!(param1.victim is §+%]§))
         {
            return;
         }
         var _loc2_:§+%]§ = §+%]§(param1.victim);
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:§]$;§ = §8"%§.§?!W§.§4"m§;
         var _loc4_:int = Math.ceil(_loc2_.attributes.hp.§?!H§ ? §]%4§.§;&D§ * param1.power : param1.power);
         var _loc5_:int = _loc4_ + (_loc2_.disposed ? _loc2_.hp : 0);
         if(_loc2_.attributes.hp.§?!H§)
         {
            this.§3%g§(_loc2_,MechanicEventV2.TYPE_DODGE,int(Math.ceil(param1.power)) - _loc4_);
         }
         if(Boolean(_loc2_.squad) && Boolean(_loc2_.squad.isAi()) && _loc2_.buffs.hasBuff(§;#;§.NAME))
         {
            _loc5_ = 0;
         }
         if(_loc5_ > 0)
         {
            if(this.§`#m§[_loc2_.getId()])
            {
               this.§`#m§[_loc2_.getId()].damage = this.§`#m§[_loc2_.getId()].damage + _loc5_;
            }
            else
            {
               this.§`#m§[_loc2_.getId()] = {
                  "unit":_loc2_,
                  "damage":_loc5_
               };
            }
         }
         var _loc6_:§6#I§ = param1.source;
         if(!_loc6_)
         {
            return;
         }
         var _loc7_:§+%]§ = _loc6_ ? _loc6_.owner : null;
         if(!_loc7_ || !_loc7_.squad)
         {
            return;
         }
         if(Boolean(_loc6_.damageType && _loc7_.squad.isLocal()) && Boolean(_loc2_) && !_loc7_.§+&,§(_loc2_))
         {
            _loc10_ = _loc6_.damageType.id;
            if(_loc5_ > 0)
            {
               if(this.§3&7§[_loc10_] != undefined)
               {
                  this.§3&7§[_loc10_] += _loc5_;
               }
               else
               {
                  this.§3&7§[_loc10_] = _loc5_;
               }
            }
         }
         _loc8_ = _loc7_.squad.getNumber() == this.unit.squad.getNumber();
         var _loc9_:Boolean = this.§<$[§ || _loc8_;
         if(_loc2_ == this.unit && _loc7_ == this.unit)
         {
            this.§!&1§ += _loc4_;
         }
         else if(this.allies.indexOf(_loc2_) > -1 && _loc9_)
         {
            this.§#%s§ += _loc4_;
         }
         else if(this.enemies.indexOf(_loc2_) > -1 && _loc9_)
         {
            this.§&"h§ += _loc4_;
            if(this.§&"h§ > §,Y§.MASSIVE_DAMAGE.value && !this.§;!U§)
            {
               this.§;!U§ = true;
               _loc11_ = Social.settings.§@"G§().toString();
               _loc12_ = _loc11_ == "ru" || _loc11_ == "ua";
               §1"-§.§`$Q§(_loc2_.x,_loc2_.y - 200,_loc12_ ? §1"-§.§^&3§ : §1"-§.§6"F§);
               if(Boolean(_loc7_) && !_loc7_.squad.isAi())
               {
                  Application.scene.dispatchEvent(new Event(§0%v§.MASSIVE_DAMAGE));
               }
            }
            if(Boolean(_loc7_) && Boolean(_loc3_) && _loc3_.§=%g§())
            {
               _loc13_ = _loc7_.lastWeapon && _loc7_.lastWeapon is CircusCannon || _loc6_ is §8w§ || _loc6_ is §,%E§;
               if(_loc13_)
               {
                  this.§0#n§ += _loc4_;
               }
            }
         }
         if(_loc6_.§,%S§ && §^$y§.distance(_loc6_.§'#=§ - _loc2_.x,_loc6_.§[#B§ - _loc2_.y) > §%#1§)
         {
            ++this.§+s§;
            §1"-§.§^!7§(_loc2_.x,_loc2_.y,Application.instance.§#&7§() ? 40 : 20,Application.instance.§#&7§() ? 16580608 : 16632408);
         }
         if(_loc6_.§6""§ && _loc2_ != _loc7_ && §^$y§.sign(_loc2_.x - _loc6_.§'#=§) != _loc6_.§-$§ && §^$y§.distance(_loc6_.§'#=§ - _loc2_.x,_loc6_.§[#B§ - _loc2_.y) > §4F§)
         {
            ++this.§6!]§;
            §1"-§.§^!7§(_loc2_.x,_loc2_.y,Application.instance.§#&7§() ? 20 : 5,Application.instance.§#&7§() ? 223 : 8760543);
         }
         if(Boolean(!this.§!!4§ && §8"%§.§?!W§.§^!U§().battleType == §&$a§.§#"g§ && _loc3_ && !_loc3_.activeSquad.isLocal() && !_loc3_.§"$6§()) && Boolean(_loc2_.squad) && _loc2_.squad.getTeamId() != _loc7_.squad.getTeamId())
         {
            this.§!!4§ = true;
         }
      }
      
      private function §^$?§(param1:HpChangeEvent) : void
      {
         if(param1.§ %M§ is §+%]§ && param1.changeType == §6#z§.HEAL)
         {
            this.§8#i§(new WeaponShootEvent(§+%z§.§;$6§,false,true));
            if(this.§8#J§[param1.§ %M§.getId()])
            {
               this.§8#J§[param1.§ %M§.getId()].amount = this.§8#J§[param1.§ %M§.getId()].amount + param1.amount;
            }
            else
            {
               this.§8#J§[param1.§ %M§.getId()] = {
                  "unit":param1.§ %M§,
                  "amount":param1.amount
               };
            }
         }
      }
      
      private function §8#i§(param1:WeaponShootEvent) : void
      {
         var _loc2_:WeaponStructure = null;
         for each(_loc2_ in this.§;%!§)
         {
            if(_loc2_.getId() == param1.recordId)
            {
               _loc2_.countIncrement();
               return;
            }
         }
         this.§;%!§.push(new WeaponStructure(param1.recordId,1));
      }
      
      private function § j§(param1:NewUnitEvent) : void
      {
         var _loc2_:§+%]§ = param1.unit;
         if(_loc2_.§]$Y§ == 0)
         {
            _loc2_.§]$Y§ = this.§^&E§();
         }
         var _loc3_:UnitBirthV2 = new UnitBirthV2(_loc2_.§]$Y§,!_loc2_.squad.isAi(),_loc2_.hp,_loc2_.squad.isAi() ? UnitBirthV2.SOURCE_BOSS_SCRIPT : UnitBirthV2.SOURCE_ABILITY,_loc2_.§@!^§);
         if(_loc2_.record)
         {
            _loc3_.hatId = _loc2_.record.§2u§() ? _loc2_.record.§2u§().getId() : 0;
            _loc3_.kitId = _loc2_.record.§+!b§() ? _loc2_.record.§+!b§().getId() : 0;
         }
         this.§;"q§.push(_loc3_);
      }
      
      private function § &B§(param1:Event) : void
      {
         this.§-"f§(this.unit,UnitDeathV2.CAUSE_SUICIDE);
         this.§'%x§ = true;
      }
      
      private function §!%_§(param1:GameObjectDisposed) : void
      {
         this.§-"f§(§+%]§(param1.object),UnitDeathV2.CAUSE_SCRIPT);
         ++this.§[&4§;
      }
      
      private function §@%2§(param1:GameObjectDisposed) : void
      {
         this.§-"f§(§+%]§(param1.object),UnitDeathV2.CAUSE_SCRIPT);
         ++this.§5Q§;
      }
      
      private function §-"f§(param1:§+%]§, param2:int) : void
      {
         if(!param1)
         {
            return;
         }
         if(param1.§]$Y§ == 0)
         {
            param1.§]$Y§ = this.§^&E§();
         }
         var _loc3_:int = param1.§8%w§ != UnitDeathV2.CAUSE_UNKNOWN ? param1.§8%w§ : param2;
         var _loc4_:int = 0;
         if(_loc3_ != UnitDeathV2.CAUSE_DAMAGE && _loc3_ != UnitDeathV2.CAUSE_POISON)
         {
            _loc4_ = param1.§+S§ >= 0 ? param1.§+S§ : (param1.hp > 0 ? param1.hp : 0);
         }
         this.§^A§.push(new UnitDeathV2(param1.§]$Y§,_loc3_,_loc4_,param1.killerWeaponId));
      }
      
      public function §^&E§() : int
      {
         return this.§@$d§++;
      }
      
      public function §9&C§(param1:int, param2:int = 0) : void
      {
         if(!this.§,$v§ || param1 <= 0)
         {
            return;
         }
         this.§3,§ += param1;
         if(this.§#!P§ != null)
         {
            this.§#!P§[param2] = int(this.§#!P§[param2]) + param1;
         }
      }
      
      public function §^!E§() : void
      {
         var _loc1_:String = null;
         var _loc2_:§,Y§ = null;
         var _loc3_:int = 0;
         if(this.§^e§ == null || this.§#!P§ == null)
         {
            return;
         }
         for(_loc1_ in this.§#!P§)
         {
            _loc3_ = int(this.§#!P§[_loc1_]);
            if(_loc3_ > 0)
            {
               this.§^e§.push(new MechanicEventV2(0,MechanicEventV2.TYPE_LAND_DESTROYED,_loc3_,int(_loc1_)));
            }
         }
         this.§#!P§ = {};
         _loc2_ = §8"%§.§?!W§ ? §8"%§.§?!W§.§7%@§ : null;
         if(_loc2_ != null && _loc2_.§2"R§ > this.§?$R§)
         {
            this.§^e§.push(new MechanicEventV2(0,MechanicEventV2.TYPE_LAND_COUNTED,int(_loc2_.§2"R§ - this.§?$R§),0));
            this.§?$R§ = _loc2_.§2"R§;
         }
      }
      
      public function §2"j§(param1:§+%]§, param2:int, param3:int) : void
      {
         if(param1 == null || param3 == 0)
         {
            return;
         }
         var _loc4_:MechanicEventV2 = new MechanicEventV2(param1.§]$Y§,MechanicEventV2.TYPE_WEAPON_PICKUP,param3,param2);
         if(this.§,$v§ && this.§^e§ != null)
         {
            this.§^e§.push(_loc4_);
         }
         else
         {
            this.§0"P§.push(_loc4_);
         }
      }
      
      public function §3%g§(param1:§+%]§, param2:int, param3:int, param4:int = 0) : void
      {
         if(!this.§,$v§ || param1 == null || param3 <= 0 || this.§^e§ == null)
         {
            return;
         }
         this.§^e§.push(new MechanicEventV2(param1.§]$Y§,param2,param3,param4));
      }
      
      public function get landDestroyed() : int
      {
         return this.§3,§;
      }
      
      public function get mechanics() : Array
      {
         return this.§^e§;
      }
      
      public function get §]$`§() : int
      {
         return this.§#%s§;
      }
      
      public function get §^"b§() : int
      {
         return this.§&"h§;
      }
      
      public function get §&$@§() : int
      {
         return this.§!&1§;
      }
      
      public function get §@"t§() : int
      {
         return this.§!&1§ + this.§#%s§ + this.§&"h§;
      }
      
      public function get §!$b§() : int
      {
         return this.§0#n§;
      }
      
      public function get §0!y§() : uint
      {
         return this.§[&4§;
      }
      
      public function get §,"?§() : uint
      {
         return this.§5Q§;
      }
      
      public function get §'!n§() : Boolean
      {
         return this.§'%x§;
      }
      
      public function get §0#9§() : uint
      {
         return this.§+s§;
      }
      
      public function get § !u§() : uint
      {
         return this.§6!]§;
      }
      
      public function get §2%1§() : Boolean
      {
         return this.firstBlood;
      }
      
      public function get §;r§() : Array
      {
         return this.§`#m§;
      }
      
      public function get §&"m§() : Array
      {
         return this.§3&7§;
      }
      
      public function get §"%q§() : Array
      {
         return this.§8#J§;
      }
      
      public function get §&<§() : Array
      {
         return this.§;%!§;
      }
      
      public function get §^A§() : Array
      {
         return this.§0"B§;
      }
      
      public function get §;"q§() : Array
      {
         return this.§=G§;
      }
      
      public function get §-!4§() : Boolean
      {
         return this.§!!4§;
      }
      
      public function get active() : Boolean
      {
         return this.§,$v§;
      }
      
      public function get §4$l§() : uint
      {
         return this.§-$W§;
      }
      
      public function get §0@§() : Boolean
      {
         return this.§<$[§;
      }
      
      public function get §`#N§() : Boolean
      {
         return this.§,% §;
      }
   }
}

