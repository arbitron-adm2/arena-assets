package §?%J§
{
   import § !8§.§9%+§;
   import § #m§.§;#^§;
   import § $q§.§<"]§;
   import § %f§.Parasite;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§,!<§;
   import §"% §.LevelUpDialog;
   import §"%H§.§'%u§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§="_§;
   import §+%S§.§[&;§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-"N§.§+#R§;
   import §-%B§.*;
   import §-G§.*;
   import §0!§.§9"u§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1&-§.§'$y§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#T§.Boomerang;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §7!B§.§6#I§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7"Q§.§"&=§;
   import §7$1§.§3&G§;
   import §7$t§.§=?§;
   import §8#a§.§>!o§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §>!_§.§'#m§;
   import §>%S§.§^!V§;
   import §?#g§.*;
   import §?$K§.§!"t§;
   import §?$K§.§+G§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §@!i§.§<#&§;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.OverwriteManager;
   import com.greensock.TweenLite;
   import com.greensock.plugins.AutoAlphaPlugin;
   import com.greensock.plugins.BevelFilterPlugin;
   import com.greensock.plugins.BezierPlugin;
   import com.greensock.plugins.BezierThroughPlugin;
   import com.greensock.plugins.BlurFilterPlugin;
   import com.greensock.plugins.ColorMatrixFilterPlugin;
   import com.greensock.plugins.ColorTransformPlugin;
   import com.greensock.plugins.DropShadowFilterPlugin;
   import com.greensock.plugins.EndArrayPlugin;
   import com.greensock.plugins.FrameLabelPlugin;
   import com.greensock.plugins.FramePlugin;
   import com.greensock.plugins.GlowFilterPlugin;
   import com.greensock.plugins.HexColorsPlugin;
   import com.greensock.plugins.RemoveTintPlugin;
   import com.greensock.plugins.RoundPropsPlugin;
   import com.greensock.plugins.ShortRotationPlugin;
   import com.greensock.plugins.TintPlugin;
   import com.greensock.plugins.TweenPlugin;
   import com.greensock.plugins.VisiblePlugin;
   import com.greensock.plugins.VolumePlugin;
   import config.§5%T§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §?#9§ extends §-"o§
   {
      
      private static const §&"G§:§&$2§ = new §&$2§(55);
      
      private static const §8!3§:§&$2§ = new §&$2§(45);
      
      private static const §]%O§:§&$2§ = new §&$2§(9);
      
      private static const §0#R§:§&$2§ = new §&$2§(30);
      
      private static const §[!y§:§&$2§ = new §&$2§(3);
      
      private static const §+&#§:§&$2§ = new §&$2§(150);
      
      private static const §+#A§:§&$2§ = new §&$2§(300);
      
      private static const §;$Z§:§&$2§ = new §&$2§(2);
      
      private var boss:§+%]§;
      
      private var mines:Vector.<§3&G§> = new Vector.<§3&G§>();
      
      private var § &C§:§5$n§;
      
      private var §5%-§:uint;
      
      public function §?#9§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("miner.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = uint(6 + 1.6 * param2);
         this.§5%-§ = §-q§.§5&H§(_loc4_,§8!3§.value);
         this.§ &C§ = §5$n§.§<#=§("AmGravityGun",§]%O§.value + this.§5%-§,55,40);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§%! §("TEAM_NAME_MINER"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_MINER"),_loc4_,Race.§9"B§,60 + 6 * param2 + 12 * param2 * param3,_loc4_ * 1.3,_loc4_ * 1.2,§,$O§.BOSS_MINER_CAP,0,§5%T§.§,!6§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§%! §("TEAM_NAME_MINER"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_MINER"),_loc4_,Race.§9"B§,60 + 6 * param2 + 12 * param2 * param3,_loc4_ * 1.3,_loc4_ * 1.2,§,$O§.BOSS_MINER_CAP,0,§5%T§.§,!6§)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = param1[0].§1!n§()[0];
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 5;
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         §§push(this.boss);
         §§push(§§findproperty(§,%8§));
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.§4"k§,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.MOLOTOV,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE,0.8),new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.BAZOOKA,0.5)];
         var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.§4"k§,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.MOLOTOV,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE,0.8),new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.BAZOOKA,0.5)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.§4"k§,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.MOLOTOV,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE,0.8),new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.BAZOOKA,0.5)]);
         if(_loc2_)
         {
            this.boss.aiArsenal.§0!]§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,0.7);
            this.boss.aiArsenal.subtractWeapons([§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1,§+%z§.BAZOOKA,§+%z§.BAZOOKA_UPG_1]);
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.VACUUM_GRENADE,0.9),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.7),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.§^%l§,1)],uint.MAX_VALUE);
         }
         if(!§^i§)
         {
            if(§^"8§)
            {
               this.boss.aiArsenal.subtractWeapons([§+%z§.§"!S§]);
               this.boss.buffs.place(new §`""§());
            }
            else
            {
               §-#M§.§&"r§(this.boss);
            }
         }
         this.boss.buffs.place(new §+G§(§0#R§.value + this.§5%-§));
         this.boss.buffs.place(new §!"t§(§+&#§.value));
         this.boss.addEventListener(§0%v§.§&!D§,this.§'$R§,false,§[!F§.§^!?§);
         super.§+$L§(param1);
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         dispatchEvent(param1);
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:§3&G§ = null;
         var _loc3_:Boolean = false;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<§+%]§> = null;
         var _loc7_:§+%]§ = null;
         if(currentUnit == this.boss)
         {
            _loc4_ = this.mines.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc2_ = this.mines[_loc5_];
               _loc3_ = true;
               if(!_loc2_.disposed)
               {
                  _loc6_ = §4"m§.§6"M§(this.boss);
                  for each(_loc7_ in _loc6_)
                  {
                     if(§-q§.distance(_loc2_.x,_loc2_.y,_loc7_.x,_loc7_.y) <= §+#A§.value)
                     {
                        _loc2_.§9U§ = 0;
                        _loc3_ = false;
                        break;
                     }
                  }
                  if(_loc3_)
                  {
                     ++_loc2_.§9U§;
                  }
                  if(_loc2_.§9U§ >= §;$Z§.value)
                  {
                     _loc2_.destroy();
                     this.mines.splice(_loc5_,1);
                     _loc4_--;
                  }
               }
               _loc5_++;
            }
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:uint = 0;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            this.§6#a§(4 * (§[!y§.value + 4));
         }
         else if(!this.boss.disposed && this.boss.squad.getTeamId() == param2.squad.getTeamId())
         {
            _loc3_ = Application.scene.§@$I§.§;%a§.§"L§([§3&G§]).length;
            if(_loc3_ < §&"G§.value)
            {
               this.§6#a§(4 * §[!y§.value);
            }
         }
      }
      
      private function §6#a§(param1:int) : void
      {
         var _loc3_:Point = null;
         var _loc2_:int = §2a§ ? int(§-#M§.§-!e§ / 5) : int(§-#M§.§-!e§ / (§^i§ ? 4 : 2));
         var _loc4_:uint = 0;
         while(_loc4_ < param1)
         {
            _loc3_ = §-#M§.§,#e§(80,true,_loc2_);
            if(_loc3_ != null)
            {
               §8$a§.§%!E§(2 * _loc4_,§1%"§.§]$<§(this.§6%U§,this,[_loc3_]));
            }
            _loc4_++;
         }
      }
      
      private function §6%U§(param1:Point) : void
      {
         if(§8"%§.§&S§.§41§() && §8"%§.§&S§.§3%W§)
         {
            §1"-§.explode(§;n§.MEDIUM,param1.x,param1.y,16);
         }
         var _loc2_:§3&G§ = new §3&G§(this.boss,param1.x,param1.y,this.§ &C§,randomSeed.§,!q§(1,12),!§^i§);
         _loc2_.addEventListener(§0%v§.DISPOSED,this.§2$r§);
         _loc2_.setSpeedXY(0,0);
         this.mines.push(_loc2_);
      }
      
      private function §2$r§(param1:Event) : void
      {
         §3&G§(param1.currentTarget).removeEventListener(§0%v§.DISPOSED,this.§2$r§);
         if(currentUnit != this.boss)
         {
            dispatchEvent(param1);
         }
      }
      
      override public function clear() : void
      {
         this.§ &C§ = null;
         this.mines.length = 0;
         this.boss.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         this.boss = null;
      }
   }
}

