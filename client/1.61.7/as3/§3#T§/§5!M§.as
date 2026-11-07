package §3#T§
{
   import § !P§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&!&§.§&§;
   import §&!&§.§<"p§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&&6§.§7$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §+$2§.§;#T§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2"v§.*;
   import §3"@§.§""m§;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7"Q§.*;
   import §7$t§.*;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`%&§.§`§;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import config.achievements.§"!&§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §5!M§ extends §6#I§ implements §<"p§, §&#6§
   {
      
      private static const §-"V§:uint = 30;
      
      private static const §!%l§:uint = 60;
      
      private var paramSet:§5$n§;
      
      private var §&!X§:Boolean = false;
      
      private var cargo:§&"T§;
      
      private var §1%@§:Boolean = false;
      
      private var §`%G§:§7#P§;
      
      public function §5!M§(param1:§+%]§)
      {
         super(param1,param1.x,param1.y,false,-1);
      }
      
      private static function §=N§(param1:Event) : void
      {
         §@%;§.play(§`!v§.§1$t§);
      }
      
      public function init(param1:§5$n§) : void
      {
         this.paramSet = param1;
         §,q§ = new <§-&§>[§-&§.SUPPLY_PICKUPER,§-&§.IGNORE_MAGNET];
         clip = §6#A§.§!&6§(param1.ammoClassName);
         this.x = owner.x;
         this.y = owner.y;
         §`4§ = §+#G§;
         §^"F§(-Math.PI / 2,5);
         this.§`%G§ = §@%;§.play(§`!v§.§,&2§,true);
         addEventListener(§0%v§.§+&=§,§=N§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!disposed)
         {
            clip.rotation = speedX * 3;
         }
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new §6a§(physParams);
      }
      
      public function pickUp(param1:int = 0) : void
      {
         var _loc2_:§&"T§ = null;
         var _loc3_:§&"T§ = null;
         if(!this.§&!X§)
         {
            if(param1 != 0)
            {
               _loc3_ = Application.scene.§@$I§.§;%a§.§+#b§(param1);
               if(_loc3_)
               {
                  if(_loc3_.§5%g§(§-&§.CAPTURABLE) || this.§1%@§ && _loc3_ is §+%]§)
                  {
                     §@%;§.play(§`!v§.§@v§);
                     this.§="+§(_loc3_);
                  }
               }
               else
               {
                  _loc2_ = this.§0"k§();
                  if(_loc2_)
                  {
                     §@%;§.play(§`!v§.§@v§);
                     this.§="+§(_loc2_);
                  }
               }
            }
            else
            {
               _loc2_ = this.§0"k§();
               if(_loc2_)
               {
                  §@%;§.play(§`!v§.§@v§);
                  this.§="+§(_loc2_);
               }
            }
         }
         else
         {
            this.§0#r§();
         }
      }
      
      public function attack() : void
      {
         var target:§&"T§ = null;
         if(!this.§&!X§)
         {
            target = this.§0"k§(false);
            if(Boolean(target) && this.§#$U§(target))
            {
               §@%;§.play(§`!v§.§@v§);
               this.§="+§(target);
            }
            else
            {
               target ||= this.§^#d§();
               if(target)
               {
                  if(§8"%§.§&S§.§-p§())
                  {
                     §1"-§.§;%k§(this,§;n§.§7q§,10);
                  }
                  §^"F§(Math.atan2(target.y - y,target.x - x),10);
                  §8$a§.§&!#§(this,§0%v§.§+&=§,function(param1:Event):void
                  {
                     explode();
                  });
               }
            }
         }
         else
         {
            this.§0#r§();
         }
      }
      
      private function §#$U§(param1:§&"T§) : Boolean
      {
         return param1 is §+%]§ ? this.§1%@§ && owner.squad.getTeamId() == §+%]§(param1).squad.getTeamId() : true;
      }
      
      private function §="+§(param1:§&"T§) : void
      {
         this.§&!X§ = true;
         this.cargo = param1;
         this.§<8§();
         Application.scene.addEventListener(§0%v§.FRAME,this.§0#5§);
      }
      
      private function §0#r§() : void
      {
         var _loc1_:Point = null;
         this.§&!X§ = false;
         Application.scene.removeEventListener(§0%v§.FRAME,this.§0#5§);
         if(this.cargo != null && !this.cargo.disposed)
         {
            _loc1_ = null;
            if(this.cargo is §+%]§)
            {
               _loc1_ = §<H§.§ !K§(this.cargo.x,this.cargo.y,§>#9§.unit,150);
            }
            this.cargo.x = _loc1_ ? int(_loc1_.x) : x;
            this.cargo.y = _loc1_ ? int(_loc1_.y) : y;
            this.cargo.setSpeedXY(0,-3);
         }
         this.cargo = null;
      }
      
      private function §0#5§(param1:Event) : void
      {
         this.§<8§();
      }
      
      private function §<8§() : void
      {
         if(Boolean(!disposed) && Boolean(this.cargo) && !this.cargo.disposed)
         {
            this.cargo.x = x;
            this.cargo.y = y + 20;
            this.cargo.setSpeedXY(0,0);
            this.cargo.stable = false;
         }
      }
      
      private function §0"k§(param1:Boolean = true) : §&"T§
      {
         var _loc2_:§&"T§ = null;
         var _loc4_:Vector.<§&"T§> = null;
         var _loc3_:Vector.<§&"T§> = this.getTargets();
         if(_loc3_.length == 0 && this.§1%@§)
         {
            _loc4_ = this.getTargetUnits(param1);
            if(_loc4_.length > 0)
            {
               _loc2_ = _loc4_[0];
            }
         }
         else if(_loc3_.length > 0)
         {
            _loc2_ = _loc3_[0];
         }
         return _loc2_;
      }
      
      private function §^#d§() : §&"T§
      {
         var _loc1_:Vector.<§&"T§> = this.getTargetUnits(false,true);
         if(_loc1_.length > 0)
         {
            return _loc1_[0];
         }
         return null;
      }
      
      public function getTargets() : Vector.<§&"T§>
      {
         return §<H§.§%$Q§(x - §-"V§ / 2,y,x + §-"V§,y + §!%l§,Application.scene.§@$I§.§;%a§.§0! §(§-&§.CAPTURABLE));
      }
      
      public function getTargetUnits(param1:Boolean = true, param2:Boolean = false) : Vector.<§&"T§>
      {
         var teamId:int = 0;
         var doFilterAlly:Boolean = param1;
         var doFilterEnemy:Boolean = param2;
         var gobjs:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         if(this.§1%@§ || doFilterEnemy)
         {
            gobjs = §<H§.§%$Q§(x - §-"V§ / 2,y,x + §-"V§,y + §!%l§,Application.scene.§@$I§.§;%a§.§'#&§(§<#`§.§[;§));
         }
         teamId = owner.squad.getTeamId();
         if(this.§1%@§)
         {
            if(doFilterAlly)
            {
               gobjs = gobjs.filter(function(param1:§&"T§, param2:int, param3:Vector.<§&"T§>):Boolean
               {
                  return teamId == §+%]§(param1).squad.getTeamId();
               });
            }
         }
         else if(doFilterEnemy)
         {
            if(doFilterAlly)
            {
               gobjs = gobjs.filter(function(param1:§&"T§, param2:int, param3:Vector.<§&"T§>):Boolean
               {
                  return teamId != §+%]§(param1).squad.getTeamId();
               });
            }
         }
         return gobjs;
      }
      
      public function setCanCarryUnit() : void
      {
         this.§1%@§ = true;
      }
      
      public function explode() : void
      {
         if(!disposed)
         {
            if(this.§&!X§)
            {
               this.§0#r§();
            }
            disposed = true;
            inflictDamage(null,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            §1"-§.§&!C§(x,y,12);
            §1"-§.explode(§;n§.§@%d§,this.x,this.y,this.paramSet.explosionRadius.value,§`!v§.§["s§);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.§`%G§ != null)
         {
            this.§`%G§.stop();
            this.§`%G§ = null;
         }
         removeEventListener(§0%v§.§+&=§,§=N§);
      }
   }
}

