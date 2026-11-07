package §[%§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §0!§.§6#z§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%"§.§`"`§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2#H§.§,"R§;
   import §2#W§.PvpChestBox;
   import §3"@§.§""m§;
   import §3#a§.§-!`§;
   import §4!!§.§6$V§;
   import §4#2§.*;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$1§.*;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §;!J§.*;
   import §<!W§.§;#A§;
   import §<%c§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[$P§.§8%R§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.display.ContentDisplay;
   import config.§`!a§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import vk.*;
   
   public class Boar extends §+%]§
   {
      
      public static const § !6§:§&$2§ = new §&$2§(4);
      
      public static const §&$s§:§&$2§ = new §&$2§(100);
      
      public static const §+$c§:§&$2§ = new §&$2§(2);
      
      private static const §3!A§:§&$2§ = new §&$2§(9);
      
      public static const §#!a§:§&$2§ = new §&$2§(§3!A§.value * §+$c§.value);
      
      public static const §;§:§&$2§ = new §&$2§(1);
      
      public static const §&%G§:§&$2§ = new §&$2§(5);
      
      public static const §!#M§:§&$2§ = new §&$2§(10);
      
      private static const §"!t§:§&$2§ = new §&$2§(375);
      
      private static const §%"B§:uint = §<H§.§@k§ * 2;
      
      private static const §7$,§:Vector.<String> = new <String>["BoarFart1","BoarFart2"];
      
      private var §&!z§:int;
      
      private var §""J§:int;
      
      private var §!l§:Dictionary = new Dictionary();
      
      private var §@!E§:Dictionary = new Dictionary();
      
      private var §3"x§:Boolean;
      
      private var §;$j§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §1#5§:§8%R§;
      
      public function Boar(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         attributes.jump = this.§1#5§ = new §8%R§(this,attributes.jump);
         this.§""J§ = hp - §&$s§.value;
         this.§3"x§ = param1.getRace().§%§(§`!a§.§[#d§).getLevel() <= param1.getLevel();
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
      }
      
      private static function §&"o§() : String
      {
         return §7$,§[int(§8"%§.randomSeed.§,!q§(0,§7$,§.length - 1))];
      }
      
      private function §@%D§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         this.§4""§();
      }
      
      private function §4""§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = squad.§1!n§();
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_ != this)
            {
               _loc2_.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§<!g§);
               _loc2_.addEventListener(§0%v§.DISPOSED,this.§<$%§);
               this.§@!E§[_loc2_] = _loc2_.hp - §&$s§.value;
            }
         }
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit != this && !param1.unit.disposed && param1.unit.§4!R§(this))
         {
            param1.unit.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§<!g§);
            param1.unit.addEventListener(§0%v§.DISPOSED,this.§<$%§);
            this.§@!E§[param1.unit] = param1.unit.hp - §&$s§.value;
         }
      }
      
      private function §<$%§(param1:Event) : void
      {
         var _loc2_:§+%]§ = §+%]§(param1.target);
         if(this.§!l§[_loc2_])
         {
            delete this.§!l§[_loc2_];
         }
         delete this.§@!E§[_loc2_];
         _loc2_.removeEventListener(§0%v§.DISPOSED,this.§<$%§);
         _loc2_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§<!g§);
      }
      
      private function §3"M§(param1:HpChangeEvent) : void
      {
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         if(disposed)
         {
            return;
         }
         if(param1.amount <= 0)
         {
            return;
         }
         if(!buffs.hasBuff(§;#A§.NAME))
         {
            return;
         }
         if(this.§&!z§ >= §3!A§.value)
         {
            return;
         }
         if(param1.changeType != §6#z§.HEAL)
         {
            return;
         }
         var _loc2_:int = Math.floor(this.§""J§ / §&$s§.value);
         var _loc3_:int = Math.floor((this.§""J§ + param1.amount) / §&$s§.value);
         var _loc4_:Boolean = _loc2_ < _loc3_;
         this.§""J§ += param1.amount;
      }
      
      private function §<!g§(param1:HpChangeEvent) : void
      {
         var _loc3_:DamageEvent = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         if(!buffs.hasBuff(§;#A§.NAME))
         {
            return;
         }
         if(param1.§ %M§.disposed)
         {
            return;
         }
         var _loc2_:§+%]§ = param1.§ %M§ as §+%]§;
         if(param1.changeType == §6#z§.HEAL && param1.amount > 0)
         {
            this.§@!E§[_loc2_] += param1.amount;
            return;
         }
         if(Boolean(param1.changeType == §6#z§.DMG_TAKEN && param1.amount < 0) && Boolean(param1.§=#r§) && param1.§=#r§ is DamageEvent)
         {
            _loc3_ = param1.§=#r§ as DamageEvent;
            if(Boolean(_loc3_.source && _loc3_.source.owner) && Boolean(this.§@!E§[_loc2_] > 0) && _loc2_.hp < this.§@!E§[_loc2_])
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.hp + §&$s§.value;
               while(_loc5_ <= this.§@!E§[_loc2_])
               {
                  _loc4_++;
                  this.§@!E§[_loc2_] -= §&$s§.value;
               }
               this.§-!s§(_loc4_,_loc2_);
               this.§@!E§[_loc2_] -= §&$s§.value;
            }
         }
      }
      
      private function §-!s§(param1:int, param2:§+%]§) : void
      {
         if(§5"O§.§4#+§(param2))
         {
            return;
         }
         var _loc3_:int = param1 * §+$c§.value;
         if(!this.§!l§[param2] || this.§!l§[param2] + _loc3_ <= §#!a§.value)
         {
            if(this.§!l§[param2])
            {
               this.§!l§[param2] += _loc3_;
            }
            else
            {
               this.§!l§[param2] = _loc3_;
            }
            param2.attributes.attack.§5#l§(_loc3_);
            §1"-§.§8"l§(param2,§1"-§.§+@§);
            §2!H§.§'!i§(§0%§.format(§0$N§.BONUS_ATTACK,{"value":_loc3_}),§2!H§.§5"H§,param2.x + param2.width,param2.y + param2.height * 0.5,20);
         }
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Vector.<§+%]§> = null;
         var _loc6_:§+%]§ = null;
         var _loc7_:§+%]§ = null;
         super.§""0§(param1);
         if(!disposed && this.§""J§ > 0 && hp < this.§""J§ && this.§&!z§ < §3!A§.value && buffs.hasBuff(§;#A§.NAME))
         {
            _loc3_ = 1;
            _loc4_ = hp + §&$s§.value;
            while(_loc4_ <= this.§""J§)
            {
               _loc3_++;
               this.§""J§ -= §&$s§.value;
            }
            this.§&!z§ += _loc3_;
            _loc5_ = squad.§1!n§();
            for each(_loc6_ in _loc5_)
            {
               this.§-!s§(_loc3_,_loc6_);
            }
            this.§""J§ -= §&$s§.value;
         }
         for(_loc2_ in this.§!l§)
         {
            _loc7_ = §+%]§(_loc2_);
            if((Boolean(_loc7_)) && _loc7_.disposed)
            {
               delete this.§!l§[_loc7_];
            }
         }
      }
      
      public function § %>§() : void
      {
         §+# §.§9! §.deactivate();
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         physParams.§?$]§ = false;
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(Boolean(!disposed) && Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeUnit == this)
         {
            this.§1#5§.§!!>§();
         }
      }
      
      public function §>H§() : void
      {
         var _loc1_:§]$;§ = null;
         if(!disposed)
         {
            _loc1_ = §8"%§.§?!W§.§4"m§;
            if(!_loc1_.§1"3§() && _loc1_.activeUnit == this)
            {
               if(!_loc1_.§[!W§() && !_loc1_.§"$6§())
               {
                  if(weapon == null)
                  {
                     §#&5§();
                  }
                  if(_loc1_.§=%g§())
                  {
                     _loc1_.§%!J§(true);
                  }
               }
               §+# §.§9! §.activate();
            }
         }
      }
      
      override public function §3C§() : Boolean
      {
         return Boolean(super.§3C§()) && !this.§1#5§.§3!X§;
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         if(!this.§1#5§.§3!X§)
         {
            super.onCollide(param1);
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         var activeUnitTeam:uint;
         var clip:MovieClip;
         var enemies:Vector.<§+%]§> = null;
         var tempUnit:Boar = null;
         var dummy:§&"T§ = null;
         var event:Event = param1;
         if(disposed)
         {
            Application.scene.removeEventListener(§0%v§.SOT,this.§,!l§);
            return;
         }
         if(!this.§3"x§)
         {
            return;
         }
         activeUnitTeam = uint(§8"%§.§?!W§.§4"m§.activeUnit.squad.getTeamId());
         if(activeUnitTeam == squad.getTeamId())
         {
            return;
         }
         enemies = §<H§.§5"]§(x,y,§%"B§,§8"%§.§?!W§.§4"m§.§6"M§(this));
         if(enemies.length == 0)
         {
            return;
         }
         tempUnit = this;
         dummy = Application.scene.§,$z§();
         §8$a§.§%!E§(20,function onWaitAndDoPlayLaughSound():void
         {
            §2#6§.§;0§(tempUnit);
         });
         clip = graphics.§6w§(§&"o§(),true);
         §8$a§.§%!E§(clip ? uint(clip.totalFrames) : 0,function onWaitAndDoTotalFramesFartClip():void
         {
            var _loc3_:§+%]§ = null;
            var _loc1_:int = § !6§.value + bonuses.getStatValue(Bonus.POISONING_ADDITION);
            var _loc2_:int = 0;
            for each(_loc3_ in enemies)
            {
               §7%g§.§>!%§(_loc3_,tempUnit,_loc1_,false);
               §5"O§.§^"V§(_loc3_,§&%G§.value,§!#M§.value,tempUnit.record.getLevel(),§"!t§.value / 100,§;§.value);
               if(§;$j§.indexOf(_loc3_) == -1)
               {
                  §;$j§.push(_loc3_);
                  _loc2_++;
               }
            }
            if(tempUnit.squad.isLocal() && _loc2_ > 0)
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§="B§,_loc2_);
            }
            tempUnit.graphics.stay();
            dummy.disposed = true;
         });
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         this.§;$j§.length = 0;
         this.§1#5§.disposed();
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(squad))
         {
            _loc2_ = squad.§1!n§();
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_ != this)
               {
                  _loc3_.removeEventListener(§0%v§.DISPOSED,this.§<$%§);
                  _loc3_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§<!g§);
               }
            }
         }
         removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.SOT,this.§,!l§);
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         super.§[$u§(param1);
      }
      
      override public function §%!F§() : void
      {
         var _loc1_:Object = null;
         var _loc2_:§+%]§ = null;
         var _loc3_:int = 0;
         this.§3"x§ = false;
         for(_loc1_ in this.§!l§)
         {
            _loc2_ = §+%]§(_loc1_);
            if(_loc2_)
            {
               _loc3_ = int(this.§!l§[_loc1_]);
               if(!_loc2_.disposed)
               {
                  _loc2_.attributes.attack.§5#l§(-_loc3_);
                  §1"-§.§8"l§(_loc2_,§1"-§.§+@§);
                  §2!H§.§'!i§(§0%§.format(§0$N§.BONUS_ATTACK,{"value":-_loc3_}).replace("+",""),§2!H§.§8"<§,_loc2_.x + _loc2_.width,_loc2_.y + _loc2_.height * 0.5,20);
               }
               delete this.§!l§[_loc2_];
            }
         }
      }
      
      public function addJumpExplodeRadius(param1:int) : Boolean
      {
         if(this.§1#5§)
         {
            this.§1#5§.§'$n§(param1);
            return true;
         }
         return false;
      }
   }
}

