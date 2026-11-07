package §]$v§
{
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §1>§ extends §6#I§
   {
      
      private static const §@#d§:§&$2§ = new §&$2§(20);
      
      private static const §%$9§:§&$2§ = new §&$2§(10);
      
      private static const §'"i§:§&$2§ = new §&$2§(10);
      
      private const selfHit:§?"&§;
      
      private var counter:uint = 0;
      
      private var drillLength:uint;
      
      private var drillRadius:uint;
      
      private var §>!G§:§=#?§;
      
      private var explosionSound:§=#?§;
      
      protected var §"b§:Boolean;
      
      protected var §@H§:Boolean = true;
      
      public function §1>§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:uint = 0, param6:Point = null, param7:Object = null)
      {
         var point:Point = null;
         var self:§1>§ = null;
         var owner:§+%]§ = param1;
         var paramSet:§5$n§ = param2;
         var angle:Number = param3;
         var power:uint = param4;
         var armorReduction:uint = param5;
         var spawn:Point = param6;
         var trail:Object = param7;
         this.selfHit = new §?"&§(true);
         this.drillLength = §@#d§.value;
         this.drillRadius = §%$9§.value;
         this.§>!G§ = §`!v§.§0#O§;
         this.explosionSound = §`!v§.§4"t§;
         point = spawn ? spawn : new Point(owner.x,owner.y);
         super(owner,point.x,point.y,false);
         §,%S§ = true;
         §6""§ = true;
         initialize(§"$C§(angle,0,point),paramSet.ammoClassName);
         physParams.addForce(§]%G§.§-4§);
         physParams.§`#&§ = false;
         physParams.ignoresTerrain = true;
         §^"F§(angle,power);
         self = this;
         addEventListener(§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            var target:§+%]§;
            var unitHitted:Boolean;
            var expRadius:int = 0;
            var selfX:int = 0;
            var selfY:int = 0;
            var armorReductionAmount:uint = 0;
            var event:CollisionEvent = param1;
            if(disposed)
            {
               §"b§ = false;
               return;
            }
            ++counter;
            if(counter == 1 && !owner.disposed)
            {
               owner.stable = false;
            }
            expRadius = paramSet.explosionRadius.value;
            selfX = self.x;
            selfY = self.y;
            target = event.other is §+%]§ ? event.other as §+%]§ : null;
            unitHitted = Boolean(target) && (self.selfHit.value || target != owner);
            if(counter == drillLength || unitHitted || §>#9§.point(event.point.x,event.point.y,true))
            {
               if(Boolean(target) && unitHitted)
               {
                  armorReductionAmount = armorReduction > 0 ? uint(Math.round(0.01 * armorReduction * target.attributes.armor.value)) : 0;
                  if(armorReductionAmount > 0)
                  {
                     target.attributes.armor.§5#l§(-armorReductionAmount);
                  }
                  self.inflictDamage(target,paramSet.damage.value,paramSet.damageRadius.value,expRadius,self.selfHit.value,false,true,_customSource);
                  if(armorReductionAmount > 0)
                  {
                     target.attributes.armor.§5#l§(armorReductionAmount);
                  }
               }
               else
               {
                  self.inflictDamage(event.other,paramSet.damage.value,paramSet.damageRadius.value,expRadius,self.selfHit.value);
               }
               self.disposed = true;
               if(§@H§)
               {
                  §1"-§.§&!C§(selfX,selfY,16);
               }
               §1"-§.explode(§;n§.§@%d§,selfX,selfY,expRadius,explosionSound);
               §"b§ = false;
            }
            else
            {
               §@%;§.play(§>!G§);
               if(§@H§)
               {
                  §8$a§.§%!E§(2,function():void
                  {
                     §1"-§.explode(§;n§.§7q§,selfX,selfY,expRadius);
                  });
               }
               self.inflictDamage(event.other,§'"i§.value,drillRadius + 12,drillRadius,false,false,true,unitHitted ? _customSource : null);
               if(§@H§)
               {
                  §1"-§.§&!C§(selfX,selfY,4);
               }
               §"b§ = true;
            }
         });
         §`4§ = §]$S§;
         if(§8"%§.§&S§.§-p§() && Boolean(trail))
         {
            if(trail is Boolean)
            {
               §1"-§.§?"$§(this,§;%S§.§+$X§);
            }
            if(trail is §>"9§)
            {
               §1"-§.§?"$§(this,§>"9§(trail));
            }
         }
         Application.scene.§@$I§.§1$+§(this);
      }
      
      public function §+"E§(param1:uint, param2:uint) : void
      {
         this.drillLength = param1;
         this.drillRadius = param2;
      }
      
      public function §7%"§(param1:§=#?§, param2:§=#?§) : void
      {
         this.§>!G§ = param1;
         this.explosionSound = param2;
      }
      
      protected function §%#<§() : void
      {
         this.selfHit.value = false;
      }
   }
}

