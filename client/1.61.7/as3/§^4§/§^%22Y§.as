package §^4§
{
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§[&;§;
   import §,!f§.*;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §2!-§.§'5§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.§&%5§;
   import §=#g§.§`G§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §@!N§.§&#Z§;
   import §@!i§.*;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §^"Y§ extends §]"8§
   {
      
      private static const §`$W§:Number = 0.5;
      
      private var §5&1§:uint = 2;
      
      private var §8#;§:Boolean;
      
      private var unitsHit:Array = [];
      
      private var armorReduction:uint = 0;
      
      private var slowing:Boolean;
      
      private var notPenetrate:Boolean;
      
      private var groundDestroy:Boolean;
      
      public function §^"Y§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Number = 2, param7:Boolean = false, param8:Boolean = false, param9:Boolean = true, param10:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         physParams.§`#&§ = false;
         this.groundDestroy = param3.ammoClassName != "AmSnowball";
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Boolean = false;
         var _loc4_:uint = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:§+%]§ = null;
         if(param1.other is §+%]§ && this.unitsHit.indexOf(param1.other) != -1)
         {
            param1.stopObject = false;
            return;
         }
         if(!disposed)
         {
            _loc2_ = §=z§.§-L§(param1.other);
            _loc3_ = param1.other is §+%]§;
            _loc4_ = _loc3_ ? uint(Math.round(0.01 * this.armorReduction * param1.other.attributes.armor.value)) : 0;
            if(_loc4_ > 0 && _loc3_)
            {
               param1.other.attributes.armor.§5#l§(-_loc4_);
            }
            _loc5_ = paramSet.damage.value * (this.§8#;§ ? §`$W§ : 1);
            _loc6_ = !this.groundDestroy || _loc3_ || this.§8#;§;
            inflictDamage(param1.other,_loc5_,_loc6_ ? 0 : paramSet.damageRadius.value,_loc6_ ? 0 : paramSet.explosionRadius.value,true,false,true,_customSource);
            if(_loc3_)
            {
               _loc7_ = param1.other as §+%]§;
               if(this.slowing)
               {
                  _loc7_.buffs.addValue(new §[&;§());
               }
               if(_loc4_ > 0)
               {
                  _loc7_.attributes.armor.§5#l§(_loc4_);
               }
               this.unitsHit.push(_loc7_);
               this.§8#;§ = true;
               _loc7_.§5!?§(§^$y§.sign(speedX),-1);
            }
            if(this.notPenetrate || --this.§5&1§ == 0 || !_loc3_)
            {
               disposed = true;
               removeEventListener(§0%v§.§+&=§,this.onCollide);
            }
            else
            {
               setSpeedXY(speedX / 2,speedY / 2);
            }
            if(param1.other == null)
            {
               §1"-§.explode(§;n§.MEDIUM,x,y,paramSet.damageRadius.value);
            }
            if(_loc2_)
            {
               §=z§.§5!u§(param1.other,_loc2_);
            }
         }
      }
      
      public function setArmorReduction(param1:uint) : void
      {
         this.armorReduction = param1;
      }
      
      public function setSlowing() : void
      {
         this.slowing = true;
      }
      
      public function setNotPenetrate() : void
      {
         _damageType = §&!E§.COLD;
         this.notPenetrate = true;
      }
   }
}

