package §?%J§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "L§.RebelRobotTurret;
   import § $q§.§3U§;
   import § &5§.§%$O§;
   import §!!!§.§7&%§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.§=t§;
   import §+%S§.§["4§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§76§;
   import §4#`§.BattleInterface;
   import §4$b§.§6!G§;
   import §4'§.§4$&§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<!W§.*;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=!p§.§8#x§;
   import §="z§.§6a§;
   import §?#g§.Race;
   import §?$7§.*;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[!`§.§1%0§;
   import §[" §.§^"c§;
   import §[$<§.§>"9§;
   import §]#b§.§8!d§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import api.com.adobe.json.JSON;
   import com.adobe.images.PNGEncoder;
   import com.greensock.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.plugins.*;
   import config.§;"I§;
   import config.§`!a§;
   import config.achievements.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §0%d§ extends §-"o§
   {
      
      private static const §>%b§:§&$2§ = new §&$2§(9);
      
      private static const §,"i§:Number = 0.15;
      
      private var §9%o§:§&$2§ = new §&$2§(2);
      
      private var §>%Y§:§&$2§ = new §&$2§(0);
      
      private var §?#C§:§&$2§ = new §&$2§(0);
      
      private var boss:§+%]§;
      
      private var dummy:§&"T§;
      
      private var lifeBar:Sprite;
      
      private var §"%?§:int;
      
      public function §0%d§(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         this.§"%?§ = param1.length;
         var _loc4_:uint = uint(4 + 1.8 * param2);
         this.§?#C§.value = §>%b§.value;
         this.§9%o§.value += int(§,"i§ * param2);
         var _loc5_:UserProfile = UserProfile.§'#3§(§0$N§.BOT_NAME_SAMURAI_CAT,_loc4_,Race.§#%V§,1 * param2 + 2 * param2 * param3 - 10,3 + _loc4_ * 0.7,3 + _loc4_ * 0.5,§,$O§.SAMURAI);
         return new <§-!`§>[new §-!`§(§0$N§.TEAM_NAME_SAMURAI_CAT,[_loc5_])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = param1[0].§1!n§()[0];
         this.§0!I§();
         this.§6$R§();
         this.dummy = Application.scene.§,$z§();
         this.dummy.stable = true;
         super.§+$L§(param1);
         this.boss.aiMissFactor = 1;
      }
      
      private function §0!I§() : void
      {
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 2;
         var _loc1_:Boolean = §<#A§();
         var _loc2_:Vector.<§>%Q§> = new Vector.<§>%Q§>(0);
         if(§^i§)
         {
            if(§8"%§.§?!W§.§^!U§().§^"g§.getId() < §8"e§.HARD.getId())
            {
               _loc2_.push(new §>%Q§(§+%z§.SHURIKEN_U2A_TRAJECTORY,0.05),new §>%Q§(§+%z§.SHURIKEN_U2B_SAW,0.05),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,0.1,1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.3),new §>%Q§(§+%z§.CANNON_UPG_1,0.2),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,0.7));
            }
            else
            {
               _loc2_.push(new §>%Q§(§+%z§.§,!_§,_loc1_ ? 0.6 : 0.9),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2A_EYE,_loc1_ ? 0.5 : 0.2),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2B,0.5));
               if(_loc1_)
               {
                  _loc2_.push(new §>%Q§(§+%z§.CANNON_UPG_3A,0.7),new §>%Q§(§+%z§.CANNON_UPG_3B_STICKY,0.7),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.4),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.7),new §>%Q§(§+%z§.ION_CANNON,0.9),new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.7),new §>%Q§(§+%z§.§[$X§,0.7));
               }
               else
               {
                  _loc2_.push(new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.5),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.2));
               }
            }
         }
         else
         {
            _loc2_.push(new §>%Q§(§+%z§.SHURIKEN,1.1),new §>%Q§(§+%z§.§4!r§,0.6),new §>%Q§(§+%z§.HOLY_GRENADE,0.1,2),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,0.05,1),new §>%Q§(§+%z§.SNIPER_RIFLE,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.1),new §>%Q§(§+%z§.CANNON,0.1,1),new §>%Q§(§+%z§.§!`§,0.3));
         }
         this.boss.aiArsenal = new §,%8§(_loc2_,uint.MAX_VALUE,!§^i§);
         this.boss.§9&2§();
         this.boss.addEventListener(§0%v§.DISPOSED,this.onBossDisposed,false,§[!F§.§6#@§);
         this.boss.addEventListener(§0%v§.§^$3§,this.onBossSink);
         this.boss.addEventListener(§0%v§.§&!D§,this.§'$R§,false,§[!F§.§^!?§);
         §?%k§(this.boss);
      }
      
      private function onBossSink(param1:Event) : void
      {
         dispatchEvent(new §7%K§(BossAchieves.§8$^§));
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         --this.§?#C§.value;
         if(this.§?#C§.value > 0)
         {
            this.dummy.stable = false;
            this.§1&§();
         }
         else
         {
            this.dummy.disposed = true;
         }
         this.lifeBar.getChildAt(this.§?#C§.value).addEventListener(Event.ENTER_FRAME,this.§'"c§);
      }
      
      private function §1&§() : void
      {
         var curSquad:§"Z§;
         var revivedProfile:UserProfile;
         var attempts:int;
         var newUnit:§+%]§;
         var position:Point = null;
         this.boss.removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         this.boss.removeEventListener(§0%v§.§^$3§,this.onBossSink);
         curSquad = this.boss.squad;
         revivedProfile = this.boss.record.§ "P§();
         attempts = §-#M§.§-!e§ * (§^i§ ? 0.5 : 1);
         position = §-#M§.§,#e§(§-#M§.§,s§,true,attempts) || §-#M§.§5!-§(true);
         §%$O§.§3%R§(Application.scene,position.x,position.y);
         §1"-§.explode(§;n§.§8!-§,position.x,position.y,40);
         §8$a§.§%!E§(14,function():void
         {
            dummy.stable = true;
         });
         newUnit = Race.create(revivedProfile,position.x,position.y);
         newUnit.§0!e§ = false;
         curSquad.addUnit(newUnit);
         this.boss.buffs.§2!6§(newUnit);
         this.boss = newUnit;
         this.§0!I§();
         this.§+J§();
         Application.scene.§7#o§.§"W§(this.boss);
         if(§^i§)
         {
            §>!r§.§6!d§(this.boss);
         }
      }
      
      private function §+J§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         this.§>%Y§.value = this.§9%o§.value * (§>%b§.value - this.§?#C§.value);
         §5"O§.increaseAttack(this.boss,this.§>%Y§.value,§`"C§.§-"^§,§["4§.§6>§);
         if(§^i§)
         {
            _loc1_ = §8"%§.§?!W§.§4"m§.§="T§(this.boss);
            for each(_loc2_ in _loc1_)
            {
               §5"O§.increaseAttack(_loc2_,this.§9%o§.value,§`"C§.§-"^§,§["4§.§6>§);
            }
         }
      }
      
      private function §'"c§(param1:Event) : void
      {
         var _loc2_:DisplayObject = DisplayObject(param1.currentTarget);
         _loc2_.scaleX += 0.02;
         _loc2_.scaleY += 0.02;
         _loc2_.alpha -= 0.02;
         if(_loc2_.alpha <= 0)
         {
            _loc2_.visible = false;
            _loc2_.removeEventListener(Event.ENTER_FRAME,this.§'"c§);
         }
      }
      
      private function §6$R§() : void
      {
         var _loc1_:BattleInterface = null;
         var _loc2_:String = null;
         var _loc7_:§6!G§ = null;
         var _loc8_:MovieClip = null;
         this.lifeBar = new Sprite();
         _loc1_ = Application.scene.§7#o§;
         _loc2_ = "team" + this.boss.squad.getNumber();
         var _loc3_:MovieClip = _loc1_.getChildByName(_loc2_) as MovieClip;
         var _loc4_:Vector.<int> = §8"%§.§?!W§.§^!U§().missionIds;
         var _loc5_:int = 28;
         if(this.§"%?§ == 1)
         {
            if(_loc4_.length == 2)
            {
               if(_loc4_[0] == _loc4_[1])
               {
                  _loc3_.y += _loc5_ * this.boss.squad.getNumber();
               }
               else if(this.boss.squad.getNumber() == 1)
               {
                  _loc3_.y += _loc5_;
                  (_loc1_.getChildByName("team2") as MovieClip).y = (_loc1_.getChildByName("team2") as MovieClip).y + _loc5_;
               }
               else if(this.boss.squad.getNumber() == 2)
               {
                  _loc3_.y += _loc5_;
               }
            }
            else
            {
               _loc3_.y += _loc5_;
            }
         }
         else if(this.§"%?§ == 2)
         {
            if(_loc4_[0] == _loc4_[1])
            {
               _loc3_.y += _loc5_ * (this.boss.squad.getNumber() - 1);
            }
            else if(this.boss.squad.getNumber() == 2)
            {
               _loc3_.y += _loc5_;
               (_loc1_.getChildByName("team3") as MovieClip).y = (_loc1_.getChildByName("team3") as MovieClip).y + _loc5_;
            }
            else if(this.boss.squad.getNumber() == 3)
            {
               _loc3_.y += _loc5_;
            }
         }
         var _loc6_:int = 0;
         while(_loc6_ < §>%b§.value)
         {
            _loc7_ = new §6!G§(this.boss.record.getRace(),this.boss.record.§5"L§());
            _loc7_.§!$B§();
            _loc8_ = _loc7_.getClip();
            §3!3§.§>!j§(§3!3§.§#"R§(_loc8_));
            _loc8_.scaleX = 0.5;
            _loc8_.scaleY = 0.5;
            _loc8_.alpha = 0.85;
            _loc8_.x = _loc8_.width * _loc6_ + 5;
            this.lifeBar.addChild(_loc8_);
            _loc6_++;
         }
         _loc3_.addChild(this.lifeBar);
         this.lifeBar.y -= 12;
         this.lifeBar.x += 10;
      }
      
      override public function clear() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < §>%b§.value)
         {
            this.lifeBar.removeChildAt(0);
            _loc1_++;
         }
         this.lifeBar.parent.removeChild(this.lifeBar);
         this.lifeBar = null;
         this.boss.removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         this.boss.removeEventListener(§0%v§.§^$3§,this.onBossSink);
         this.boss.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         this.boss = null;
         this.dummy = null;
         super.clear();
      }
   }
}

