package §4!!§
{
   import §!$d§.*;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&%X§.§<$M§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§%#j§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §5!9§.§6$,§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §<"?§.*;
   import §<%E§.§,$2§;
   import §?$7§.§+#N§;
   import §?$7§.§6J§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import §`%&§.§5$1§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §2$a§ extends §6#I§
   {
      
      private static const §9!"§:§&$2§ = new §&$2§(100);
      
      private static const §8$?§:§&$2§ = new §&$2§(30);
      
      private static const §<&%§:§&$2§ = new §&$2§(40);
      
      private static const §2#o§:§&$2§ = new §&$2§(10);
      
      private static const §'%b§:§&$2§ = new §&$2§(4);
      
      private var paramSet:§5$n§;
      
      private var §7"b§:Boolean;
      
      private var extraDamage:Boolean;
      
      private var blockIncreaseAttack:Boolean;
      
      private var inverse:Boolean;
      
      private var §#%`§:int;
      
      private var durationDirect:int;
      
      private var durationArea:int;
      
      public function §2$a§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint)
      {
         super(param1,param2.x,param2.y,false,§&i§);
         this.paramSet = param3;
         §-"e§ = false;
         initialize(param2,param3.ammoClassName);
         physParams.ignoresTerrain = true;
         §§push(§§findproperty(§,q§));
         var _temp_1:* = new <§-&§>[§-&§.IGNORE_MAGNET];
         §§pop().§,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         §3$1§ = false;
         Application.scene.§@$I§.§1$+§(this);
         §^"F§(param4,param5);
         §`4§ = §]$S§;
      }
      
      public function attachTrail(param1:uint = 8421504, param2:uint = 10526880) : void
      {
         §1"-§.attachTrail(this,10,6,param1,param2,1);
      }
      
      override protected function §%$e§(param1:CollisionEvent) : void
      {
         if(Boolean(param1.other) && param1.other is §+%]§)
         {
            this.§7"b§ = true;
         }
         this.§#%`§ = (this.§7"b§ ? §8$?§.value : §<&%§.value) + (this.inverse ? §2#o§.value : 0);
         var _loc2_:int = 0;
         if(this.§7"b§)
         {
            _loc2_ = this.§8A§(param1.other as §+%]§);
         }
         else
         {
            this.§!$-§();
         }
         super.§%$e§(param1);
         var _loc3_:int = this.paramSet.damage.value + (this.§7"b§ && this.extraDamage ? _loc2_ * §'%b§.value : 0);
         if(this.§7"b§ && this.extraDamage && _loc2_ > 0)
         {
            §-#M§.§^%v§(x,y,§<H§.§@k§ * 3);
         }
         inflictDamage(param1.other,_loc3_,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true,true,false);
         §1"-§.explode(§;n§.§"#6§,this.x,this.y,10);
         disposed = true;
      }
      
      private function §!$-§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc2_ in _loc1_)
         {
            if(§<H§.§8!P§(_loc2_,this.x,this.y,§9!"§.value,false))
            {
               this.§8A§(_loc2_);
            }
         }
      }
      
      private function §8A§(param1:§+%]§) : int
      {
         var _loc2_:§%#j§ = null;
         var _loc5_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:String = null;
         var _loc15_:String = null;
         _loc2_ = param1.buffs.getBuff(§%#j§.NAME) as §%#j§;
         var _loc3_:Boolean = _loc2_ ? _loc2_.§"#r§() : false;
         var _loc4_:int = _loc2_ ? _loc2_.§<;§() : 0;
         _loc5_ = param1.attributes.armor.value;
         var _loc6_:int = param1.attributes.attack.value;
         var _loc7_:int = _loc5_ + (_loc3_ ? _loc4_ : 0);
         var _loc8_:int = _loc6_ + (_loc3_ ? 0 : _loc4_);
         var _loc9_:Boolean = this.inverse ? _loc7_ > this.§#%`§ : _loc8_ > this.§#%`§;
         var _loc10_:Boolean = (_loc9_) || this.blockIncreaseAttack;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         if(!param1.disposed && !param1.squad.isAi() && _loc9_ && _loc10_ && (!_loc2_ || !_loc2_.getBlocked()))
         {
            _loc12_ = this.inverse ? int(_loc7_ - this.§#%`§) : int(_loc8_ - this.§#%`§);
            _loc11_ = _loc2_ ? (this.inverse ? int(_loc5_ - this.§#%`§) : int(_loc6_ - this.§#%`§)) : _loc12_;
            if((_loc2_ ? Boolean(_loc11_ >= 0) : Boolean(_loc12_ > 0)) && (!owner.§+&,§(param1) || (!_loc2_ || this.inverse == _loc3_)))
            {
               _loc13_ = this.§7"b§ ? this.durationDirect : this.durationArea;
               param1.buffs.replace(new §%#j§(_loc12_,this.blockIncreaseAttack,this.inverse,_loc13_));
               _loc14_ = this.inverse ? §2!H§.§@!]§ : §2!H§.§8"<§;
               _loc15_ = this.inverse ? §0$N§.BONUS_ARMOR : §0$N§.BONUS_ATTACK;
               _loc15_ = §0%§.format(_loc15_,{"value":_loc11_}).replace("+","-");
               §2!H§.§'!i§(_loc15_,_loc14_,param1.x + param1.width,param1.y + param1.height * 0.5,20);
            }
         }
         return _loc11_;
      }
      
      public function §>!R§() : void
      {
         this.extraDamage = true;
      }
      
      public function §=$c§() : void
      {
         this.blockIncreaseAttack = true;
      }
      
      public function §!$3§() : void
      {
         this.inverse = true;
      }
      
      public function get §=$Q§() : Boolean
      {
         return this.§7"b§;
      }
      
      public function §>"t§(param1:int, param2:int) : void
      {
         this.durationDirect = param1;
         this.durationArea = param2;
         §8"%§.§?!W§.§>$y§("setup theif attack ammo durations..." + " area = " + param1 + ", direct = " + param1);
      }
   }
}

