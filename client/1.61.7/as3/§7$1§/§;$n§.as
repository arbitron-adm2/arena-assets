package §7$1§
{
   import § %f§.§=!z§;
   import §!L§.§`#p§;
   import §"$+§.*;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,!f§.*;
   import §,#_§.FrameTimer;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §3#T§.AtomBomb;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §8#a§.ShopMenu;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§9%1§;
   import §@!i§.§!m§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineActivateEvent;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`%&§.§5$1§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §;$n§ extends §=!z§ implements §2%F§
   {
      
      protected static const § "K§:uint = 55;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const PI_ONE_FOUR:Number = Math.PI / 4;
      
      protected var §##9§:§&$2§ = new §&$2§(20);
      
      protected var §=$`§:§&$2§ = new §&$2§(0);
      
      protected var activator:§+%]§;
      
      protected var §"%K§:Boolean = false;
      
      private var §+%H§:Boolean = false;
      
      private var §`#B§:int = 0;
      
      private var §!%L§:FrameTimer;
      
      private var §%$K§:Boolean = false;
      
      private var §>";§:§7#P§;
      
      protected var §6#k§:Boolean = false;
      
      protected var §#g§:Boolean = false;
      
      private var friendlyFire:Boolean;
      
      private var §5#+§:§&$2§ = new §&$2§(-1);
      
      private var §<#I§:§&$2§ = new §&$2§(0);
      
      public function §;$n§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Boolean = true, param6:Boolean = true, param7:uint = 55)
      {
         §=#Y§ = false;
         if(§>#9§.point(param2,param3))
         {
            Application.scene.§,# §(param2,param3,5,null,Boolean(param1) && Boolean(param1.weapon) ? int(param1.weapon.recordId.value) : 0);
         }
         var _loc8_:Number = -PI_HALF + (param1 ? param1.direction : 1) * PI_ONE_FOUR;
         super(param1,param2,param3,param4,_loc8_,2,0.2,0,-1);
         §§push(§§findproperty(§,q§));
         var _temp_2:* = new <§-&§>[§-&§.IGNORE_MAGNET,§-&§.CAPTURABLE];
         §§pop().§,q§ = new <§-&§>[§-&§.IGNORE_MAGNET,§-&§.CAPTURABLE];
         if(Boolean(clip) && Boolean(clip.numChildren > 0) && clip.getChildAt(0) is MovieClip)
         {
            MovieClip(clip.getChildAt(0)).stop();
         }
         if(param5)
         {
            this.§!%L§ = new FrameTimer(param7,1);
            this.§!%L§.addEventListener(FrameTimerEvent.§;$>§,this.§9#+§);
            this.§!%L§.start();
            §8$a§.§&!#§(physicModel,§9#1§.§@"-§,this.§9#J§);
         }
         else
         {
            this.§"%K§ = true;
         }
         §`4§ = §5$=§;
         this.§=$`§.value = param4.damageRadius.value + 1;
         this.friendlyFire = param6;
         physicModel.keepUnstable = true;
         clip.rotation = Math.random() * 360;
         physicModel.addEventListener(§9#1§.STABLE,this.§^$e§);
         Application.scene.addEventListener(§0%v§.SOT,this.§^% §);
      }
      
      protected function §9#+§(param1:Event) : void
      {
         this.§6#k§ = true;
         this.§@$!§();
      }
      
      private function §9#J§(param1:Event) : void
      {
         this.§#g§ = true;
         this.§@$!§();
      }
      
      protected function §@$!§() : void
      {
         if(!disposed && this.§6#k§ && this.§#g§)
         {
            this.§"%K§ = true;
         }
      }
      
      private function §^% §(param1:Event) : void
      {
         if(this.§5#+§.value != -1 && ++this.§<#I§.value >= this.§5#+§.value)
         {
            this.explode();
         }
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         §`4§ = §+#G§;
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!§+!x§)
         {
            this.tick();
         }
      }
      
      protected function tick() : void
      {
         if(this.§"%K§)
         {
            this.activator = this.§^#d§();
            if(this.activator)
            {
               this.§+%H§ = true;
               this.§"%K§ = false;
               this.§-$%§();
               if(!this.§%$K§)
               {
                  this.§%$K§ = true;
                  dispatchEvent(new MineSetUpEvent(this,true));
               }
               return;
            }
            if(!this.§%$K§)
            {
               this.§%$K§ = true;
               physicModel.keepUnstable = false;
               dispatchEvent(new MineSetUpEvent(this,false));
            }
         }
         if(this.§+%H§)
         {
            if(this.§`#B§ == 0)
            {
               this.§#%h§();
            }
            var _loc1_:§;$n§ = this;
            var _loc2_:Number = _loc1_.§`#B§ + 1;
            _loc1_.§`#B§ = _loc2_;
            this.§>$F§(this.§`#B§);
         }
         if(this.§`#B§ >= this.§##9§.value)
         {
            this.explode();
         }
      }
      
      protected function §^#d§() : §+%]§
      {
         var _loc4_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         var _loc2_:Number = 1 * this.§=$`§.value;
         var _loc3_:int = owner ? owner.squad.getTeamId() : -1;
         for each(_loc4_ in _loc1_)
         {
            if(Boolean(!_loc4_.disposed && (!this.friendlyFire && Boolean(owner) ? _loc4_.squad.getTeamId() != _loc3_ : true)) && Boolean(this.§8#U§(_loc4_)) && §<H§.§8!P§(_loc4_,this.x,this.y,_loc2_,false))
            {
               return _loc4_;
            }
         }
         return null;
      }
      
      protected function §8#U§(param1:§+%]§) : Boolean
      {
         return true;
      }
      
      protected function §-$%§() : void
      {
         §5!?§(0,1);
         physicModel.keepUnstable = true;
      }
      
      protected function §#%h§() : void
      {
         this.§>";§ = §`!v§.§[!o§(§`!v§.§^%§,true);
         if(Boolean(clip) && Boolean(clip.numChildren > 0) && clip.getChildAt(0) is MovieClip)
         {
            MovieClip(clip.getChildAt(0)).play();
         }
         dispatchEvent(new MineActivateEvent(this,this.activator != null));
      }
      
      private function §+#x§(param1:Event) : void
      {
         param1.target.removeEventListener(Event.SOUND_COMPLETE,this.§+#x§);
         if(this.§>";§)
         {
            this.§>";§ = §`!v§.§[!o§(§`!v§.§^%§);
            this.§>";§.addEventListener(Event.SOUND_COMPLETE,this.§+#x§);
         }
      }
      
      protected function §>$F§(param1:uint) : void
      {
      }
      
      override public function explode() : void
      {
         inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
         §1"-§.explode(§;n§.MEDIUM,this.x,this.y,paramSet.explosionRadius.value,§`!v§.§2#u§);
         disposed = true;
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         §`4§ = §5$=§;
         §6"O§(-PI_HALF,5);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(this.§>";§)
         {
            this.§>";§.removeEventListener(Event.SOUND_COMPLETE,this.§+#x§);
            this.§>";§.stop();
            this.§>";§ = null;
         }
         this.activator = null;
         if(Boolean(this.§!%L§) && this.§!%L§.running)
         {
            this.§!%L§.stop();
         }
         if(!this.§%$K§)
         {
            dispatchEvent(new MineSetUpEvent(this,false));
         }
         physicModel.removeEventListener(§9#1§.STABLE,this.§^$e§);
         Application.scene.removeEventListener(§0%v§.SOT,this.§^% §);
         super.§[$u§(param1);
      }
      
      public function §1#I§(param1:§&$2§) : void
      {
         this.§##9§.value = param1.value;
      }
      
      public function §^#^§(param1:§&$2§) : void
      {
         this.§5#+§.value = param1.value;
      }
      
      public function §9$r§() : int
      {
         return this.§=$`§.value;
      }
      
      public function get §<#g§() : Boolean
      {
         return this.§+%H§;
      }
      
      public function §]N§() : §+%]§
      {
         return this.activator;
      }
      
      override public function set disabled(param1:Boolean) : void
      {
         if(!this.§+%H§)
         {
            super.disabled = param1;
         }
      }
   }
}

