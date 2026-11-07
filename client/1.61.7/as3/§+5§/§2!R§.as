package §+5§
{
   import § "L§.§`#r§;
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%&3§.*;
   import §&"c§.§5$n§;
   import §&%X§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §+$2§.§;#T§;
   import §+$=§.§6#A§;
   import §-@§.§0"e§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0%"§.§[!^§;
   import §0%[§.§0%§;
   import §0%[§.§9&#§;
   import §0%[§.Cookie;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2"L§.§,!t§;
   import §2"L§.§^$y§;
   import §4!!§.§6$V§;
   import §4#`§.*;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §7!B§.§6#I§;
   import §7$t§.§[!X§;
   import §8#o§.§#$s§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §<!W§.§3#M§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §?$7§.*;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §^!"§.§^$F§;
   import §^"y§.*;
   import §`"p§.*;
   import §`#x§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.server.EnterAccount;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpRetryCommandRequestServer;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §2!R§ extends §6#I§
   {
      
      protected static const § $e§:int = 5;
      
      protected var direction:int;
      
      protected var §+h§:int;
      
      protected var paramSet:§5$n§;
      
      protected var paramSetEx:§5$n§;
      
      private var §2#J§:Array = [];
      
      private var §^$Q§:§7#P§;
      
      protected var §9%N§:Class = §;n§.§@%d§;
      
      public function §2!R§(param1:§+%]§, param2:§5$n§, param3:§5$n§)
      {
         super(param1,param1.x,param1.y,true,-1);
         this.paramSet = param2;
         this.paramSetEx = param3;
         §§push(§§findproperty(§,q§));
         var _temp_1:* = new <§-&§>[§-&§.SUPPLY_PICKUPER];
         §§pop().§,q§ = new <§-&§>[§-&§.SUPPLY_PICKUPER];
         this.direction = param1.direction;
         this.§+h§ = § $e§;
         this.clip = §6#A§.§!&6§(param2.ammoClassName);
         if(this.direction == §+%]§.LEFT)
         {
            this.§&"H§();
         }
         this.x = param1.x;
         this.y = param1.y;
         physicModel.keepUnstable = true;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new §6a§(physParams,30);
         physicModel.addEventListener(§9#1§.§ ""§,this.§#%F§);
         physicModel.addEventListener(§9#1§.§@"-§,this.§^$e§);
         physicModel.addEventListener(§9#1§.§>&9§,this.§5<§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!this.disposed)
         {
            this.update();
         }
      }
      
      protected function update() : void
      {
      }
      
      public function run(param1:int) : void
      {
         param1 = §^$y§.sign(param1);
         if(this.direction != param1)
         {
            §6a§(physicModel).crawling = param1 * this.§+h§;
            this.§&"H§();
            this.direction = param1;
         }
      }
      
      protected function §#%F§(param1:Event) : void
      {
         §6a§(physicModel).crawling = 0;
         §5!?§(this.direction * 3,0);
      }
      
      protected function §^$e§(param1:Event) : void
      {
         §6a§(physicModel).crawling = this.direction * this.§+h§;
      }
      
      protected function §5<§(param1:Event) : void
      {
         this.run(this.direction * -1);
         if(this.§2#J§ != null && this.§2#J§.length > 0 && (!this.§^$Q§ || !this.§^$Q§.isPlaying()))
         {
            this.§^$Q§ = §@%;§.play(§`!v§.§=%2§(this.§2#J§));
         }
      }
      
      public function explode() : void
      {
         disposed = true;
         inflictDamage(null,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
         §1"-§.§&!C§(x,y,12);
         §1"-§.explode(this.§9%N§,this.x,this.y,this.paramSet.explosionRadius.value,§`!v§.§["s§);
      }
      
      private function §&"H§() : void
      {
         var _loc1_:int = this.clip.rotation;
         this.clip.rotation = 0;
         §,!t§.§%v§(this.clip);
         this.clip.rotation = _loc1_;
      }
      
      public function set bounceSounds(param1:Array) : void
      {
         this.§2#J§ = param1;
      }
   }
}

