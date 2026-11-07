package §?%J§
{
   import §!!!§.*;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§'$h§;
   import §##j§.§0!-§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'$j§.QuestGiftItem;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#H§.§#$A§;
   import §2#H§.§,#V§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §3%?§.§=E§;
   import §4!!§.§6$V§;
   import §4'§.§`"q§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§8%%§;
   import §7!B§.§`s§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §<%E§.§4T§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§+l§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§9!K§;
   import config.§5%T§;
   import config.achievements.BossAchieves;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6"&§ extends §-"o§
   {
      
      private static const §9$C§:uint = 39;
      
      private static const §<$C§:uint = 35;
      
      private static const §3P§:uint = 15;
      
      private static const §4$§:uint = 20;
      
      private var boss:§+%]§;
      
      private var §^%4§:Array = [];
      
      private var clouds:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §4Z§:§5$n§;
      
      private var §4!0§:§5$n§;
      
      private var §"!o§:§+%]§;
      
      private var §?%]§:uint;
      
      private var §0&;§:Vector.<§`s§> = new Vector.<§`s§>(0);
      
      public function §6"&§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("ancientGhost.swf");
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.GHOST).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc7_:uint = 0;
         var _loc4_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc5_:uint = 210 + 37 * param2;
         var _loc6_:Number = §^i§ ? 1 + 0.15 * (param3 - 1) : 1.1;
         _loc7_ = 13 + 2 * param2;
         var _loc8_:Array = [UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_GHOST_MAIN"),_loc7_ * 0.75,Race.§+&8§,_loc5_ + 300,_loc7_ * 0.86 * _loc6_,_loc7_ * 0.7 * _loc6_,§,$O§.§;"h§,0,§5%T§.§=#b§),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_GHOST_ACOLYTE"),_loc7_ * 0.7,§0#2§.§"!w§() ? Race.§6#T§() : (§^i§ ? Race.§+#T§ : Race.§?#I§()),_loc5_ + 450,_loc7_ * 0.64 * _loc6_,_loc7_ * 0.1 * _loc6_,§,$O§.WIZARD),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_GHOST_ACOLYTE"),_loc7_ * 0.7,§0#2§.§"!w§() ? Race.§6#T§() : (§^i§ ? Race.§#%V§ : Race.§?#I§()),_loc5_ + 450,_loc7_ * 0.64 * _loc6_,_loc7_ * 0.1 * _loc6_,§,$O§.WIZARD,0,§0#2§.§"!w§() ? 0 : (§^i§ ? uint(§5%T§.§5&&§) : 0))];
         if(§^i§)
         {
            _loc4_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_GHOST_MAIN"),[_loc8_[0],_loc8_[1],_loc8_[2]]));
         }
         else
         {
            _loc4_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_GHOST_MAIN"),[_loc8_[0]]));
            _loc4_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_GHOST_ACOLYTE"),[_loc8_[1],_loc8_[2]]));
         }
         this.§?%]§ = §^i§ ? uint(param3 * 0.5) : 1;
         return _loc4_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc6_:Vector.<§>%Q§> = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>();
         if(§^i§)
         {
            _loc2_ = param1[0].§1!n§();
         }
         else
         {
            _loc2_.push(param1[0].§1!n§()[0]);
            _loc2_.push(param1[1].§1!n§()[0]);
            _loc2_.push(param1[1].§1!n§()[1]);
         }
         this.boss = _loc2_[0];
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 5;
         _loc3_ = §8"%§.§?!W§.§^!U§().§'#t§();
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.7 : 1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 0.8 : 0.6),new §>%Q§(§+%z§.ANTITOXIN,0.7,3),new §>%Q§(§+%z§.BANDAGE,0.7,3),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.3,§2a§ ? 0 : -1),new §>%Q§(§+%z§.§7&E§,0.3,§2a§ ? 0 : -1)];
         var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.7 : 1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 0.8 : 0.6),new §>%Q§(§+%z§.ANTITOXIN,0.7,3),new §>%Q§(§+%z§.BANDAGE,0.7,3),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.3,§2a§ ? 0 : -1),new §>%Q§(§+%z§.§7&E§,0.3,§2a§ ? 0 : -1)];
         var _temp_3:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.7 : 1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 0.8 : 0.6),new §>%Q§(§+%z§.ANTITOXIN,0.7,3),new §>%Q§(§+%z§.BANDAGE,0.7,3),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.3,§2a§ ? 0 : -1),new §>%Q§(§+%z§.§7&E§,0.3,§2a§ ? 0 : -1)];
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.7 : 1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 0.8 : 0.6),new §>%Q§(§+%z§.ANTITOXIN,0.7,3),new §>%Q§(§+%z§.BANDAGE,0.7,3),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.3,§2a§ ? 0 : -1),new §>%Q§(§+%z§.§7&E§,0.3,§2a§ ? 0 : -1)];
         var _temp_8:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.7 : 1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 0.8 : 0.6),new §>%Q§(§+%z§.ANTITOXIN,0.7,3),new §>%Q§(§+%z§.BANDAGE,0.7,3),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.3,§2a§ ? 0 : -1),new §>%Q§(§+%z§.§7&E§,0.3,§2a§ ? 0 : -1)];
         var _temp_9:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.7 : 1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 0.8 : 0.6),new §>%Q§(§+%z§.ANTITOXIN,0.7,3),new §>%Q§(§+%z§.BANDAGE,0.7,3),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.3,§2a§ ? 0 : -1),new §>%Q§(§+%z§.§7&E§,0.3,§2a§ ? 0 : -1)];
         var _loc4_:Vector.<§>%Q§> = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc3_ ? 0.7 : 1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,_loc3_ ? 0.7 : 0.9),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 0.8 : 0.6),new §>%Q§(§+%z§.ANTITOXIN,0.7,3),new §>%Q§(§+%z§.BANDAGE,0.7,3),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.3,§2a§ ? 0 : -1),new §>%Q§(§+%z§.§7&E§,0.3,§2a§ ? 0 : -1)];
         this.boss.aiArsenal = new §,%8§(_loc4_,uint.MAX_VALUE,true,true);
         if(_loc3_)
         {
            this.boss.aiArsenal.subtractWeapons([§+%z§.§8#d§,§+%z§.FREEZING_BAZOOKA_UPG1A,§+%z§.FREEZING_BAZOOKA_UPG1B]);
            §§push(this.boss.aiArsenal);
            §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.5),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.7,1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.5),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.5)],uint.MAX_VALUE);
         }
         this.boss.buffs.place(new §3#j§());
         this.boss.clip.alpha = 0.65;
         this.boss.addEventListener(§0%v§.§&!D§,this.§?$u§);
         var _loc5_:uint = 0;
         while(_loc5_ < _loc2_.length - 1)
         {
            this.§^%4§[_loc5_] = _loc2_[_loc5_ + 1];
            this.§^%4§[_loc5_].aiMissFactor = 1;
            this.§^%4§[_loc5_].aiShotPower = 5;
            var _temp_16:* = new <§>%Q§>[new §>%Q§(§+%z§.§8#d§,1),new §>%Q§(§+%z§.SNIPER_RIFLE,0.9),new §>%Q§(§+%z§.§!`§,_loc3_ ? 0.7 : 1)];
            _loc6_ = new <§>%Q§>[new §>%Q§(§+%z§.§8#d§,1),new §>%Q§(§+%z§.SNIPER_RIFLE,0.9),new §>%Q§(§+%z§.§!`§,_loc3_ ? 0.7 : 1)];
            this.§^%4§[_loc5_].aiArsenal = new §,%8§(_loc6_,uint.MAX_VALUE,true,false,true);
            if(_loc3_)
            {
               this.§^%4§[_loc5_].aiArsenal.subtractWeapons([§+%z§.§8#d§,§+%z§.FREEZING_BAZOOKA_UPG1A,§+%z§.FREEZING_BAZOOKA_UPG1B]);
               this.§^%4§[_loc5_].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,1,30),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.5),new §>%Q§(§+%z§.BLIZZARD,0.8),new §>%Q§(§+%z§.VILE_PUMPKIN,0.5),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.5)],uint.MAX_VALUE);
            }
            this.§^%4§[_loc5_].buffs.place(new §3#j§());
            this.§^%4§[_loc5_].addEventListener(§0%v§.§&!D§,this.§?$u§);
            _loc5_++;
         }
         super.§+$L§(param1);
         this.§4Z§ = new §5$n§();
         this.§4Z§.damageRadius = new §&$2§(§<$C§);
         this.§4Z§.explosionRadius = new §&$2§(§3P§);
         this.§4Z§.damage = new §&$2§(§9$C§);
         this.§4!0§ = this.§4Z§.clone();
         this.§4!0§.damage = new §&$2§(§9$C§ * 2);
         Application.scene.§-%[§(new ColorTransform(1,1,1,1,-66,-66,-66));
         Application.scene.§6%Z§(new ColorTransform(1,1,1,1,-98,-98,-98));
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§&"T§ = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:§+%]§ = null;
         var _loc7_:Vector.<§+%]§> = null;
         var _loc8_:uint = 0;
         var _loc9_:§+%]§ = null;
         if(param1 == 1)
         {
            this.§"!o§ = this.boss;
         }
         if(param2.squad.isAi())
         {
            this.§;&"§();
            if(this.clouds.length == 1)
            {
               this.clouds[0].clip.gotoAndPlay("vanishing");
               _loc6_ = §8"%§.§?!W§.§4"m§.§6"M§(this.boss)[0];
               _loc5_ = Math.PI / 360;
               _loc4_ = -5;
               while(_loc4_ < 5)
               {
                  new §9!K§(this.boss,this.clouds[0],this.§4!0§,Math.atan2(_loc6_.y - this.clouds[0].y,_loc6_.x - this.clouds[0].x) + §8"%§.randomSeed.§,!q§(-20,20) * _loc5_,50,20,30);
                  _loc4_++;
               }
            }
            else
            {
               _loc5_ = Math.PI / 2;
               for each(_loc3_ in this.clouds)
               {
                  _loc3_.clip.gotoAndPlay("vanishing");
                  _loc4_ = -5;
                  while(_loc4_ < 5)
                  {
                     new §9!K§(this.boss,_loc3_,this.§4Z§,_loc5_ + 0.1 * _loc4_,10,10,10);
                     _loc4_++;
                  }
               }
            }
            §8$a§.§%!E§(20,this.§9%"§);
         }
         else if(!param2.squad.isAi() && this.§"!o§.squad.isAi())
         {
            this.§%!L§(param2);
            _loc7_ = §8"%§.§?!W§.§4"m§.§6"M§(this.boss);
            if(_loc7_.length > 1)
            {
               _loc8_ = 0;
               for each(_loc9_ in _loc7_)
               {
                  if(_loc9_ != param2)
                  {
                     this.§%!L§(_loc9_);
                     _loc8_++;
                  }
                  if(_loc8_ >= this.§?%]§)
                  {
                     break;
                  }
               }
            }
            this.§5&'§();
         }
         if(!this.boss.disposed && param2 == this.boss)
         {
            §-#M§.§8&G§(this.boss,this.§^%4§);
         }
         this.§"!o§ = param2;
      }
      
      private function §%!L§(param1:§+%]§) : void
      {
         var _loc2_:MovieClip = §1"-§.§6%R§();
         _loc2_.scaleX = 0.1;
         _loc2_.scaleY = 0.1;
         _loc2_.addEventListener(Event.ENTER_FRAME,this.§^! §);
         var _loc3_:§&"T§ = new §&"T§();
         _loc3_.clip = _loc2_;
         _loc3_.x = param1.x;
         _loc3_.y = param1.y - 50;
         _loc3_.stable = true;
         Application.scene.§@$I§.§1$+§(_loc3_);
         this.clouds[this.clouds.length] = _loc3_;
      }
      
      private function §^! §(param1:Event) : void
      {
         var _loc2_:Number = 0.05;
         param1.currentTarget.scaleX += _loc2_;
         param1.currentTarget.scaleY += _loc2_;
         if(param1.currentTarget.scaleX >= 1 && param1.currentTarget.scaleY >= 1)
         {
            param1.currentTarget.removeEventListener(Event.ENTER_FRAME,this.§^! §);
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function §9%"§() : void
      {
         var _loc1_:§&"T§ = null;
         for each(_loc1_ in this.clouds)
         {
            _loc1_.disposed = true;
         }
         this.clouds.length = 0;
      }
      
      private function §;&"§() : void
      {
         var _loc1_:§`s§ = null;
         for each(_loc1_ in this.§0&;§)
         {
            _loc1_.disposed = true;
         }
         this.§0&;§.length = 0;
      }
      
      private function §5&'§() : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:Point = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(this.boss);
         var _loc2_:Number = Application.scene.height;
         for each(_loc3_ in _loc1_)
         {
            if(!_loc3_.stable)
            {
               _loc3_.setSpeedXY(0,0);
               _loc4_ = §>#9§.§>@§(_loc3_.x,_loc3_.y,0,_loc2_);
               if(_loc4_)
               {
                  _loc3_.y = _loc4_.y - §<H§.§-#C§;
               }
            }
            this.§0&;§.push(new §`s§(_loc3_.x,_loc3_.y,§4$§,_loc3_,this.§[4§,false));
         }
      }
      
      private function §[4§() : void
      {
         dispatchEvent(new §7%K§(BossAchieves.ANCIENT_GHOST_DONT_MOVE));
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§9%"§();
         this.§;&"§();
         this.boss.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         this.boss = null;
         this.§^%4§.length = 0;
      }
   }
}

