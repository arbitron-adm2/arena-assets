package § %f§
{
   import § !P§.*;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §&&6§.§7$§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§?3§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4!!§.§2&F§;
   import §4!!§.§[%@§;
   import §4%_§.ZombieGrave;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7"Q§.§0$L§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@!i§.§!m§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.adobe.serialization.json.JSONEncoder;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class § "r§ extends §=!z§
   {
      
      private static const §2;§:Number = 0.5;
      
      private static const §]%#§:int = 180;
      
      private static const HEAL:§&$2§ = new §&$2§(30);
      
      private static const §<"K§:§&$2§ = new §&$2§(80);
      
      private static const FREEZE_DURATION:§&$2§ = new §&$2§(3);
      
      private var healing:Boolean;
      
      private var unitsHit:Vector.<§+%]§>;
      
      private var §`m§:§7#P§;
      
      public function § "r§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param1.x,param1.y,param2,param3,param4,§2;§,§]%#§);
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         var self:§ "r§ = null;
         var e:Event = param1;
         super.§^$e§(e);
         self = this;
         §1"-§.§^!7§(x,y,20,16737080);
         §8$a§.§%!E§(10,function():void
         {
            if(!disposed)
            {
               §1"-§.§^!7§(x,y,20,16737080);
            }
         });
         §8$a§.§%!E§(20,function():void
         {
            if(!disposed)
            {
               §1"-§.§^!7§(x,y,20,14355456);
            }
         });
         §8$a§.§%!E§(30,function():void
         {
            var _loc1_:Boolean = false;
            var _loc2_:Class = null;
            var _loc3_:§+%]§ = null;
            if(!disposed)
            {
               disposed = true;
               _loc1_ = true;
               self.inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,true,_customSource);
               if(healing)
               {
                  heal();
               }
               if(_damageType == §&!E§.COLD)
               {
                  _loc1_ = false;
                  unitsHit = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
                  for each(_loc3_ in unitsHit)
                  {
                     if(!_loc3_.disposed)
                     {
                        _loc3_.buffs.place(new §+m§(owner,FREEZE_DURATION.value));
                     }
                  }
                  spikeStrike();
               }
               §1"-§.§&!C§(x,y,20);
               _loc2_ = §;n§.§@%d§;
               §1"-§.explode(_loc2_,self.x,self.y,paramSet.damageRadius.value,§`!v§.§["s§);
               §'!j§.go(paramSet.damage.value,_loc1_);
            }
         });
         this.§`m§ = §@%;§.play(§`!v§.§^K§,true);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.§`m§ != null)
         {
            this.§`m§.stop();
         }
      }
      
      public function heal() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:int = 0;
         var _loc5_:§+%]§ = null;
         _loc1_ = §8"%§.§?!W§.§4"m§.§="T§(owner,false,true);
         _loc2_ = owner.bonuses.getStatValue(Bonus.§;#-§);
         var _loc3_:int = HEAL.value + §-q§.§8$G§(_loc2_,HEAL.value);
         var _loc4_:Vector.<§+%]§> = §<H§.§5"]§(x,y,paramSet.damageRadius.value * 2,_loc1_);
         for each(_loc5_ in _loc4_)
         {
            new §2&F§(owner,x,y,_loc5_,_loc3_);
         }
      }
      
      public function spikeStrike() : void
      {
         var enemies:Vector.<§+%]§> = null;
         var unit:§+%]§ = null;
         var ammoAngle:Number = NaN;
         var ax:int = 0;
         var ay:int = 0;
         var ammo:§[%@§ = null;
         var ammoPushForce:Number = NaN;
         enemies = §8"%§.§?!W§.§4"m§.§6"M§(owner,false);
         var ammoParamSet:§5$n§ = §5$n§.§<#=§("AmBlizzard",§<"K§.value,0,0);
         var ammoSpeed:Number = 30;
         var ammoDist:int = 30;
         var unitsInCircle:Vector.<§+%]§> = §<H§.§5"]§(x,y,paramSet.damageRadius.value * 5,enemies);
         for each(unit in unitsInCircle)
         {
            if(this.unitsHit.indexOf(unit) == -1)
            {
               ammoAngle = Math.atan2(unit.y - y,unit.x - x);
               ax = x + Math.cos(ammoAngle) * ammoDist;
               ay = y + Math.sin(ammoAngle) * ammoDist;
               ammo = new §[%@§(owner,ax,ay,ammoParamSet,ammoAngle,ammoSpeed,§#Z§.ZERO);
               ammo.§?!q§(0);
               ammoPushForce = 5;
               ammo.addEventListener(§0%v§.§+&=§,function(param1:CollisionEvent):void
               {
                  if(!ammo.disposed && param1.other is §+%]§)
                  {
                     param1.other.§6"O§(ammo.angle,ammoPushForce);
                  }
               });
            }
         }
      }
      
      public function §8#P§() : void
      {
         this.healing = true;
      }
      
      public function §[_§() : void
      {
         _damageType = §&!E§.COLD;
      }
   }
}

