package §?%J§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § &5§.§0&$§;
   import §!!!§.BuySkinDialog;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#",§.ChooseFriendMenu;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#k§.§9$v§;
   import §%"1§.§+#h§;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.§5"4§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §2o§.§]#@§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4!!§.§'$V§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §;!Z§.*;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=$#§.§ "V§;
   import §=&!§.§ "^§;
   import §=7§.§?%4§;
   import §>$q§.*;
   import §>%I§.§-#f§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[!O§.§1#i§;
   import §[$<§.§>!u§;
   import §]$J§.§#"s§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import com.greensock.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.plugins.*;
   import config.§9+§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §""d§ extends §-"o§
   {
      
      private var boss:§+%]§;
      
      private var §>#G§:Vector.<§+%]§>;
      
      public function §""d§(param1:Boolean = false)
      {
         super(param1);
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§ #z§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc5_:uint = 0;
         var _loc4_:uint = §^i§ ? uint(2.2 + 1.2 * param2) : uint(5 + (Application.userProfile.§^!A§() + Application.userProfile.getLevel()) / 4);
         _loc5_ = 200 + 7 * param2 + 8 * param2 * param3;
         var _loc6_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc7_:Array = [UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_PIRATE1"),10 + _loc4_ * 2,Race.§+#T§,§^i§ ? uint(140 + _loc5_) : uint((250 + _loc4_ * 37) * (§2a§ ? 0.9 : 1)),15 + _loc4_ * 1.9,5 + _loc4_ * 1.4,§,$O§.BOSS_PIRATES),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_PIRATE2"),_loc4_ * 1.2,Race.§+#T§,§^i§ ? uint(80 + _loc5_) : uint(165 + 19 * _loc4_),1.2 * _loc4_,1.2 * _loc4_,§,$O§.AQUALUNG),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_PIRATE3"),_loc4_ * 1.2,Race.§"$H§,§^i§ ? uint(65 + _loc5_) : uint(200 + 17 * _loc4_),1.3 * _loc4_,1.2 * _loc4_,§,$O§.AQUALUNG),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_PIRATE2"),_loc4_ * 1.2,Race.§ "w§,§^i§ ? _loc5_ : uint(140 + 20 * _loc4_),1.4 * _loc4_,_loc4_,§,$O§.AQUALUNG)];
         if(§^i§)
         {
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_PIRATE"),[_loc7_[0],_loc7_[1],_loc7_[2]]));
         }
         else
         {
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_PIRATE1"),[_loc7_[0]]));
            _loc6_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_PIRATE2"),[_loc7_[1],_loc7_[2],_loc7_[3]]));
         }
         return _loc6_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:Boolean = false;
         var _loc5_:§+%]§ = null;
         var _loc6_:int = 0;
         var _loc7_:Vector.<§>%Q§> = null;
         var _loc8_:Vector.<§+%]§> = null;
         this.boss = §+%]§(param1[0].§1!n§()[0]);
         this.boss.physicModel.addEventListener(§0%v§.§^$3§,this.onBossSink);
         this.boss.buffs.place(new §3#j§());
         _loc2_ = §8"%§.§?!W§.§^!U§().§'#t§();
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.WATERMELON,0.4),new §>%Q§(§+%z§.§'#?§,0.2)];
         var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.WATERMELON,0.4),new §>%Q§(§+%z§.§'#?§,0.2)];
         var _temp_3:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.WATERMELON,0.4),new §>%Q§(§+%z§.§'#?§,0.2)];
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.WATERMELON,0.4),new §>%Q§(§+%z§.§'#?§,0.2)];
         var _loc3_:Vector.<§>%Q§> = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.WATERMELON,0.4),new §>%Q§(§+%z§.§'#?§,0.2)];
         this.boss.aiArsenal = new §,%8§(_loc3_);
         if(_loc2_)
         {
            this.boss.aiArsenal.subtractWeapons([§+%z§.§'#?§]);
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.§'&<§,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.7)],uint.MAX_VALUE);
         }
         var _loc4_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         if(!§^i§)
         {
            _loc4_ = param1[1].§1!n§();
         }
         else
         {
            _loc4_.push(param1[0].§1!n§()[1]);
            _loc4_.push(param1[0].§1!n§()[2]);
         }
         this.§>#G§ = new Vector.<§+%]§>();
         for each(_loc5_ in _loc4_)
         {
            this.§>#G§.push(_loc5_);
            _loc7_ = new <§>%Q§>[new §>%Q§(§+%z§.§?$w§),new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.CROSSBOW),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1),new §>%Q§(§+%z§.WATERMELON,0.5,0.3),new §>%Q§(§+%z§.CANNON_UPG_1,0.3)];
            _loc5_.aiArsenal = new §,%8§(_loc7_);
            if(_loc2_)
            {
               _loc5_.aiArsenal.subtractWeapons([§+%z§.CARPET_BAZOOKA,§+%z§.CARPET_BAZOOKA_UPG_1,§+%z§.CANNON,§+%z§.CANNON_UPG_1,§+%z§.CANNON_UPG_2]);
               _loc5_.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.5),new §>%Q§(§+%z§.CANNON_UPG_3A,0.65),new §>%Q§(§+%z§.CANNON_UPG_3B_STICKY,0.65),new §>%Q§(§+%z§.ROBO_PIRANHA,0.4),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.5),new §>%Q§(§+%z§.VACUUM_GRENADE,0.5),new §>%Q§(§+%z§.§^%l§,0.3)],uint.MAX_VALUE);
            }
            _loc5_.addEventListener(§0%v§.§^$3§,this.§%%N§);
            _loc5_.addEventListener(§0%v§.§&!D§,this.§43§);
         }
         _loc6_ = 0;
         while(_loc6_ < param1.length)
         {
            _loc8_ = param1[_loc6_].§1!n§();
            for each(_loc5_ in _loc8_)
            {
               _loc5_.aiMissFactor = 1;
               _loc5_.aiShotPower = 5;
            }
            _loc6_++;
         }
         Application.scene.weather = §0&$§.§2"Q§;
         super.§+$L§(param1);
      }
      
      private function onBossSink(param1:Event = null) : void
      {
         this.boss.disposed = false;
         this.boss.x = this.§8%L§();
         this.boss.y -= 10;
         this.boss.setSpeedXY(0,-40);
         this.boss.physParams.§5N§ = §9%1§.§>#T§;
         this.§!!W§();
         Application.scene.addEventListener(§0%v§.FRAME,this.§!!W§);
      }
      
      private function §%%N§(param1:Event) : void
      {
         dispatchEvent(new §7%K§(BossAchieves.PIRATE_DROWN_SUPPORTS));
      }
      
      private function §43§(param1:DamageEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function §8%L§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc4_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         do
         {
            _loc1_ = 1100 + §8"%§.randomSeed.§]#W§(0,1) * 700;
            _loc2_ = true;
            for each(_loc4_ in _loc3_)
            {
               if(Math.abs(_loc4_.x - _loc1_) < 20)
               {
                  _loc2_ = false;
                  break;
               }
            }
         }
         while(!_loc2_);
         return _loc1_;
      }
      
      private function §!!W§(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         if(this.boss != null)
         {
            _loc2_ = 0;
            while(_loc2_ < 3)
            {
               Application.scene.§,# §(this.boss.x,this.boss.y + _loc2_ * 10,10);
               §1"-§.explode(§;n§.§7q§,this.boss.x,this.boss.y + _loc2_ * 10,10);
               _loc2_++;
            }
            if(this.boss.speedY > 0)
            {
               Application.scene.removeEventListener(§0%v§.FRAME,this.§!!W§);
               _loc3_ = §6#A§.§!&6§("GirderH");
               _loc3_.rotation = 90;
               Application.scene.§+!K§(_loc3_,this.boss.x,this.boss.y + 120);
               this.boss.physParams.§5N§ = §9%1§.§&!A§;
            }
            §@%;§.play(§`!v§.§0#O§);
         }
         else
         {
            Application.scene.removeEventListener(§0%v§.FRAME,this.§!!W§);
         }
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = super.§,$j§();
         _loc1_.§`%?§ = §"%r§.BOSS_PIRATES;
         return _loc1_;
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         super.clear();
         this.boss.removeEventListener(§0%v§.DISPOSED,this.onBossSink);
         for each(_loc1_ in this.§>#G§)
         {
            _loc1_.removeEventListener(§0%v§.§^$3§,this.§%%N§);
            _loc1_.removeEventListener(§0%v§.§&!D§,this.§43§);
         }
         this.boss = null;
      }
   }
}

