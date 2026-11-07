package §5"J§
{
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §4#`§.BattleInterface;
   import §6"'§.§>"V§;
   import §7!B§.§&"T§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=$#§.§1!$§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[%'§.§<"G§;
   import §]#[§.§2%o§;
   import §^"I§.§9"2§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   public class §8s§ extends §9"2§
   {
      
      private static const § #"§:uint = 1;
      
      private static const §'!h§:§&$2§ = new §&$2§(15);
      
      private static const §0#_§:§&$2§ = new §&$2§(0);
      
      private static const §5$D§:Number = 2;
      
      private static const §+#v§:uint = 3;
      
      private static const §1c§:int = 10;
      
      private static const §2?§:§&$2§ = new §&$2§(50);
      
      private var §<!C§:Object = {};
      
      private var §2y§:Object = {};
      
      private var §;%,§:uint = 200;
      
      public function §8s§(param1:uint, param2:Boolean = false)
      {
         super(param1,param2);
      }
      
      override public function §;#6§() : uint
      {
         return § #"§;
      }
      
      override public function §1%C§(param1:§?!d§) : void
      {
         param1.§`!I§ = true;
         param1.§`%?§ = §"%r§.STABLE;
         param1.timer = §,%3§.§68§;
         param1.chatSettings.§+$`§ = true;
         param1.§!"3§ = false;
         param1.§'",§ = false;
         param1.§^!T§ = false;
         param1.§;Y§ = false;
         param1.chatSettings = new §6%b§(§1!$§.§!"1§,§1!$§.§%%-§,§1!$§.NONE,§1!$§.§%%-§,true);
      }
      
      override protected function § "a§(param1:uint) : void
      {
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(param1 == 1)
         {
            this.§2#Z§();
         }
         this.§=$ §();
         if(_loc2_.§=%g§())
         {
            this.§ $S§();
            BattleInterface.§?#"§(§+%z§.BAZOOKA);
         }
         _loc2_.activeUnit.§8"#§(§+%z§.BAZOOKA);
         if(param1 == §1c§)
         {
            §8"%§.§?!W§.§!#S§(§0$N§.APOCALYPSE_NOW);
            Application.scene.§7#o§.§1"§.§<#-§(§2%o§.§!§,§0$N§.APOCALYPSE_NOW);
         }
      }
      
      override protected function §6&§(param1:uint) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc3_ in _loc2_)
         {
            _loc3_.lastWeapon = §'%_§.getWeapon(§+%z§.BAZOOKA);
         }
         this.§0%I§();
         if(param1 > §1c§ - 1)
         {
            this.§0q§(_loc2_);
         }
      }
      
      private function §0q§(param1:Vector.<§+%]§>) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Point = null;
         for each(_loc2_ in param1)
         {
            if(!_loc2_.squad.isAi())
            {
               _loc3_ = §=z§.§-L§(_loc2_);
               if(_loc2_.hp - §2?§.value <= 0)
               {
                  §'"$§.§]#I§(null,_loc2_.x,_loc2_.y,_loc2_,§2?§.value,0,0,false,true);
               }
               else
               {
                  _loc2_.attributes.hp.change(-§2?§.value);
                  _loc2_.attributes.hp.§@#§(§2?§.value);
                  §2!H§.§;!x§(String(§2?§.value),§2!H§.§8"<§,_loc2_.x,_loc2_.y - 10,20);
                  DamageEvent.§!"2§(null,_loc2_,§2?§.value,§0%v§.§'%e§);
               }
               §1"-§.explode(§;n§.§@"W§,_loc2_.x,_loc2_.y,10);
               if(_loc3_)
               {
                  §=z§.§5!u§(_loc2_,_loc3_);
               }
            }
         }
      }
      
      private function §2#Z§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Array = null;
         var _loc4_:§"Z§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc2_ in _loc1_)
         {
            _loc2_.attributes.attack.§3e§(§'!h§.value);
            _loc2_.attributes.armor.§3e§(§0#_§.value);
            _loc2_.attributes.hp.§3e§(§5$D§ * _loc2_.attributes.hp.§8!R§());
            this.§<!C§[_loc2_.squad.getNumber()] = 0;
         }
         _loc3_ = §8"%§.§?!W§.§4"m§.§+!0§();
         for each(_loc4_ in _loc3_)
         {
            Application.scene.§7#o§.§0$i§(_loc4_).§>,§();
         }
      }
      
      private function §=$ §() : void
      {
         var _loc2_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc1_:uint = §#$R§.§><§;
         _loc2_ = currentUnit.squad.getNumber();
         var _loc3_:uint = uint(this.§<!C§[_loc2_]);
         var _loc4_:Vector.<BackpackItem> = §8"%§.§?!W§.§4"m§.§+"@§().getBattleBackpack().getOrderedWeapons();
         this.§2y§[_loc2_] = {};
         var _loc5_:uint = 0;
         while(_loc5_ < _loc1_)
         {
            _loc6_ = (_loc3_ + _loc5_) % _loc1_;
            _loc7_ = uint(_loc5_ / §+#v§);
            this.§@%=§(_loc4_,_loc6_,_loc7_,_loc2_);
            _loc5_++;
         }
         this.§<!C§[_loc2_] = (_loc3_ + §+#v§) % _loc1_;
      }
      
      private function §@%=§(param1:Vector.<BackpackItem>, param2:uint, param3:uint, param4:uint) : void
      {
         var _loc9_:BackpackItem = null;
         var _loc10_:int = 0;
         var _loc5_:uint = §#$R§.§5$4§;
         var _loc6_:uint = §#$R§.§><§;
         var _loc7_:Object = this.§2y§[param4];
         var _loc8_:int = 0;
         while(_loc8_ < _loc5_)
         {
            _loc9_ = param1[param2 + _loc6_ * _loc8_];
            if(_loc9_)
            {
               _loc10_ = _loc9_.§&">§();
               _loc7_[_loc9_] = _loc10_;
               if(_loc10_ < param3 - 1)
               {
                  _loc9_.§=%;§(param3 - 1);
               }
            }
            _loc8_++;
         }
      }
      
      private function §0%I§() : void
      {
         var _loc2_:uint = 0;
         var _loc6_:uint = 0;
         var _loc1_:uint = §#$R§.§><§;
         _loc2_ = currentUnit.squad.getNumber();
         var _loc3_:uint = uint(this.§<!C§[_loc2_]);
         var _loc4_:Vector.<BackpackItem> = §8"%§.§?!W§.§4"m§.§+"@§().getBattleBackpack().getOrderedWeapons();
         var _loc5_:uint = 0;
         while(_loc5_ < _loc1_)
         {
            _loc6_ = (_loc3_ + _loc5_) % _loc1_;
            this.§9#w§(_loc4_,_loc6_,_loc2_);
            _loc5_++;
         }
      }
      
      private function §9#w§(param1:Vector.<BackpackItem>, param2:uint, param3:uint) : void
      {
         var _loc8_:BackpackItem = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:uint = §#$R§.§5$4§;
         var _loc5_:uint = §#$R§.§><§;
         var _loc6_:Object = this.§2y§[param3];
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_)
         {
            _loc8_ = param1[param2 + _loc5_ * _loc7_];
            if(_loc8_)
            {
               _loc9_ = int(_loc6_[_loc8_]);
               _loc10_ = _loc8_.§&">§();
               if(_loc9_ < _loc10_)
               {
                  _loc8_.§=%;§(_loc10_);
               }
            }
            _loc7_++;
         }
      }
      
      private function § $S§() : void
      {
         var _loc1_:int = 0;
         _loc1_ = §8"%§.§?!W§.§4"m§.§+%J§();
         var _loc2_:Object = §,#;§.§8=§(_loc1_);
         if(_loc2_.level < this.§;%,§)
         {
            this.§;%,§ = _loc2_.level;
            §8"%§.§?!W§.§!#S§(§0%§.§2]§(§0$N§.§<N§("ACTION_COMBAT_BONUS_MESSAGE"),_loc2_.level >> 1,_loc2_.bonus));
         }
      }
   }
}

