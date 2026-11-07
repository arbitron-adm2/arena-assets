package §?%J§
{
   import § "L§.§`#r§;
   import § "d§.§,!c§;
   import § #k§.*;
   import § #m§.§;#^§;
   import § $q§.*;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#"V§.§?%>§;
   import §#%!§.§ §;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&"R§.*;
   import §&#h§.*;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §'"N§.*;
   import §+$=§.*;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §-&5§.*;
   import §0!§.§6#z§;
   import §0!§.§9"u§;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.§<%;§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4#2§.*;
   import §4#`§.§'#R§;
   import §4#`§.BattleInterface;
   import §4'§.§`"q§;
   import §5#`§.*;
   import §6%2§.§,x§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8$V§.*;
   import §;#O§.§+%7§;
   import §<!W§.§;#A§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%J§.RopeRaceGiftMenu;
   import §=&!§.§ "^§;
   import §>"l§.§?$O§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.§;!q§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §'!I§ extends §-"o§
   {
      
      private static const §;#P§:§&$2§ = new §&$2§(320);
      
      private static const §="U§:§&$2§ = new §&$2§(4);
      
      private static const §@&;§:§&$2§ = new §&$2§(80);
      
      private static const §@$M§:§&$2§ = new §&$2§(4);
      
      public static const §5#b§:§&$2§ = new §&$2§(§<H§.§,%P§ + 10);
      
      private var §&^§:§'#R§;
      
      private var §<$b§:§&$2§ = new §&$2§(1000);
      
      private var §^"l§:Vector.<Point>;
      
      private var §1$"§:Vector.<§;!q§> = new Vector.<§;!q§>(0);
      
      private var dummy:§&"T§;
      
      private var §[e§:Boolean;
      
      private var units:Vector.<§+%]§>;
      
      private var §"%?§:int;
      
      private var §=K§:int;
      
      public function §'!I§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("guardiansDepths.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = null;
         var _loc5_:uint = 0;
         this.§"%?§ = param1.length;
         this.§=K§ = param1[0].§1!n§().length;
         if(this.§"%?§ == 2)
         {
            this.§=K§ = Math.max(1,(this.§=K§ + param1[1].§1!n§().length) / 2);
         }
         _loc4_ = new §,!c§(5,1,1,param1);
         _loc5_ = 5 + (_loc4_.§?"-§ + _loc4_.level) / 4;
         var _loc6_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc7_:Array = [UserProfile.§'#3§(§0$N§.BOT_GUARDIANS_DEPTHS,4 + _loc5_,Race.§#%V§,290 + _loc5_ * 17,8 + _loc5_ * 1,8 + _loc5_ * 0.8,§,$O§.§0!o§),UserProfile.§'#3§(§0$N§.BOT_GUARDIANS_DEPTHS,4 + _loc5_,Race.§#%V§,290 + _loc5_ * 17,8 + _loc5_ * 1,8 + _loc5_ * 0.8,§,$O§.§0!o§),UserProfile.§'#3§(§0$N§.BOT_GUARDIANS_DEPTHS,6 + _loc5_ * 0.8,Race.§+&8§,230 + _loc5_ * 17,8 + _loc5_ * 0.6,10 + _loc5_ * 1.2,§,$O§.§9#r§),UserProfile.§'#3§(§0$N§.BOT_GUARDIANS_DEPTHS,6 + _loc5_ * 0.8,Race.§+&8§,230 + _loc5_ * 17,8 + _loc5_ * 0.6,10 + _loc5_ * 1.2,§,$O§.§9#r§),UserProfile.§'#3§(§0$N§.BOT_GUARDIANS_DEPTHS,6 + _loc5_ * 0.7,Race.§ "w§,125 + _loc5_ * 14,7 + _loc5_ * 0.7,7 + _loc5_ * 0.5,§,$O§.NEO),UserProfile.§'#3§(§0$N§.BOT_GUARDIANS_DEPTHS,6 + _loc5_ * 0.7,Race.§ "w§,125 + _loc5_ * 14,7 + _loc5_ * 0.7,7 + _loc5_ * 0.5,§,$O§.NEO)];
         if(§^i§)
         {
            _loc6_.push(new §-!`§(§0$N§.TEAM_GUARDIANS_DEPTHS_NAME,[_loc7_[0],_loc7_[2],_loc7_[4]]));
         }
         else
         {
            _loc6_.push(new §-!`§(§0$N§.TEAM_GUARDIANS_DEPTHS_NAME,[_loc7_[0],_loc7_[1]]));
            _loc6_.push(new §-!`§(§0$N§.TEAM_GUARDIANS_DEPTHS_NAME,[_loc7_[2],_loc7_[3]]));
            _loc6_.push(new §-!`§(§0$N§.TEAM_GUARDIANS_DEPTHS_NAME,[_loc7_[4],_loc7_[5]]));
         }
         return _loc6_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         if(§^i§)
         {
            this.units = param1[0].§1!n§();
         }
         else
         {
            this.units = new Vector.<§+%]§>().concat(param1[0].§1!n§()).concat(param1[1].§1!n§()).concat(param1[2].§1!n§());
         }
         var _loc2_:Boolean = §<#A§();
         var _loc3_:int = 0;
         var _loc4_:int = int(this.units.length);
         while(_loc3_ < _loc4_)
         {
            switch(this.units[_loc3_].record.getRace().getId())
            {
               case Race.§#%V§.getId():
                  §§push(this.units[_loc3_]);
                  §§push(§§findproperty(§,%8§));
                  var _temp_9:* = new <§>%Q§>[new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,1.3),new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,1.3),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1.3),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,1.2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2A,1.1),new §>%Q§(§+%z§.ANTIFREEZE,0.4,_loc2_ ? 0 : 1),new §>%Q§(§+%z§.ANTITOXIN,0.3,1),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
                  var _temp_12:* = new <§>%Q§>[new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,1.3),new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,1.3),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1.3),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,1.2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2A,1.1),new §>%Q§(§+%z§.ANTIFREEZE,0.4,_loc2_ ? 0 : 1),new §>%Q§(§+%z§.ANTITOXIN,0.3,1),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
                  var _temp_13:* = new <§>%Q§>[new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,1.3),new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,1.3),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1.3),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,1.2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2A,1.1),new §>%Q§(§+%z§.ANTIFREEZE,0.4,_loc2_ ? 0 : 1),new §>%Q§(§+%z§.ANTITOXIN,0.3,1),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
                  §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,1.3),new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,1.3),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1.3),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,1.2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2A,1.1),new §>%Q§(§+%z§.ANTIFREEZE,0.4,_loc2_ ? 0 : 1),new §>%Q§(§+%z§.ANTITOXIN,0.3,1),new §>%Q§(§+%z§.BANDAGE,0.3,1)],uint.MAX_VALUE,false,false,false,§^i§,false,_loc2_);
                  if(_loc2_)
                  {
                     this.units[_loc3_].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.9),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.9),new §>%Q§(§+%z§.SNOWFLAKE_STRIKE_UPG_2A,0.9)],uint.MAX_VALUE);
                  }
                  break;
               case Race.§+&8§.getId():
                  §§push(this.units[_loc3_]);
                  §§push(§§findproperty(§,%8§));
                  var _temp_20:* = new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,1.2),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2A) : uint(§+%z§.AK_47_UPG_1A),1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2B_MOROZKO) : uint(§+%z§.AK_47_UPG_1B_SNOWBALL),1.2),new §>%Q§(§+%z§.CROSSBOW,1.1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.NAIL_GRENADE,0.9,_loc2_ ? 0 : 2),new §>%Q§(_loc2_ ? §+%z§.GAS_GRENADE_UPG_2A_BIO : uint(§+%z§.GAS_GRENADE_UPG_1A),0.9,1),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,1.1,1,30)];
                  var _temp_22:* = new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,1.2),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2A) : uint(§+%z§.AK_47_UPG_1A),1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2B_MOROZKO) : uint(§+%z§.AK_47_UPG_1B_SNOWBALL),1.2),new §>%Q§(§+%z§.CROSSBOW,1.1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.NAIL_GRENADE,0.9,_loc2_ ? 0 : 2),new §>%Q§(_loc2_ ? §+%z§.GAS_GRENADE_UPG_2A_BIO : uint(§+%z§.GAS_GRENADE_UPG_1A),0.9,1),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,1.1,1,30)];
                  var _temp_23:* = new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,1.2),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2A) : uint(§+%z§.AK_47_UPG_1A),1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2B_MOROZKO) : uint(§+%z§.AK_47_UPG_1B_SNOWBALL),1.2),new §>%Q§(§+%z§.CROSSBOW,1.1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.NAIL_GRENADE,0.9,_loc2_ ? 0 : 2),new §>%Q§(_loc2_ ? §+%z§.GAS_GRENADE_UPG_2A_BIO : uint(§+%z§.GAS_GRENADE_UPG_1A),0.9,1),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,1.1,1,30)];
                  var _temp_24:* = new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,1.2),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2A) : uint(§+%z§.AK_47_UPG_1A),1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2B_MOROZKO) : uint(§+%z§.AK_47_UPG_1B_SNOWBALL),1.2),new §>%Q§(§+%z§.CROSSBOW,1.1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.NAIL_GRENADE,0.9,_loc2_ ? 0 : 2),new §>%Q§(_loc2_ ? §+%z§.GAS_GRENADE_UPG_2A_BIO : uint(§+%z§.GAS_GRENADE_UPG_1A),0.9,1),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,1.1,1,30)];
                  var _temp_25:* = new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,1.2),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2A) : uint(§+%z§.AK_47_UPG_1A),1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2B_MOROZKO) : uint(§+%z§.AK_47_UPG_1B_SNOWBALL),1.2),new §>%Q§(§+%z§.CROSSBOW,1.1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.NAIL_GRENADE,0.9,_loc2_ ? 0 : 2),new §>%Q§(_loc2_ ? §+%z§.GAS_GRENADE_UPG_2A_BIO : uint(§+%z§.GAS_GRENADE_UPG_1A),0.9,1),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,1.1,1,30)];
                  var _temp_26:* = new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,1.2),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2A) : uint(§+%z§.AK_47_UPG_1A),1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2B_MOROZKO) : uint(§+%z§.AK_47_UPG_1B_SNOWBALL),1.2),new §>%Q§(§+%z§.CROSSBOW,1.1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.NAIL_GRENADE,0.9,_loc2_ ? 0 : 2),new §>%Q§(_loc2_ ? §+%z§.GAS_GRENADE_UPG_2A_BIO : uint(§+%z§.GAS_GRENADE_UPG_1A),0.9,1),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,1.1,1,30)];
                  §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,1.2),new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : uint(§+%z§.DRILL_GUN_UPG_1),1.1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2A) : uint(§+%z§.AK_47_UPG_1A),1.2),new §>%Q§(_loc2_ ? uint(§+%z§.AK_47_UPG_2B_MOROZKO) : uint(§+%z§.AK_47_UPG_1B_SNOWBALL),1.2),new §>%Q§(§+%z§.CROSSBOW,1.1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.NAIL_GRENADE,0.9,_loc2_ ? 0 : 2),new §>%Q§(_loc2_ ? §+%z§.GAS_GRENADE_UPG_2A_BIO : uint(§+%z§.GAS_GRENADE_UPG_1A),0.9,1),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,1.1,1,30)],uint.MAX_VALUE,false,false,false,§^i§,false,_loc2_);
                  if(_loc2_)
                  {
                     this.units[_loc3_].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.§;%Z§,0.9),new §>%Q§(§+%z§.BLIZZARD,0.9),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.5)],uint.MAX_VALUE);
                  }
                  break;
               case Race.§ "w§.getId():
                  §§push(this.units[_loc3_]);
                  §§push(§§findproperty(§,%8§));
                  var _temp_31:* = new <§>%Q§>[new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : §+%z§.§!`§,1.1),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,1.2),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,1.3),new §>%Q§(§+%z§.§8#d§,1.2,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? uint(§+%z§.FREEZING_BAZOOKA_UPG2A) : uint(§+%z§.FREEZING_BAZOOKA_UPG1A),1.1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2B,1.1),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,_loc2_ ? 0 : 1.3),new §>%Q§(_loc2_ ? §+%z§.ENERGY_RIFLE_UPG_3 : §+%z§.ENERGY_RIFLE_UPG_2,1.1),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30)];
                  var _temp_34:* = new <§>%Q§>[new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : §+%z§.§!`§,1.1),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,1.2),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,1.3),new §>%Q§(§+%z§.§8#d§,1.2,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? uint(§+%z§.FREEZING_BAZOOKA_UPG2A) : uint(§+%z§.FREEZING_BAZOOKA_UPG1A),1.1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2B,1.1),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,_loc2_ ? 0 : 1.3),new §>%Q§(_loc2_ ? §+%z§.ENERGY_RIFLE_UPG_3 : §+%z§.ENERGY_RIFLE_UPG_2,1.1),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30)];
                  var _temp_35:* = new <§>%Q§>[new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : §+%z§.§!`§,1.1),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,1.2),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,1.3),new §>%Q§(§+%z§.§8#d§,1.2,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? uint(§+%z§.FREEZING_BAZOOKA_UPG2A) : uint(§+%z§.FREEZING_BAZOOKA_UPG1A),1.1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2B,1.1),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,_loc2_ ? 0 : 1.3),new §>%Q§(_loc2_ ? §+%z§.ENERGY_RIFLE_UPG_3 : §+%z§.ENERGY_RIFLE_UPG_2,1.1),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30)];
                  var _temp_37:* = new <§>%Q§>[new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : §+%z§.§!`§,1.1),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,1.2),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,1.3),new §>%Q§(§+%z§.§8#d§,1.2,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? uint(§+%z§.FREEZING_BAZOOKA_UPG2A) : uint(§+%z§.FREEZING_BAZOOKA_UPG1A),1.1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2B,1.1),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,_loc2_ ? 0 : 1.3),new §>%Q§(_loc2_ ? §+%z§.ENERGY_RIFLE_UPG_3 : §+%z§.ENERGY_RIFLE_UPG_2,1.1),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30)];
                  var _temp_38:* = new <§>%Q§>[new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : §+%z§.§!`§,1.1),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,1.2),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,1.3),new §>%Q§(§+%z§.§8#d§,1.2,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? uint(§+%z§.FREEZING_BAZOOKA_UPG2A) : uint(§+%z§.FREEZING_BAZOOKA_UPG1A),1.1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2B,1.1),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,_loc2_ ? 0 : 1.3),new §>%Q§(_loc2_ ? §+%z§.ENERGY_RIFLE_UPG_3 : §+%z§.ENERGY_RIFLE_UPG_2,1.1),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30)];
                  var _temp_39:* = new <§>%Q§>[new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : §+%z§.§!`§,1.1),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,1.2),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,1.3),new §>%Q§(§+%z§.§8#d§,1.2,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? uint(§+%z§.FREEZING_BAZOOKA_UPG2A) : uint(§+%z§.FREEZING_BAZOOKA_UPG1A),1.1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2B,1.1),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,_loc2_ ? 0 : 1.3),new §>%Q§(_loc2_ ? §+%z§.ENERGY_RIFLE_UPG_3 : §+%z§.ENERGY_RIFLE_UPG_2,1.1),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30)];
                  §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(_loc2_ ? §+%z§.SUPER_DRILL_MISSILE : §+%z§.§!`§,1.1),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,1.2),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,1.3),new §>%Q§(§+%z§.§8#d§,1.2,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? uint(§+%z§.FREEZING_BAZOOKA_UPG2A) : uint(§+%z§.FREEZING_BAZOOKA_UPG1A),1.1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,1.1,1,30),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_2B,1.1),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,_loc2_ ? 0 : 1.3),new §>%Q§(_loc2_ ? §+%z§.ENERGY_RIFLE_UPG_3 : §+%z§.ENERGY_RIFLE_UPG_2,1.1),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30)],uint.MAX_VALUE,false,false,false,§^i§,false,_loc2_);
                  if(_loc2_)
                  {
                     this.units[_loc3_].aiArsenal.subtractWeapons([§+%z§.SOUL_GUN,§+%z§.SOUL_GUN_UPG_1,§+%z§.SOUL_GUN_UPG_2A_HEAL,§+%z§.SOUL_GUN_UPG_2B_POISON]);
                     this.units[_loc3_].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.§[$X§,0.9),new §>%Q§(§+%z§.§<!;§,0.5),new §>%Q§(§+%z§.ION_CANNON,0.7),new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.8,2)],uint.MAX_VALUE);
                  }
            }
            if(_loc2_)
            {
               this.units[_loc3_].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.7,2),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.7,2),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.7),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.7)],uint.MAX_VALUE);
            }
            this.§&&"§(this.units[_loc3_]);
            _loc3_++;
         }
         this.dummy = Application.scene.§,$z§();
         this.dummy.stable = true;
         this.§ #D§();
         super.§+$L§(param1);
      }
      
      private function §&&"§(param1:§+%]§) : void
      {
         param1.aiMissFactor = 1;
         param1.aiShotPower = 5;
         param1.buffs.place(new §3#j§());
      }
      
      private function § #D§() : void
      {
         this.§&^§ = new §'#R§(§@$M§.value,§0$N§.PROGRESS_BAR_GUARDIANS_DEPTHS);
         Application.scene.§7#o§.§?!C§(this.§&^§.getClip());
         var _loc1_:Vector.<int> = §8"%§.§?!W§.§^!U§().missionIds;
         if(_loc1_.length == 2 && (this.§"%?§ == 2 && this.units[0].squad.getNumber() == 3 || this.§"%?§ == 1 && this.units[0].squad.getNumber() == 2) && (_loc1_[0] == _loc1_[1] || _loc1_[0] == §+#N§.§'#L§))
         {
            this.§&^§.getClip().y = this.§&^§.getClip().y + 50;
            this.§&^§.update(1);
         }
      }
      
      private function §#"u§() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Point = null;
         var _loc3_:Vector.<int> = null;
         this.§^"l§ = new Vector.<Point>(0);
         _loc3_ = §8"%§.§?!W§.§^!U§().missionIds;
         var _loc4_:int = _loc3_.length == 2 && _loc3_[0] == _loc3_[1] ? 4 : 4;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            do
            {
               _loc1_ = §-#M§.§,#e§(50);
               for each(_loc2_ in this.§^"l§)
               {
                  if(§-q§.distance(_loc2_.x,_loc2_.y,_loc1_.x,_loc1_.y) < 200)
                  {
                     _loc1_ = null;
                     break;
                  }
               }
            }
            while(_loc1_ == null);
            this.§^"l§.push(_loc1_);
            _loc1_ = null;
            _loc5_++;
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:int = 0;
         if(param1 == 1)
         {
            if(this.§=K§ > 1)
            {
               this.§<$b§.value = 200 + 200 * (4 - this.§=K§ * 0.8);
            }
            if(§^i§)
            {
               this.§#"u§();
            }
            _loc3_ = §&%2§() ? this.units[0] : null;
            _loc4_ = 0;
            while(_loc4_ < this.§^"l§.length)
            {
               this.§1$"§.push(new §;!q§(_loc3_,this.§^"l§[_loc4_].x,this.§^"l§[_loc4_].y,§5#b§.value,§@&;§.value));
               if(!§^i§)
               {
                  this.§1$"§[this.§1$"§.length - 1].addEventListener(§5"`§.KILL_GUARDIAN_EVENT,this.§'$F§);
               }
               _loc4_++;
            }
            this.§!# §();
         }
         super.§ "a§(param1,param2);
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc3_:Vector.<§&"T§> = null;
         var _loc4_:§;!q§ = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<§"Z§> = null;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:§;!q§ = null;
         super.§6&§(param1);
         var _loc2_:uint = currentUnit.squad.getNumber();
         if(Boolean(§4"m§.§;#l§() && currentUnit) && Boolean(!currentUnit.disposed) && (!§^i§ || _loc2_ == this.units[0].squad.getNumber()))
         {
            _loc3_ = Application.scene.§@$I§.§;%a§.§"L§([§;!q§]);
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = _loc4_.§`"%§();
               if((Boolean(_loc5_)) && Boolean(!_loc5_.disposed) && _loc5_.squad.getTeamId() != currentUnit.squad.getTeamId())
               {
                  _loc6_ = §-q§.distance(currentUnit.x,currentUnit.y,_loc5_.x,_loc5_.y);
                  if(this.§<$b§.value == -1 ? true : _loc6_ <= this.§<$b§.value)
                  {
                     §<H§.§"%8§(currentUnit,_loc5_.x,_loc5_.y);
                     break;
                  }
               }
            }
         }
         if(!§4"m§.§;#l§())
         {
            _loc7_ = §4"m§.§'!A§().§]&1§(currentUnit.squad.getTeamId());
            _loc8_ = _loc7_[0].§'"H§();
            _loc9_ = _loc7_.length == 1 ? 0 : _loc7_[1].§'"H§();
            if(_loc7_.length == 1 || (_loc8_ >= 0 || _loc7_[0].§^$b§()) && _loc9_ > 0 && _loc2_ == 1 || (_loc9_ == 0 || _loc7_[1].§^$b§()) && _loc8_ > 0 && _loc2_ == 0)
            {
               this.§&^§.update(this.§&^§.§]P§() + 1);
               if(this.§&^§.§]P§() >= this.§&^§.§`%,§())
               {
                  this.dummy.stable = false;
                  this.§0!'§();
                  for each(_loc10_ in this.§1$"§)
                  {
                     if(_loc10_.§##m§() != §;!q§.§1"q§)
                     {
                        _loc10_.setState(§;!q§.§5$P§);
                     }
                  }
                  §8$a§.§%!E§(15,this.§]!;§);
               }
            }
         }
      }
      
      private function §]!;§() : void
      {
         if(Application.scene.§@$I§.§=%d§())
         {
            return;
         }
         this.§&^§.update(0);
         this.dummy.stable = true;
         this.§!# §();
      }
      
      private function §'$F§(param1:Event) : void
      {
         dispatchEvent(new §7%K§(§5"`§.§9"]§));
      }
      
      private function §!# §() : void
      {
         var _loc3_:int = 0;
         this.dummy.stable = false;
         var _loc1_:Vector.<§;!q§> = new Vector.<§;!q§>().concat(this.§1$"§);
         var _loc2_:int = 0;
         while(_loc2_ < (§^i§ ? §="U§.value - 1 : §="U§.value))
         {
            _loc3_ = §8"%§.randomSeed.§,!q§(0,_loc1_.length - 1);
            _loc1_[_loc3_].setState(§;!q§.§6!f§);
            _loc1_.splice(_loc3_,1);
            _loc2_++;
         }
         §8$a§.§%!E§(15,this.§]#`§);
      }
      
      private function §]#`§() : void
      {
         if(Boolean(this.dummy) && !this.dummy.disposed)
         {
            this.dummy.stable = true;
         }
      }
      
      private function §0!'§() : void
      {
         var area:§;!q§ = null;
         var unit:§+%]§ = null;
         var thisScript:§'!I§ = null;
         var index:int = 0;
         var ammo:§6#I§ = null;
         var damagedUnits:Vector.<§+%]§> = §4"m§.§="T§(currentUnit,false,true);
         var objects:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§;!q§]);
         for each(area in objects)
         {
            if(Boolean(area.§`"%§()) && (!area.owner || area.owner.squad.getNumber() == this.units[0].squad.getNumber()))
            {
               index = damagedUnits.indexOf(area.§`"%§());
               if(index != -1)
               {
                  damagedUnits.splice(index,1);
               }
            }
         }
         thisScript = this;
         for each(unit in damagedUnits)
         {
            if(!unit.disposed)
            {
               ammo = new §6#I§(null,unit.x,unit.y,false,1);
               if(!unit.squad.isAi() && !§^i§)
               {
                  unit.addEventListener(§0%v§.§&!D§,function onPlayerUnitDamaged(param1:DamageEvent):void
                  {
                     §+%]§(param1.target).removeEventListener(§0%v§.§&!D§,onPlayerUnitDamaged);
                     if(param1.power > 0)
                     {
                        thisScript.dispatchEvent(new §7%K§(§5"`§.§]"y§,param1.power));
                     }
                  });
               }
               §'"$§.inflictDamage(ammo,unit,§;#P§.value * (this.§[e§ ? 0.8 : 1),10,10);
            }
         }
         §'!j§.go(12,false,0.7);
         for each(unit in damagedUnits)
         {
            if(!unit.disposed)
            {
               unit.rotateUntilStable();
               unit.§5!?§(§8"%§.randomSeed.§,!q§(-5,5),§8"%§.randomSeed.§,!q§(-8,-3));
            }
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:§;!q§ = null;
         if(!§^i§)
         {
            for each(_loc1_ in this.§1$"§)
            {
               _loc1_.removeEventListener(§5"`§.KILL_GUARDIAN_EVENT,this.§'$F§);
            }
         }
         Application.scene.§7#o§._removeChild(this.§&^§.getClip());
         this.§&^§.destroy();
         this.§&^§ = null;
         this.dummy.disposed = true;
         this.dummy = null;
      }
      
      public function set areaPositions(param1:Vector.<Point>) : void
      {
         this.§^"l§ = param1;
      }
      
      public function set isFirstRubyTry(param1:Boolean) : void
      {
         this.§[e§ = param1;
      }
   }
}

