package §4#`§
{
   import § !P§.§]z§;
   import § $q§.§-%f§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.*;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&$Y§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §4B§.§=%8§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.*;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §8#a§.§>!o§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?#g§.§-!k§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §'#R§
   {
      
      private var clip:MovieClip;
      
      private var §#"7§:int;
      
      private var totalFrames:int;
      
      private var §2"q§:int;
      
      public function §'#R§(param1:int, param2:String = "")
      {
         super();
         this.§#"7§ = param1;
         this.clip = §6#A§.§!&6§("ProgressBarBoss");
         this.totalFrames = this.clip.totalFrames;
         this.clip.gotoAndStop(0);
         this.clip.scaleX = this.clip.scaleY = 1;
         Application.scene.addEventListener(§`"^§.SCENE_RESIZED,this.§;B§);
         this.§#7§(param2);
         this.clip.y = 70;
         this.§;B§();
      }
      
      public function §#7§(param1:String) : void
      {
         §&$9§.§>&F§(this.clip["title"],§"-§.§+$m§,param1);
      }
      
      public function update(param1:int) : void
      {
         this.§2"q§ = param1;
         var _loc2_:int = int(§-q§.§8$G§(§-q§.§5&H§(param1,this.§#"7§),this.totalFrames));
         this.clip.gotoAndStop(_loc2_ <= 0 ? 1 : _loc2_);
      }
      
      private function §;B§(param1:Event = null) : void
      {
         var _loc2_:§3#q§ = Application.scene.§7#o§.wind;
         this.clip.x = _loc2_.x + _loc2_.getChildByName("border").width * 0.5 - this.clip.width * 0.5;
      }
      
      public function destroy() : void
      {
         Application.scene.removeEventListener(§`"^§.SCENE_RESIZED,this.§;B§);
         if(this.clip != null)
         {
            this.clip = null;
         }
      }
      
      public function getClip() : MovieClip
      {
         return this.clip;
      }
      
      public function §]P§() : int
      {
         return this.§2"q§;
      }
      
      public function §`%,§() : int
      {
         return this.§#"7§;
      }
   }
}

