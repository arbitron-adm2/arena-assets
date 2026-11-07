package §^4§
{
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §4#2§.§,$8§;
   import §4%_§.§3§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§;$n§;
   import §;"9§.§;"c§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §>"l§.§#!Y§;
   import §?#g§.§&"P§;
   import §?#g§.§-!k§;
   import §@!N§.§3!3§;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[$P§.§8%R§;
   import §[%§.*;
   import §^#[§.§&$2§;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §9!K§ extends §6#I§
   {
      
      protected var paramSet:§5$n§;
      
      protected var source:§&"T§;
      
      protected var victim:§+%]§ = null;
      
      protected var §,!s§:uint;
      
      protected var thickness:Number = 2;
      
      protected var step:uint = 10;
      
      protected var dispersion:uint = 8;
      
      protected var §6!Q§:Boolean = true;
      
      protected var selfHit:Boolean = true;
      
      protected var §1#f§:Boolean;
      
      public function §9!K§(param1:§+%]§, param2:§&"T§, param3:§5$n§, param4:Number, param5:uint, param6:uint, param7:uint)
      {
         super(param1,param2.x,param2.y,false,param6,§&!E§.§=$-§);
         this.paramSet = param3;
         this.source = param2;
         this.§,!s§ = param7;
         §`^§ = false;
         § $d§ = false;
         §-"e§ = false;
         initialize(new Point(param2.x,param2.y),param3.ammoClassName);
         §^"F§(param4,param5);
         physParams.removeAllForces();
         if(clip)
         {
            clip.rotation = param4 * 180 / Math.PI;
         }
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         if(!disposed)
         {
            if(param1.other == null)
            {
               inflictDamage(param1.other,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,this.selfHit,true);
               if(this.§6!Q§)
               {
                  §1"-§.explode(§;n§.MEDIUM,x,y,this.paramSet.damageRadius.value);
                  disposed = true;
               }
            }
            else if(param1.other is §+%]§ && (!owner || § $d§ || §+%]§(param1.other).squad.getTeamId() != owner.squad.getTeamId()))
            {
               this.victim = §+%]§(param1.other);
               inflictDamage(param1.other,this.paramSet.damage.value,0,0,this.selfHit,true);
               disposed = true;
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         §@%;§.play(§`!v§.§`%9§);
         if(!this.§1#f§)
         {
            if(this.victim)
            {
               §1"-§.§2$O§(this.source,this.victim,this.§,!s§,this.step,6068463,this.dispersion,this.thickness);
            }
            else
            {
               §1"-§.§,%F§(this.source,x,y,this.§,!s§,this.step,6068463,this.dispersion,this.thickness);
            }
         }
         §1"-§.§8%8§(x,y,8);
         super.§[$u§(param1);
         this.source = null;
         this.victim = null;
      }
      
      public function getSource() : §&"T§
      {
         return this.source;
      }
   }
}

