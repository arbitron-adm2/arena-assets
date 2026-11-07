package §^4§
{
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §!$D§.*;
   import §!L§.§+"'§;
   import §#"V§.§0%9§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0!§.§6#z§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§^$y§;
   import §2#i§.§9##§;
   import §3"@§.§##L§;
   import §3#T§.§;#Q§;
   import §4#2§.*;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.§&"P§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§@$&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §@#J§ extends §]"8§
   {
      
      private static const §]&F§:int = 100;
      
      private static const §##S§:int = 500;
      
      private static const § %N§:int = 20;
      
      private static const §8;§:uint = 50;
      
      private static const §`$W§:uint = 10;
      
      private var §5&1§:uint = 0;
      
      private var unitsHit:Array = [];
      
      private var §-"k§:int;
      
      private var damageReduction:int = 10;
      
      private var drillDistance:§&$2§ = new §&$2§(§ %N§);
      
      private var §6"D§:int = 0;
      
      private var minDamageDist:int = 100;
      
      private var maxDamageDist:int = 500;
      
      private var alwaysCrit:Boolean = false;
      
      private var initPoint:Point;
      
      public function §@#J§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Number = 2, param7:Boolean = false, param8:Boolean = false, param9:Boolean = true, param10:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §,%S§ = true;
         physParams.§"%<§(§]%G§.§="u§);
         physParams.§`#&§ = false;
         physParams.ignoresTerrain = true;
         this.§-"k§ = param3.damage.value;
         this.§6"D§ = this.§6"D§;
         this.initPoint = param2;
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc4_:Number = NaN;
         if(param1.other is §+%]§ && this.unitsHit.indexOf(param1.other) != -1)
         {
            return;
         }
         var _loc2_:Point = §=z§.§-L§(param1.other);
         var _loc3_:Number = Point.distance(this.initPoint,new Point(x,y));
         if(_loc3_ < this.minDamageDist)
         {
            _loc4_ = this.§-"k§ / 2;
         }
         else if(_loc3_ < this.maxDamageDist)
         {
            _loc4_ = this.§-"k§ * (1 + (_loc3_ - this.minDamageDist) / (this.maxDamageDist - this.minDamageDist)) / 2;
         }
         else
         {
            _loc4_ = this.§-"k§;
         }
         var _loc5_:§+%]§ = param1.other is §+%]§ ? §+%]§(param1.other) : null;
         var _loc6_:uint = _loc5_ != null ? uint(Math.round(0.01 * this.§6"D§ * _loc5_.attributes.armor.value)) : 0;
         if(_loc5_)
         {
            if(this.§-"k§ > §8;§)
            {
               this.§-"k§ -= this.damageReduction;
            }
            this.unitsHit.push(param1.other);
            if(this.alwaysCrit && !owner.disposed)
            {
               §7%g§.§,J§(owner);
            }
         }
         if(_loc6_ > 0)
         {
            _loc5_.attributes.armor.§5#l§(-_loc6_);
         }
         inflictDamage(param1.other,_loc4_,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,false,true,_customSource);
         if(_loc6_ > 0)
         {
            _loc5_.attributes.armor.§5#l§(_loc6_);
         }
         if(this.§5&1§++ == this.drillDistance.value || §>#9§.point(param1.point.x,param1.point.y,true))
         {
            disposed = true;
            removeEventListener(§0%v§.§+&=§,this.onCollide);
         }
         if(param1.other == null)
         {
            §1"-§.§&!C§(x,y,3);
         }
         if(_loc2_)
         {
            §=z§.§5!u§(param1.other,_loc2_);
         }
      }
      
      public function setArmorReductionPc(param1:int) : void
      {
         this.§6"D§ = param1;
      }
      
      public function setAntidodge() : void
      {
         §3$1§ = false;
      }
      
      public function setAlwaysCritical() : void
      {
         this.alwaysCrit = true;
      }
      
      public function setDrillDistance(param1:int) : void
      {
         this.drillDistance.value = param1;
      }
      
      public function setDamageDistances(param1:int, param2:int) : void
      {
         this.minDamageDist = param1;
         this.maxDamageDist = param2;
      }
      
      public function §?#=§(param1:int) : void
      {
         this.damageReduction = param1;
      }
   }
}

