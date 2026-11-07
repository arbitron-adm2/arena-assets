package §&&6§
{
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import §!$Z§.§"$I§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"$+§.*;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+$=§.*;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §3#a§.§<#_§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§<$!§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §[!`§.§<#m§;
   import §[$<§.§-&>§;
   import §[$<§.§>"9§;
   import §]$&§.§2&2§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import com.greensock.TweenLite;
   import config.§;"I§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.IDisplayListAdapter;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §7$§ extends §-"o§
   {
      
      private static const §=$O§:§&$2§ = new §&$2§(3);
      
      private var §!$_§:Vector.<Point>;
      
      private var § !]§:Vector.<§<#m§> = new Vector.<§<#m§>(0);
      
      private var §0#F§:MovieClip = new MovieClip();
      
      private var boss:§+%]§;
      
      private var §4%J§:Boolean;
      
      public function §7$§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("hacker.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(5,1.1,0.9,param1);
         var _loc5_:uint = _loc4_.§>$m§;
         var _loc6_:uint = _loc4_.§?"-§;
         var _loc7_:uint = _loc4_.level;
         var _temp_2:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_HACKER_NAME,[UserProfile.§'#3§(§0$N§.BOSS_HACKER_NAME,_loc7_ * 1.2,Race.§ "w§,360 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 1.2,_loc7_ * 0.8,§,$O§.BOSS_HACKER)]),new §-!`§(§0$N§.BOSS_HACKER_TEAM_PUPILS,[UserProfile.§'#3§(§0$N§.BOSS_HACKER_PUPILS,_loc7_ * 0.8,Race.§#%V§,100 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 0.7,_loc7_ * 1.1,§,$O§.NEO),UserProfile.§'#3§(§0$N§.BOSS_HACKER_PUPILS,_loc7_ * 0.8,Race.§+#T§,100 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 0.7,_loc7_ * 1.1,§,$O§.NEO)])];
         var _temp_3:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_HACKER_NAME,[UserProfile.§'#3§(§0$N§.BOSS_HACKER_NAME,_loc7_ * 1.2,Race.§ "w§,360 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 1.2,_loc7_ * 0.8,§,$O§.BOSS_HACKER)]),new §-!`§(§0$N§.BOSS_HACKER_TEAM_PUPILS,[UserProfile.§'#3§(§0$N§.BOSS_HACKER_PUPILS,_loc7_ * 0.8,Race.§#%V§,100 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 0.7,_loc7_ * 1.1,§,$O§.NEO),UserProfile.§'#3§(§0$N§.BOSS_HACKER_PUPILS,_loc7_ * 0.8,Race.§+#T§,100 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 0.7,_loc7_ * 1.1,§,$O§.NEO)])];
         return new <§-!`§>[new §-!`§(§0$N§.BOSS_HACKER_NAME,[UserProfile.§'#3§(§0$N§.BOSS_HACKER_NAME,_loc7_ * 1.2,Race.§ "w§,360 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 1.2,_loc7_ * 0.8,§,$O§.BOSS_HACKER)]),new §-!`§(§0$N§.BOSS_HACKER_TEAM_PUPILS,[UserProfile.§'#3§(§0$N§.BOSS_HACKER_PUPILS,_loc7_ * 0.8,Race.§#%V§,100 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 0.7,_loc7_ * 1.1,§,$O§.NEO),UserProfile.§'#3§(§0$N§.BOSS_HACKER_PUPILS,_loc7_ * 0.8,Race.§+#T§,100 + 5 * _loc6_ + 3 * _loc5_,_loc7_ * 0.7,_loc7_ * 1.1,§,$O§.NEO)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§+%]§ = null;
         this.boss = §+%]§(param1[0].§1!n§()[0]);
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 5;
         this.boss.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.9),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.5),new §>%Q§(§+%z§.CANNON_UPG_2,0.7),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.MOLOTOV,0.5)]);
         §-#M§.§&"r§(this.boss);
         var _loc3_:Vector.<§+%]§> = param1[1].§1!n§();
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc2_ = §+%]§(_loc3_[_loc4_]);
            _loc2_.aiMissFactor = 1;
            _loc2_.aiShotPower = 5;
            _loc2_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§8#d§,0.3),new §>%Q§(§+%z§.SNIPER_RIFLE,0.9),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.5),new §>%Q§(§+%z§.§!`§,0.5)]);
            §-#M§.§&"r§(_loc2_);
            _loc4_++;
         }
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         super.§+$L§(param1);
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:§<#m§ = null;
         var _loc4_:§6S§ = null;
         if(!this.boss.disposed && currentUnit != this.boss)
         {
            _loc2_ = 0;
            for each(_loc3_ in this.§ !]§)
            {
               if(_loc3_.§4$3§())
               {
                  _loc2_++;
                  if(_loc2_ >= §=$O§.value)
                  {
                     if(this.boss.buffs.hasBuff(§,"R§.NAME))
                     {
                        this.boss.buffs.§6C§(§,"R§.NAME);
                        this.§4%J§ = true;
                     }
                     return;
                  }
               }
            }
            if(!this.boss.buffs.hasBuff(§,"R§.NAME))
            {
               _loc4_ = new §6S§("HackerShield_idle","HackerShield_apper","HackerShield_fading");
               _loc4_.§@#a§(60);
               _loc4_.§-$@§(60);
               this.boss.buffs.place(new §,"R§(_loc4_));
               if(this.§4%J§)
               {
                  dispatchEvent(new Event(§!!c§.HACKER_ABSORB_REACTIVATED));
               }
            }
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:§<#m§ = null;
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            _loc3_ = this.§!$_§.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§ !]§[this.§ !]§.length] = new §<#m§(this.boss,this.§!$_§[_loc4_].x,this.§!$_§[_loc4_].y,new §&$2§(62),new §&$2§(50));
               _loc4_++;
            }
         }
         if(Boolean(param2 && param2 == this.boss) && Boolean(!this.boss.disposed) && !this.boss.buffs.hasBuff(§,"R§.NAME))
         {
            for each(_loc5_ in this.§ !]§)
            {
               if(_loc5_.§4$3§())
               {
                  _loc5_.§9!j§();
               }
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(currentUnit == this.boss)
         {
         }
      }
      
      public function getBoss() : §+%]§
      {
         return this.boss;
      }
      
      private function §,[§() : void
      {
         if(!this.boss)
         {
         }
      }
      
      override public function clear() : void
      {
         this.§4%J§ = false;
         this.§,[§();
         this.boss = null;
         this.§0#F§ = null;
         this.§ !]§.length = 0;
         this.§!$_§.length = 0;
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      public function set generatorPosition(param1:Vector.<Point>) : void
      {
         this.§!$_§ = param1;
      }
   }
}

