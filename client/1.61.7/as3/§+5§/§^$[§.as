package §+5§
{
   import § $q§.§3U§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0!§.*;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§,!t§;
   import §3#a§.§-!`§;
   import §3#a§.§[&A§;
   import §4f§.§-&§;
   import §5#`§.*;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§`"y§;
   import §;!Z§.*;
   import §<%E§.§6#`§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §?$K§.§=z§;
   import §@$§.§+%>§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import §^!]§.TeleportEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^$[§ extends §6#I§ implements §2%F§
   {
      
      private static const §!%c§:§&$2§ = new §&$2§(-10);
      
      private static const SPEED:§&$2§ = new §&$2§(7);
      
      private static const §;o§:§&$2§ = new §&$2§(180);
      
      private static const §%%i§:int = 20;
      
      protected var paramSet:§5$n§;
      
      protected var direction:int;
      
      protected var target:§+%]§;
      
      protected var bounceSounds:Array = [§`!v§.§;!?§];
      
      private var §^$Q§:§7#P§;
      
      private var §;!0§:§7#P§;
      
      private var §`&;§:int = 30;
      
      protected var §9%N§:Class = §;n§.§@%d§;
      
      private var §&&=§:Boolean = true;
      
      private var §=&'§:Boolean;
      
      public function §^$[§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int)
      {
         var _loc6_:MovieClip = null;
         super(param1,param3,param4,true,-1);
         this.paramSet = param2;
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         _loc6_ = §6#A§.§!&6§(param2.ammoClassName);
         this.x = param3;
         this.y = param4;
         this.clip = _loc6_;
         §-b§(0,§!%c§.value);
         physicModel.keepUnstable = true;
         this.direction = param5;
         if(param5 == §+%]§.LEFT)
         {
            §,!t§.§%v§(this.clip);
         }
         §6a§(physicModel).crawling = param5 * SPEED.value;
         §@%;§.play(§`!v§.§?%<§);
         this.§;!0§ = §@%;§.play(§`!v§.SPIDERMINE_WALK_LOOP2,true);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new §6a§(physParams,20,8);
         physicModel.addEventListener(§9#1§.§ ""§,this.§#%F§);
         physicModel.addEventListener(§9#1§.§@"-§,this.§^$e§);
         physicModel.addEventListener(§9#1§.§>&9§,this.§5<§);
      }
      
      protected function §#%F§(param1:Event) : void
      {
         §6a§(physicModel).crawling = 0;
         §5!?§(this.direction * 3,0);
      }
      
      protected function §^$e§(param1:Event) : void
      {
         §6a§(physicModel).crawling = this.direction * SPEED.value;
      }
      
      protected function §5<§(param1:Event) : void
      {
         this.direction *= -1;
         §,!t§.§%v§(this.clip);
         §6a§(physicModel).crawling = this.direction * SPEED.value;
         if(this.bounceSounds != null && this.bounceSounds.length > 0 && (!this.§^$Q§ || !this.§^$Q§.isPlaying()))
         {
            this.§^$Q§ = §@%;§.play(§`!v§.§=%2§(this.bounceSounds));
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(disposed)
         {
            return;
         }
         if(this.target == null)
         {
            if(frames >= §;o§.value)
            {
               this.explode();
            }
            else
            {
               this.§;#3§();
            }
         }
         else if(frames % 4 == 0)
         {
            this.§8A§();
         }
      }
      
      private function §;#3§() : void
      {
         var _loc1_:§+%]§ = this.§ !T§();
         if(_loc1_ == null)
         {
            return;
         }
         this.target = _loc1_;
         §6a§(physicModel).crawling = 0;
         physicModel.keepUnstable = false;
         this.target.addEventListener(§0%v§.TELEPORT,this.onTeleport);
         this.§;!0§.stop();
         §@%;§.play(§`!v§.§8#w§);
         MovieClip(clip.getChildAt(0)).stop();
         this.§`&;§ = 0;
      }
      
      private function §8A§() : void
      {
         if(this.target.disposed || Math.abs(x - this.target.x) > §%%i§ || Math.abs(y - this.target.y) > §%%i§)
         {
            this.§&$V§();
         }
      }
      
      public function §&$V§() : void
      {
         this.§!2§();
         this.explode();
      }
      
      protected function §!2§() : void
      {
         if(this.§=&'§)
         {
            return;
         }
         var _loc1_:int = owner ? int(§ !!§.§%!y§ + owner.bonuses.getStatValue(Bonus.POISONING_ADDITION)) : 0;
         §7%g§.§>!%§(this.target,owner,_loc1_);
      }
      
      private function § !T§() : §+%]§
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = owner ? §8"%§.§?!W§.§4"m§.§6"M§(owner) : §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.disposed && _loc2_.stable && Math.abs(x - _loc2_.x) < 5 && Math.abs(y + §!%c§.value - _loc2_.y) < 5)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function onTeleport(param1:TeleportEvent) : void
      {
         if(!this.disposed && Boolean(physicModel))
         {
            this.stable = false;
            this.x = param1.newLoc.x;
            this.y = param1.newLoc.y;
         }
      }
      
      public function explode() : void
      {
         if(!this.§=&'§)
         {
            if(!this.§&&=§)
            {
               §'"$§.§]#I§(null,x,y,null,0,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,false);
            }
            inflictDamage(null,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,this.§&&=§);
         }
         §1"-§.§&!C§(x,y,12);
         §1"-§.explode(this.§9%N§,this.x,this.y,this.paramSet.explosionRadius.value,§`!v§.§["s§);
         if(this.target != null)
         {
            this.target.removeEventListener(§0%v§.TELEPORT,this.onTeleport);
         }
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.§;!0§.stop();
      }
      
      public function §=#>§(param1:§+%]§, param2:§+%]§) : void
      {
         if(this.target == param1)
         {
            this.target.removeEventListener(§0%v§.TELEPORT,this.onTeleport);
            param2.addEventListener(§0%v§.TELEPORT,this.onTeleport);
            this.target = param2;
         }
      }
      
      public function §%!=§(param1:§+%]§) : void
      {
         var _loc2_:§^$[§ = null;
         if(this is §5%d§)
         {
            _loc2_ = new §5%d§(owner,this.paramSet.clone(),param1.x,param1.y,param1.direction);
         }
         else if(this is §6%#§)
         {
            _loc2_ = new §6%#§(owner,this.paramSet.clone(),param1.x,param1.y,param1.direction);
         }
         else
         {
            _loc2_ = new §^$[§(owner,this.paramSet.clone(),param1.x,param1.y,param1.direction);
         }
         _loc2_.§=&'§ = true;
         _loc2_.target = param1;
         §6a§(_loc2_.physicModel).crawling = 0;
         _loc2_.physicModel.keepUnstable = false;
         _loc2_.target.addEventListener(§0%v§.TELEPORT,_loc2_.onTeleport);
         _loc2_.§;!0§.stop();
         MovieClip(_loc2_.clip.getChildAt(0)).stop();
         _loc2_.§`&;§ = 0;
      }
      
      public function §9$r§() : int
      {
         return this.§`&;§;
      }
      
      public function §`"%§() : §+%]§
      {
         return this.target;
      }
      
      public function set §,"$§(param1:Boolean) : void
      {
         this.§&&=§ = param1;
      }
   }
}

