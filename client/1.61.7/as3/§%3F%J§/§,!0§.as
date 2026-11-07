package §?%J§
{
   import § !8§.§`!d§;
   import § #9§.§9j§;
   import § #m§.§[&H§;
   import § $q§.§-%f§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§2!%§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§;!4§;
   import §+%S§.§>!I§;
   import §+%S§.§["4§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.§-!6§;
   import §2!-§.§^!9§;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4#`§.§>$K§;
   import §4'§.§^"p§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§9#x§;
   import §8#<§.*;
   import §8$V§.*;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §=!p§.§'%#§;
   import §=!p§.§1e§;
   import §="z§.§<$t§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@$§.§+%>§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@8§.§%Z§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[!`§.§8%U§;
   import §[!`§.§@&3§;
   import §]$&§.§3$%§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import §`%c§.*;
   import com.greensock.TweenMax;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.setTimeout;
   import ru.inspirit.net.events.MultipartURLLoaderEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§8"'§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.client.PumpReactionRate;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,!0§ extends §-"o§
   {
      
      public static const §7%d§:uint = 1;
      
      private static const §>%R§:§&$2§ = new §&$2§(4);
      
      private var boss:§+%]§;
      
      private var §8!q§:Vector.<§@&3§> = new Vector.<§@&3§>();
      
      private var §>%Y§:§&$2§;
      
      private var §9%#§:Boolean = true;
      
      private var §1!%§:uint;
      
      public function §,!0§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("farmer.swf");
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§`%b§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = uint(5 + 1.2 * param2);
         this.§>%Y§ = new §&$2§(_loc4_ * 0.6);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§%! §("BOT_NAME_FARMER"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_FARMER"),_loc4_,Race.§+#T§,130 + 4 * _loc4_ + 7 * _loc4_ * param3,_loc4_ * 4,_loc4_ * 1.2,§,$O§.PANAMA)])];
         return new <§-!`§>[new §-!`§(§0$N§.§%! §("BOT_NAME_FARMER"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_FARMER"),_loc4_,Race.§+#T§,130 + 4 * _loc4_ + 7 * _loc4_ * param3,_loc4_ * 4,_loc4_ * 1.2,§,$O§.PANAMA)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = param1[0].§1!n§()[0];
         this.boss.aiArsenal = new §,%8§(new Vector.<§>%Q§>(0));
         if(§<#A§())
         {
            §§push(this.boss.aiArsenal);
            var _temp_8:* = new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.8),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.7),new §>%Q§(§+%z§.§'&<§,0.85),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.8),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.8),new §>%Q§(§+%z§.§@%-§,0.5),new §>%Q§(§+%z§.§[$A§,0.5),new §>%Q§(§+%z§.SUPER_BUNKER_BUSTER,0.3)];
            §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.8),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.7),new §>%Q§(§+%z§.§'&<§,0.85),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.8),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.8),new §>%Q§(§+%z§.§@%-§,0.5),new §>%Q§(§+%z§.§[$A§,0.5),new §>%Q§(§+%z§.SUPER_BUNKER_BUSTER,0.3)],uint.MAX_VALUE);
         }
         else
         {
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE),new §>%Q§(§+%z§.§4"k§),new §>%Q§(§+%z§.MORTAR,0.7),new §>%Q§(§+%z§.SHOTGUN,0.6),new §>%Q§(§+%z§.MINIGUN,0.7),new §>%Q§(§+%z§.§!`§,0.5)],uint.MAX_VALUE);
         }
         if(§^i§)
         {
            this.boss.addEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         }
         else if(§^"8§)
         {
            this.boss.buffs.place(new §`""§());
         }
         else
         {
            §-#M§.§&"r§(this.boss);
         }
         super.§+$L§(param1);
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(currentUnit == this.boss)
         {
            this.§9%#§ = true;
            this.§@w§();
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§@&3§ = null;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:Point = null;
         super.§ "a§(param1,param2);
         if(§^i§ && param1 == 1)
         {
            this.§1!%§ = int(0.5 * this.boss.attributes.armor.value);
            this.§6#l§(this.§1!%§);
         }
         if(!§4"m§.§;#l§() && this.§9%#§ && !this.boss.disposed)
         {
            this.§9%#§ = false;
            _loc4_ = §4"m§.§6"M§(this.boss);
            for each(_loc5_ in _loc4_)
            {
               _loc5_.buffs.§6C§(§["4§.NAME);
            }
            _loc6_ = §""L§.§,"=§(this.§8!q§);
            _loc7_ = 0;
            while(_loc7_ < §>%R§.value)
            {
               _loc8_ = §-#M§.§`"5§(_loc6_,110,50,false);
               if(_loc8_)
               {
                  _loc3_ = new §@&3§(_loc8_);
                  _loc3_.addEventListener(§^!9§.NAME,this.§>$R§);
                  this.§8!q§[this.§8!q§.length] = _loc3_;
                  dispatchEvent(new §7%K§(§7%d§));
               }
               _loc7_++;
            }
         }
      }
      
      private function §>$R§(param1:§^!9§) : void
      {
         var _loc2_:§+%]§ = param1.picker;
         if(!_loc2_.disposed)
         {
            if(!_loc2_.squad.isAi())
            {
               §5"O§.increaseAttack(_loc2_,this.§>%Y§.value,§["4§.§%!y§,§["4§.§6"U§);
            }
            else
            {
               _loc2_.attributes.hp.§#1§(uint.MAX_VALUE);
            }
         }
         dispatchEvent(param1);
         this.§<1§(§@&3§(param1.currentTarget));
      }
      
      private function §@w§() : void
      {
         var _loc1_:§@&3§ = null;
         for each(_loc1_ in this.§8!q§)
         {
            if(!_loc1_.disposed)
            {
               _loc1_.disposed = true;
               this.§<1§(_loc1_);
            }
         }
         this.§8!q§.length = 0;
      }
      
      private function §<1§(param1:§@&3§) : void
      {
         param1.removeEventListener(§^!9§.NAME,this.§>$R§);
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         this.§6#l§(-this.§1!%§);
      }
      
      private function §6#l§(param1:int) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:int = 0;
         var _loc2_:Vector.<§+%]§> = §4"m§.§="T§(this.boss);
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = param1 < 0 ? int(-1 * Math.min(param1,_loc3_.attributes.armor.value)) : param1;
            §5"O§.increaseArmor(_loc3_,_loc4_,§`"C§.§-"^§,§>!I§.§6>§);
         }
      }
      
      override public function clear() : void
      {
         this.§@w§();
         this.boss.removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         this.boss = null;
      }
   }
}

