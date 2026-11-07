package §&$N§
{
   import §##y§.CollisionEvent;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §0%[§.§""n§;
   import §3#T§.§;#Q§;
   import §4'§.§`"q§;
   import §7!B§.§6#I§;
   import §="z§.§9%1§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^-§.Rope;
   import avmplus.getQualifiedClassName;
   import config.achievements.BossAchieves;
   import flash.events.Event;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7!e§ extends Rope
   {
      
      private static const § #y§:int = 70;
      
      private static const §-#J§:§&$2§ = new §&$2§(5);
      
      private var paramSet:§5$n§;
      
      private var power:Number;
      
      private var target:§+%]§;
      
      private var §?!Y§:§&$2§ = new §&$2§(0);
      
      private var §1$2§:Boolean = false;
      
      public function §7!e§(param1:§+%]§, param2:§5$n§, param3:Number, param4:Number, param5:int)
      {
         super(param1,param1.x,param1.y,param2,param3,param4);
         this.paramSet = param2;
         this.power = param4;
         this.§1#W§ = new §&$2§(param5);
         physParams.§5N§ = §9%1§.§&!A§ + §9%1§.§@%h§;
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         if(!param1.other)
         {
            inflictDamage(null,0,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            §1"-§.§&!C§(x,y,4);
            if(++this.§?!Y§.value >= §-#J§.value)
            {
               this.§<#J§();
            }
            return;
         }
         if(param1.other is §+%]§)
         {
            if(§+%]§(param1.other).squad.getTeamId() == owner.squad.getTeamId())
            {
               disposed = true;
            }
            else if(this.target)
            {
               disposed = true;
            }
            else
            {
               dispatchEvent(new §7%K§(BossAchieves.§#?§));
               this.target = §+%]§(param1.other);
               this.§<#J§();
            }
         }
         else
         {
            if(param1.other is §6#I§ && §6#I§(param1.other).owner.squad.getTeamId() != owner.squad.getTeamId())
            {
               param1.other.disposed = true;
            }
            this.§<#J§();
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         super.onFrame(param1);
         if(Boolean(this.target) && this.target.disposed)
         {
            disposed = true;
         }
         else if(Boolean(this.target) && !disposed)
         {
            this.target.x = x;
            this.target.y = y;
            if(§-q§.distance(owner.x,owner.y,this.target.x,this.target.y) <= § #y§)
            {
               disposed = true;
            }
         }
         else if(this.§1$2§)
         {
            if(§-q§.distance(owner.x,owner.y,x,y) <= § #y§)
            {
               disposed = true;
            }
         }
      }
      
      private function §<#J§() : void
      {
         if(!owner.disposed && !this.disposed)
         {
            §^"F§(Math.atan2(owner.y - y,owner.x - x),this.power);
            this.§1$2§ = true;
         }
         else
         {
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(Boolean(this.target) && Boolean(!this.target.disposed) && !disposed)
         {
            this.target.§^"F§(Math.PI,5);
         }
         super.§[$u§(param1);
      }
   }
}

