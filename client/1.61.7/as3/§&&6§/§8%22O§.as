package §&&6§
{
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##j§.§'"%§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §5!,§.§9$h§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=&!§.§<$Z§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §?$L§.§0"-§;
   import §@!i§.§5%8§;
   import §@!i§.§;#L§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!`§.VoidZone;
   import §[$P§.§+H§;
   import §[%'§.§<"G§;
   import §[%§.Cat;
   import §]$v§.§+%n§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.§5%T§;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.§!>§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §8"O§ extends §-"o§
   {
      
      private static const §@#v§:String = §0$N§.§<N§("GRAVITY_MASTER_NAME");
      
      private static const §5!J§:uint = 4;
      
      private static const §>"c§:uint = 25;
      
      private static const §;"z§:uint = 200;
      
      private static const §3%O§:uint = 600;
      
      private const §4#t§:Vector.<Point>;
      
      private var boss:§+%]§;
      
      private var §=! §:Vector.<VoidZone>;
      
      private var §9§:VoidZone;
      
      private var §#G§:int;
      
      private var §[!j§:int;
      
      private var §-"g§:uint = 0;
      
      private var §"!o§:§+%]§;
      
      public function §8"O§(param1:Boolean = false)
      {
         §§push(this);
         var _temp_6:* = new <Point>[new Point(899,525),new Point(836,978),new Point(836,978),new Point(1188,710),new Point(1295,1331),new Point(1433,680),new Point(1583,1179),new Point(1728,568),new Point(1864,292),new Point(2329,555),new Point(441,1032),new Point(2565,890)];
         var _temp_11:* = new <Point>[new Point(899,525),new Point(836,978),new Point(836,978),new Point(1188,710),new Point(1295,1331),new Point(1433,680),new Point(1583,1179),new Point(1728,568),new Point(1864,292),new Point(2329,555),new Point(441,1032),new Point(2565,890)];
         §§pop().§4#t§ = new <Point>[new Point(899,525),new Point(836,978),new Point(836,978),new Point(1188,710),new Point(1295,1331),new Point(1433,680),new Point(1583,1179),new Point(1728,568),new Point(1864,292),new Point(2329,555),new Point(441,1032),new Point(2565,890)];
         super(param1);
         resource = new §@#%§("gravitymaster.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(5,1.2,1,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§@#v§,[UserProfile.§'#3§(§@#v§,_loc4_.level,Race.§9"B§,(920 + 4.5 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§) * 0.9,_loc4_.level * 1.1,_loc4_.level * 1.5,§,$O§.BOSS_GRAVITY_MASTER_HELM,§]!E§.BOSS_GRAVITY_MASTER_SHIELD,§5%T§.§2#l§)])];
         return new <§-!`§>[new §-!`§(§@#v§,[UserProfile.§'#3§(§@#v§,_loc4_.level,Race.§9"B§,(920 + 4.5 * _loc4_.§?"-§ * §,!c§.§=$k§(param1) + 20 * _loc4_.§3"`§) * 0.9,_loc4_.level * 1.1,_loc4_.level * 1.5,§,$O§.BOSS_GRAVITY_MASTER_HELM,§]!E§.BOSS_GRAVITY_MASTER_SHIELD,§5%T§.§2#l§)])];
      }
      
      private function §0!I§(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.§^%l§),new §>%Q§(§+%z§.§[$X§),new §>%Q§(§+%z§.BLIZZARD),new §>%Q§(§+%z§.ANTITOXIN),new §>%Q§(§+%z§.BANDAGE,0.7,1)];
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.§^%l§),new §>%Q§(§+%z§.§[$X§),new §>%Q§(§+%z§.BLIZZARD),new §>%Q§(§+%z§.ANTITOXIN),new §>%Q§(§+%z§.BANDAGE,0.7,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§^%l§),new §>%Q§(§+%z§.§[$X§),new §>%Q§(§+%z§.BLIZZARD),new §>%Q§(§+%z§.ANTITOXIN),new §>%Q§(§+%z§.BANDAGE,0.7,1)],99,false);
         §-#M§.§&"r§(param1);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = param1[0].§1!n§()[0];
         this.§0!I§(this.boss);
         this.boss.buffs.§6C§(§=z§.NAME);
         this.boss.buffs.place(new §=z§());
         this.boss.buffs.place(new §@$J§());
         this.boss.addEventListener(§0%v§.§&!D§,this.§'$R§);
         this.boss.addEventListener(§0%v§.§'$p§,this.§+%M§);
         this.§#G§ = this.boss.hp - §;"z§;
         this.§[!j§ = this.boss.hp - this.boss.hp / §5!J§;
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:VoidZone = null;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            this.§=! § = new Vector.<VoidZone>();
            this.§!$x§();
            this.§9§ = this.§=! §[0];
            this.§5W§();
            this.boss.§3%1§(true);
            this.boss.graphics.stay();
            this.boss.graphics.lock();
         }
         else if(this.§"!o§ == this.boss)
         {
            if(this.§=! §.length > 1)
            {
               this.§^!§();
            }
         }
         if(param1 > 1)
         {
            for each(_loc3_ in this.§=! §)
            {
               _loc3_.update();
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(!this.boss.disposed && currentUnit == this.boss)
         {
            this.§5W§();
         }
         this.§"!o§ = currentUnit;
      }
      
      private function §!$x§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:uint = 0;
         var _loc5_:Point = null;
         _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(this.boss);
         _loc2_ = VoidZone.§!"@§ + this.§-"g§;
         var _loc3_:int = this.§4#t§.length - 1;
         var _loc4_:uint = 50;
         _loc5_ = this.§4#t§[int(§8"%§.randomSeed.§,!q§(0,_loc3_))];
         var _loc6_:uint = 0;
         var _loc7_:Vector.<§+%]§> = §<H§.§5"]§(_loc5_.x,_loc5_.y,_loc2_,_loc1_);
         while((_loc7_.length > 0 || this.§;$[§(_loc5_)) && _loc6_++ < _loc4_)
         {
            _loc5_ = this.§4#t§[int(§8"%§.randomSeed.§,!q§(0,_loc3_))];
         }
         this.§=! §.push(new VoidZone(this.boss,_loc5_.x,_loc5_.y,this.§-"g§));
         this.§4#t§.splice(this.§4#t§.indexOf(_loc5_),1);
      }
      
      private function §;$[§(param1:Point) : Boolean
      {
         var _loc2_:VoidZone = null;
         for each(_loc2_ in this.§=! §)
         {
            if(§-q§.distance(param1.x,param1.y,_loc2_.x,_loc2_.y) < §3%O§)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §5W§() : void
      {
         var _loc3_:VoidZone = null;
         var _loc4_:uint = 0;
         var _loc1_:uint = this.§=! §.length;
         var _loc2_:Vector.<VoidZone> = new Vector.<VoidZone>();
         for each(_loc3_ in this.§=! §)
         {
            if(this.§9§ != _loc3_ || _loc1_ == 1)
            {
               _loc2_.push(_loc3_);
            }
         }
         _loc4_ = §8"%§.randomSeed.§,!q§(0,_loc2_.length - 1);
         this.§9§ = _loc2_[_loc4_];
         §<H§.§"%8§(this.boss,_loc2_[_loc4_].x,_loc2_[_loc4_].y);
         _loc2_[_loc4_].§4#$§();
      }
      
      private function §^!§() : void
      {
         var _loc1_:VoidZone = null;
         for each(_loc1_ in this.§=! §)
         {
            if(this.§9§ != _loc1_)
            {
               _loc1_.§#!$§();
            }
         }
      }
      
      public function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:VoidZone = null;
         if(!this.boss.disposed && this.§#G§ > 0 && this.boss.hp < this.§#G§)
         {
            _loc2_ = int(§>"c§);
            while(this.boss.hp + §;"z§ < this.§#G§)
            {
               _loc2_ += §>"c§;
               this.§#G§ -= §;"z§;
            }
            this.§-"g§ += _loc2_;
            for each(_loc3_ in this.§=! §)
            {
               _loc3_.§0#`§(_loc2_);
            }
            this.§#G§ -= §;"z§;
         }
         if(this.§=! §.length < §5!J§ && this.boss.hp < this.§[!j§)
         {
            this.§!$x§();
            this.§[!j§ -= this.boss.attributes.hp.§#&"§() / §5!J§;
         }
      }
      
      public function §+%M§(param1:Event) : void
      {
         if(!this.boss.disposed)
         {
            this.boss.setSpeedXY(0,0);
            this.boss.x = this.§9§.x;
            this.boss.y = this.§9§.y;
            this.boss.§3%1§(true);
            this.boss.stable = true;
         }
      }
      
      override public function clear() : void
      {
         this.boss.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         this.boss.removeEventListener(§0%v§.§'$p§,this.§+%M§);
         this.boss = null;
      }
   }
}

