package §%%A§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;d§ extends §6#I§
   {
      
      private static const §>%Y§:§&$2§ = new §&$2§(20);
      
      private static const §3"T§:uint = 5;
      
      protected var paramSet:§5$n§;
      
      protected var source:§&"T§;
      
      protected var target:§+%]§ = null;
      
      protected var §,!s§:uint;
      
      private var §@%Q§:uint = 5;
      
      public function §;d§(param1:§+%]§, param2:§&"T§, param3:§5$n§, param4:Number, param5:uint)
      {
         super(param1,param2.x,param2.y,false,90,§&!E§.§=$-§);
         this.paramSet = param3;
         this.source = param2;
         this.§,!s§ = param5;
         §`^§ = true;
         § $d§ = false;
         §-"e§ = false;
         initialize(new Point(param2.x,param2.y),param3.ammoClassName);
         §^"F§(param4,60);
         physParams.removeAllForces();
         if(clip)
         {
            clip.rotation = param4 * 180 / Math.PI;
         }
         §1"-§.§2$O§(param2,this,30,10,6068463,8);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:Boolean = false;
         if(!disposed)
         {
            if(param1.other == null)
            {
               if(!owner.disposed && §<H§.§8!P§(owner,x,y,this.paramSet.explosionRadius.value,true))
               {
                  this.target = owner;
                  this.§'#Z§();
                  disposed = true;
               }
               else
               {
                  §1"-§.explode(§;n§.MEDIUM,this.x,this.y,this.paramSet.explosionRadius.value);
                  inflictDamage(param1.other,0,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
                  if(--this.§@%Q§ == 0)
                  {
                     disposed = true;
                  }
               }
            }
            else if(param1.other is §+%]§)
            {
               this.target = §+%]§(param1.other);
               _loc2_ = this.target.squad.getTeamId() != owner.squad.getTeamId();
               if(_loc2_)
               {
                  inflictDamage(this.target,this.paramSet.damage.value,0,0);
               }
               else
               {
                  this.§'#Z§();
               }
               disposed = true;
            }
         }
      }
      
      private function §'#Z§() : void
      {
         this.target.attributes.attack.§5#l§(§>%Y§.value);
         §2!H§.§'!i§(§0%§.format(§0$N§.BONUS_ATTACK,{"value":§>%Y§.value}),§2!H§.§8"<§,this.target.x + this.target.width * 0.5,this.target.y + this.target.height * 0.5,20);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         §@%;§.play(§`!v§.§`%9§);
         if(this.target)
         {
            §1"-§.§2$O§(this.source,this.target,this.§,!s§,10,6068463,8);
         }
         else
         {
            §1"-§.§,%F§(this.source,x,y,this.§,!s§,10,6068463,8);
         }
         this.source = null;
         this.target = null;
         super.§[$u§(param1);
      }
   }
}

