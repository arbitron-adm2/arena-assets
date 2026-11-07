package §<!W§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#%!§.*;
   import §#P§.§`o§;
   import §%"1§.*;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,#_§.§%!_§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §3#a§.§<#_§;
   import §4#2§.§^S§;
   import §5!,§.§9$h§;
   import §5!9§.§6$,§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §6$z§.§!"§;
   import §65§.§`"C§;
   import §7$t§.§;#_§;
   import §9&+§.§>&5§;
   import §<"L§.§##-§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §?$K§.§=z§;
   import §?>§.§'!=§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.adobe.serialization.json.JSON;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.net.*;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §4!I§ extends §`"C§
   {
      
      public static const NAME:String = "ROBOT_STATICS_BUFF";
      
      public static const §@!s§:§&$2§ = new §&$2§(10);
      
      public static const §#%B§:§&$2§ = new §&$2§(25);
      
      public static const §5!$§:Number = 3;
      
      private static const §'%A§:uint = 80;
      
      private static const §6"R§:uint = 30;
      
      private var §-!J§:Boolean = false;
      
      private var §;$j§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      public function §4!I§(param1:String = "ROBOT_STATICS_BUFF")
      {
         super(param1,-1);
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
      }
      
      override protected function §0&"§() : void
      {
         this.§;$j§.length = 0;
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         if(Boolean(unit && !unit.disposed) && Boolean(!this.§-!J§) && this.§2"o§(param1))
         {
            this.§-!J§ = true;
            _loc2_ = §+%]§(param1.source.owner);
            this.§-"y§(_loc2_);
            if(unit.squad.isLocal() && this.§;$j§.indexOf(_loc2_) == -1)
            {
               this.§;$j§.push(_loc2_);
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,W§);
            }
         }
      }
      
      private function §2"o§(param1:DamageEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         _loc2_ = param1.source && param1.source.owner && param1.source.damageType != §&!E§.DRILL && param1.power > §5!$§;
         var _loc3_:§+%]§ = _loc2_ ? §+%]§(param1.source.owner) : null;
         return _loc2_ && !_loc3_.disposed && _loc3_ == §8"%§.§?!W§.§4"m§.activeUnit && _loc3_.squad.getTeamId() != unit.squad.getTeamId() && §<H§.§8!P§(_loc3_,unit.x,unit.y,§'%A§,true);
      }
      
      private function §-"y§(param1:§+%]§) : void
      {
         this.§4A§(false);
         §'"$§.§]#I§(unit,unit.x,unit.y,param1,§#%B§.value,0,0,false,false,§&!E§.§=$-§,false);
         §1"-§.§2$O§(unit,param1,12,10,§5%8§.§75§(unit.squad.getNumber()).textColor,5);
         if(!param1.buffs.hasBuff(§=z§.NAME))
         {
            param1.§5!?§(0,-14);
         }
         §@%;§.play(§`!v§.§`%9§);
      }
      
      private function §@%D§(param1:Event) : void
      {
         this.§-!J§ = false;
      }
      
      private function §,!l§(param1:Event) : void
      {
         var gm:§]$;§;
         var targets:Vector.<§+%]§>;
         var countNewEnemies:int;
         var unitsInCircle:Vector.<§+%]§> = null;
         var enemy:§+%]§ = null;
         var event:Event = param1;
         if(§&%M§)
         {
            return;
         }
         gm = §8"%§.§?!W§.§4"m§;
         if(gm.activeUnit == unit)
         {
            return;
         }
         unitsInCircle = §<H§.§5"]§(unit.x,unit.y,§6"R§);
         targets = unitsInCircle.filter(function(param1:§+%]§, ... rest):Boolean
         {
            return unit.squad.getTeamId() != param1.squad.getTeamId();
         });
         if(targets.length == 0)
         {
            return;
         }
         countNewEnemies = 0;
         for each(enemy in targets)
         {
            §'"$§.§]#I§(unit,unit.x,unit.y,enemy,§@!s§.value,0,0,false,true,§&!E§.§=$-§,false);
            if(!enemy.buffs.hasBuff(§=z§.NAME))
            {
               enemy.§5!?§(0,-14);
            }
            if(this.§;$j§.indexOf(enemy) == -1)
            {
               this.§;$j§.push(enemy);
               countNewEnemies++;
            }
         }
         this.§4A§(true);
         §@%;§.play(§`!v§.§`%9§);
         if(unit.squad.isLocal() && countNewEnemies > 0)
         {
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,W§,countNewEnemies);
         }
      }
      
      private function §4A§(param1:Boolean) : void
      {
         var clip:MovieClip = null;
         var nft:§%!_§ = null;
         var withRestore:Boolean = param1;
         clip = unit.graphics.§6w§("BotElectrified");
         var delay:int = clip ? clip.totalFrames : 0;
         if(withRestore)
         {
            nft = new §%!_§(delay,1);
            nft.addEventListener(FrameTimerEvent.§;$>§,function onFrameTimerComplete(param1:Event):void
            {
               if(Boolean(unit) && Boolean(!unit.disposed) && unit.stable)
               {
                  unit.§2!W§();
               }
               nft.stop();
            });
            nft.start();
         }
      }
   }
}

