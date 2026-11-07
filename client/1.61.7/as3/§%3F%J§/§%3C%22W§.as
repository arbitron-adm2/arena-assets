package §?%J§
{
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import § #m§.§2#P§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&!m§.§;#[§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§2!x§;
   import §+%S§.§2&>§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#0§.§;!L§;
   import §1#p§.§"Z§;
   import §1&-§.§]%4§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§##l§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4$b§.§2m§;
   import §4$b§.§6!G§;
   import §4%_§.§3§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §6$z§.§!"§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9![§.*;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §;!Z§.*;
   import §;"9§.§8$B§;
   import §;"9§.§8&!§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=7§.§?%4§;
   import §>$q§.§9$U§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.*;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§!"t§;
   import §?$K§.§,$[§;
   import §?$K§.§3#j§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§5&4§;
   import §@!i§.§8%6§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §]$J§.§#"s§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.Qtip;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyMercenariesTicket;
   import ru.pragmatix.wormix.messages.client.EndBattle;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.EndBattleResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §<"W§ extends §-"o§
   {
      
      private static const §9& §:uint = 30;
      
      private static const UNGROUNDED_DAMAGE:uint = 60;
      
      private static const §+!o§:§&$2§ = new §&$2§(160);
      
      private static const § %V§:uint = 3;
      
      private static const §%"9§:uint = 600;
      
      private static const §1"B§:uint = 2100;
      
      private static const §!">§:uint = 6;
      
      private static const §+#6§:uint = 15;
      
      private static const §4z§:Number = 0.5;
      
      private var scientist:§+%]§;
      
      private var §9$&§:§8$B§;
      
      private var §2!J§:§8&!§;
      
      private var damaged:Boolean = false;
      
      private var §3%c§:Dictionary = new Dictionary();
      
      private var stopCharge:Dictionary = new Dictionary();
      
      public function §<"W§(param1:Boolean = false)
      {
         super(param1);
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.SCIENTIST).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(5,1.2,1,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_SCIENTIST_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_SCIENTIST_NAME"),_loc4_.level,Race.§ "w§,(430 + 8 * _loc4_.§?"-§ + 16 * _loc4_.§3"`§) * (§^"8§ ? 1 : 1.4),_loc4_.level * 1.3,_loc4_.level * 1.5,§,$O§.§!&H§,§]!E§.§%$F§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_SCIENTIST_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_SCIENTIST_NAME"),_loc4_.level,Race.§ "w§,(430 + 8 * _loc4_.§?"-§ + 16 * _loc4_.§3"`§) * (§^"8§ ? 1 : 1.4),_loc4_.level * 1.3,_loc4_.level * 1.5,§,$O§.§!&H§,§]!E§.§%$F§)])];
      }
      
      private function §0!I§(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.§[$X§),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B),new §>%Q§(§+%z§.§6&8§,0.6),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_2,0.3),new §>%Q§(§+%z§.ANTITOXIN,0.3,3),new §>%Q§(§+%z§.BANDAGE,0.3,3),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_1,0.1,§2a§ ? 0 : -1)];
         var _temp_9:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.§[$X§),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B),new §>%Q§(§+%z§.§6&8§,0.6),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_2,0.3),new §>%Q§(§+%z§.ANTITOXIN,0.3,3),new §>%Q§(§+%z§.BANDAGE,0.3,3),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_1,0.1,§2a§ ? 0 : -1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.§[$X§),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B),new §>%Q§(§+%z§.§6&8§,0.6),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_2,0.3),new §>%Q§(§+%z§.ANTITOXIN,0.3,3),new §>%Q§(§+%z§.BANDAGE,0.3,3),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_1,0.1,§2a§ ? 0 : -1)],99,true,true);
         §-#M§.§&"r§(param1);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.scientist = param1[0].§1!n§()[0];
         this.§0!I§(this.scientist);
         this.scientist.buffs.place(new §!"t§());
         this.scientist.buffs.place(new §3#j§());
         this.scientist.buffs.place(new §,$[§());
         this.scientist.addEventListener(§0%v§.§&!D§,this.§'$R§,false,§[!F§.§##c§);
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§3#F§);
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc4_:§+%]§ = null;
         super.§ "a§(param1,param2);
         this.§3#F§();
         var _loc3_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(this.scientist);
         for each(_loc4_ in _loc3_)
         {
            if(!this.§3%c§[_loc4_])
            {
               _loc4_.addEventListener(§0%v§.§'$p§,this.§^"4§);
               _loc4_.addEventListener(§0%v§.§3G§,this.§2Y§);
               this.§3%c§[_loc4_] = §6#A§.§!&6§(§+"'§.§;"y§);
            }
         }
         if(param1 == 1)
         {
            this.§9$&§ = new §8$B§(this.scientist,1500,0);
            this.§2!J§ = new §8&!§(900,1300);
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(currentUnit == this.scientist)
         {
            this.§["U§();
         }
         this.§!$K§();
      }
      
      private function §3#F§(param1:NewUnitEvent = null) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(this.scientist);
         for each(_loc3_ in _loc2_)
         {
            if(!this.§3%c§[_loc3_])
            {
               _loc3_.addEventListener(§0%v§.§'$p§,this.§^"4§);
               _loc3_.addEventListener(§0%v§.§3G§,this.§2Y§);
               this.§3%c§[_loc3_] = §6#A§.§!&6§(§+"'§.§;"y§);
            }
         }
      }
      
      private function §!$K§() : void
      {
         var _loc1_:Point = null;
         if(!this.scientist.disposed && (this.scientist.y > §%"9§ && this.scientist.x < §1"B§ || this.damaged))
         {
            do
            {
               _loc1_ = §-#M§.§,#e§();
            }
            while(_loc1_.y > 800);
            new §'$V§(this.scientist,this.scientist.x,this.scientist.y,true,this.scientist,3368652,6724044,80);
            §<H§.§"%8§(this.scientist,_loc1_.x,_loc1_.y);
            this.damaged = false;
         }
      }
      
      private function §["U§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         this.§6!9§(§!">§);
         _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(this.scientist);
         var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(this.§2!J§.x,this.§2!J§.y,§8&!§.§1!t§,_loc1_,false);
         if(_loc2_.length != _loc1_.length)
         {
            this.§6!9§(§+#6§);
         }
         for each(_loc3_ in _loc2_)
         {
            §'"$§.§]#I§(this.scientist,_loc3_.x,_loc3_.y,_loc3_,§+!o§.value * (§^"8§ ? 1 : 1.8),0,0,false,false,§&!E§.§=$-§,true,§^"8§);
            §@%;§.play(§`!v§.§`%9§);
            §1"-§.§2%n§(new Point(_loc3_.x,_loc3_.y));
            _loc3_.setSpeedXY(0,-5);
            _loc3_.buffs.place(new §[&;§(§ %V§));
         }
      }
      
      private function §6!9§(param1:uint) : void
      {
         §1"-§.§2%n§(new Point(this.§2!J§.x,this.§2!J§.y - this.§2!J§.height));
         this.§9$&§.§%Y§.§?"+§(param1);
      }
      
      private function §^"4§(param1:Event) : void
      {
         var _loc2_:§+%]§ = param1.target as §+%]§;
         this.stopCharge[_loc2_] = false;
         _loc2_.graphics.§5$#§(§2m§.§-w§,this.§3%c§[_loc2_]);
         this.§&&5§(this.§9$&§.§%Y§.§@%b§ ? §9& § : uint(§9& § * 2),_loc2_);
      }
      
      private function §2Y§(param1:Event) : void
      {
         var _loc2_:§+%]§ = param1.target as §+%]§;
         this.stopCharge[_loc2_] = true;
         _loc2_.graphics.detachClip(this.§3%c§[_loc2_],§2m§.§-w§);
      }
      
      private function §&&5§(param1:uint, param2:§+%]§) : void
      {
         var frames:uint = param1;
         var unit:§+%]§ = param2;
         Application.scene.addEventListener(§0%v§.FRAME,function(param1:Event):void
         {
            if(0 == frames-- && !unit.disposed)
            {
               Application.scene.removeEventListener(§0%v§.FRAME,arguments.callee);
               §'"$§.§]#I§(scientist,unit.x,unit.y,unit,UNGROUNDED_DAMAGE,0,0,false,false,§&!E§.§=$-§);
               §@%;§.play(§`!v§.§`%9§);
               §1"-§.§`$Q§(unit.x,unit.y,§1"-§.§9a§);
               unit.setSpeedXY(0,0);
               stopCharge[unit] = true;
            }
            else if(stopCharge[unit])
            {
               Application.scene.removeEventListener(§0%v§.FRAME,arguments.callee);
            }
         });
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         this.damaged = true;
         if(this.§9$&§.§%Y§.§[!Q§ && param1.source.owner != this.scientist)
         {
            _loc2_ = param1.power * §4z§;
            §2!H§.§'!i§("(" + int(_loc2_) + ")",§2!H§.§?$!§,this.scientist.x + this.scientist.width * 0.5,this.scientist.y + this.scientist.height * 0.5,20);
            param1.power -= _loc2_;
         }
      }
      
      override public function clear() : void
      {
         this.scientist.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         this.scientist = null;
      }
   }
}

