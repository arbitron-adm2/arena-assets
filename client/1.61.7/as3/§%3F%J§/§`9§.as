package §?%J§
{
   import § !8§.§9%+§;
   import § "L§.§1%b§;
   import § K§.§^#V§;
   import §!$d§.§<$c§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §%&6§.§8!`§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&!m§.§-$6§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%Q§.§+$#§;
   import §+%S§.§2&>§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§%"'§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3#T§.§;'§;
   import §3#T§.§^!P§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!!§.§2&F§;
   import §4!!§.§6$V§;
   import §4#`§.§+!l§;
   import §4'§.§`"q§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §8#`§.§8!&§;
   import §9$-§.§!$W§;
   import §9%W§.§&!P§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<"L§.*;
   import §<$2§.§<%>§;
   import §<%E§.§4T§;
   import §=&6§.§8c§;
   import §>%S§.§^!V§;
   import §?"[§.§6#o§;
   import §?#g§.*;
   import §?$7§.§+#N§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.*;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[#q§.§",§;
   import §[%§.Dragon;
   import §]7§.§0'§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`v§.§!V§;
   import config.§5%T§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.StatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetVipSubscription;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.§##Z§;
   import ru.pragmatix.wormix.social.facebook.controller.§8"x§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §`9§ extends §-"o§
   {
      
      public static const §7% §:uint = 1;
      
      private static const §+V§:uint = 50;
      
      private static const §,$_§:uint = 50;
      
      private static const §%;§:uint = 200;
      
      private var boss:§+%]§;
      
      private var §%!D§:Array = [];
      
      private var §;O§:Vector.<int> = new Vector.<int>();
      
      public function §`9§(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = 0;
         _loc4_ = uint(5 + 1.8 * param2);
         var _loc5_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc6_:Array = [UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_SHAMAN1"),_loc4_,Race.§ "w§,140 + _loc4_ * 5 + 4 * _loc4_ * param3,_loc4_ * 1,_loc4_ * 0.8,§,$O§.BOSS_SHAMAN_VOODOO_MASK,0,§5%T§.§>%D§),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_SHAMAN2"),_loc4_ * 0.6,Race.§+&8§,190 + 2 * _loc4_ + 3 * _loc4_ * param3,0.6 * _loc4_,0.8 * _loc4_),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_SHAMAN2"),_loc4_ * 0.6,Race.§+&8§,170 + 2 * _loc4_ + 3 * _loc4_ * param3,0.7 * _loc4_,0.7 * _loc4_),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_SHAMAN2"),_loc4_ * 0.6,Race.§+&8§,150 + 2 * _loc4_ + 3 * _loc4_ * param3,0.8 * _loc4_,0.6 * _loc4_)];
         if(§^i§)
         {
            _loc5_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_SHAMAN1"),[_loc6_[0],_loc6_[1],_loc6_[2]]));
         }
         else
         {
            _loc5_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_SHAMAN1"),[_loc6_[0]]));
            _loc5_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_SHAMAN2"),[_loc6_[1],_loc6_[2],_loc6_[3]]));
         }
         return _loc5_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc4_:§+%]§ = null;
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
            _loc2_.push(param1[1].§1!n§()[2]);
         }
         this.boss = _loc2_[0];
         this.boss.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§?$w§),new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.CROSSBOW),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1),new §>%Q§(§+%z§.CANNON_UPG_1,0.3),new §>%Q§(§+%z§.MOLOTOV,0.3),new §>%Q§(§+%z§.RIFLE)]);
         var _loc3_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         if(_loc3_)
         {
            this.boss.aiArsenal.subtractWeapons([§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1]);
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.3),new §>%Q§(§+%z§.PUPPET_U2B_GHOSTLY,0.3),new §>%Q§(§+%z§.BLIZZARD,0.5)],uint.MAX_VALUE);
         }
         this.boss.buffs.place(new §`""§());
         var _loc5_:uint = 1;
         while(_loc5_ < _loc2_.length)
         {
            this.§;O§[_loc5_ - 1] = 0;
            _loc4_ = _loc2_[_loc5_];
            _loc4_.addEventListener(§0%v§.§&!D§,this.§[&F§);
            _loc4_.addEventListener(§0%v§.§&!D§,this.§^"d§);
            _loc4_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.MORTAR),new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.BAZOOKA_UPG_1),new §>%Q§(§+%z§.MOLOTOV,0.4),new §>%Q§(§+%z§.RIFLE),new §>%Q§(§+%z§.AK_47,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE),new §>%Q§(§+%z§.STICKY_GRENADE,0.7)]);
            _loc4_.aiArsenal.subtractWeapons([§+%z§.§"!S§]);
            if(_loc3_)
            {
               _loc4_.aiArsenal.subtractWeapons([§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1,§+%z§.SNIPER_RIFLE,§+%z§.SNIPER_RIFLE_UPG_1,§+%z§.SNIPER_RIFLE_UPG_2A,§+%z§.SNIPER_RIFLE_UPG_2B]);
               _loc4_.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.4),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.6),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.9),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.5)],uint.MAX_VALUE);
            }
            this.§%!D§.push(_loc4_);
            _loc5_++;
         }
         for each(_loc4_ in _loc2_)
         {
            _loc4_.aiMissFactor = 1;
            _loc4_.aiShotPower = 5;
         }
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         if(§8"%§.§?!W§.§4"m§.activeUnit == this.boss && !this.boss.disposed)
         {
            _loc3_ = §8"%§.§?!W§.§4"m§.§="T§(this.boss);
            for each(_loc4_ in _loc3_)
            {
               new §2&F§(this.boss,this.boss.x,this.boss.y,_loc4_,§,$_§);
            }
            new §2&F§(this.boss,this.boss.x,this.boss.y,this.boss,§+V§);
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(this.§%!D§.length);
         while(_loc2_ < _loc3_)
         {
            if(this.§;O§[_loc2_] > 0)
            {
               this.§;O§[_loc2_] = -1;
            }
            _loc2_++;
         }
      }
      
      private function §^"d§(param1:DamageEvent) : void
      {
         if(Boolean(param1.victim.disposed) && Boolean(this.boss) && !this.boss.disposed)
         {
            new §6$V§(§+%]§(param1.victim),param1.victim.x,param1.victim.y,this.boss,§%;§);
            if(this.§;O§[this.§%!D§.indexOf(param1.victim)] == 1)
            {
               dispatchEvent(new §7%K§(§7% §));
            }
         }
      }
      
      private function §[&F§(param1:DamageEvent) : void
      {
         var _loc3_:Point = null;
         var _loc2_:§+%]§ = §+%]§(param1.victim);
         if(!_loc2_.disposed)
         {
            if(this.§;O§[this.§%!D§.indexOf(_loc2_)] != -1)
            {
               var _loc4_:Vector.<int> = this.§;O§;
               §§push(_loc4_);
               var _temp_2:* = this.§%!D§.indexOf(_loc2_);
               var _loc5_:int = this.§%!D§.indexOf(_loc2_);
               var _loc6_:Number = §§pop()[_loc5_] + 1;
               _loc4_[_loc5_] = _loc6_;
            }
            new §'$V§(_loc2_,_loc2_.x,_loc2_.y,true,_loc2_,11289911,16777215,80);
            _loc3_ = §-#M§.§,#e§();
            §<H§.§"%8§(_loc2_,_loc3_.x,_loc3_.y);
            _loc2_.setSpeedXY(0,_loc2_.speed);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         this.boss = null;
         for each(_loc1_ in this.§%!D§)
         {
            _loc1_.removeEventListener(§0%v§.§&!D§,this.§[&F§);
            _loc1_.removeEventListener(§0%v§.§&!D§,this.§^"d§);
         }
         this.§%!D§ = null;
      }
   }
}

