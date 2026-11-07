package § %f§
{
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§="_§;
   import §,!f§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §8$V§.*;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class Parasite extends §=!z§
   {
      
      protected var blinkClip:String;
      
      protected var attachedClip:String;
      
      public function Parasite(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint)
      {
         §=#Y§ = false;
         super(param1,param2,param3,param4,param5,param6,0.5,150);
         §2#J§ = [§`!v§.§]%7§];
         physParams.§5N§ |= §9%1§.§@%h§;
         addEventListener(§0%v§.§+&=§,this.onCollide);
      }
      
      public function §@L§(param1:String, param2:String) : void
      {
         this.blinkClip = param1;
         this.attachedClip = param2;
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         if(param1.other != null && param1.other is §+%]§ && owner.squad.getTeamId() != §+%]§(param1.other).squad.getTeamId())
         {
            §+%]§(param1.other).buffs.place(this.§-$4§());
            inflictDamage(param1.other,paramSet.damage.value,0,0);
            disposed = true;
            §@%;§.play(§`!v§.§-#"§);
         }
      }
      
      protected function §-$4§() : §="_§
      {
         return new §="_§(owner,Parasite,paramSet,this.blinkClip,this.attachedClip);
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
         disposed = true;
         §1"-§.explode(§;n§.§@"W§,x,y,0,§`!v§.§>#Z§);
      }
   }
}

