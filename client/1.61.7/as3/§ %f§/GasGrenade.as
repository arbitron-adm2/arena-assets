package § %f§
{
   import § !P§.§]z§;
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"%H§.*;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%$[§.§1$J§;
   import §&"c§.§5$n§;
   import §&x§.§=$h§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[0§;
   import §,"v§.§9%d§;
   import §-8§.§3!x§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §4!K§.*;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.*;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §?o§.§!%I§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=#,§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GasGrenade extends §!%I§
   {
      
      private var §`"$§:String;
      
      private var cloudClass:Class;
      
      private var params:Object = {};
      
      private var explodeDamage:int = 0;
      
      private var onExplodePoisoningReduce:Boolean;
      
      public function GasGrenade(param1:§+%]§, param2:§5$n§, param3:§5$n§, param4:uint, param5:Number, param6:uint, param7:Number, param8:String, param9:Class)
      {
         super(param1,param2,param4,param5,param6,param7,"");
         this.§`"$§ = param8;
         this.cloudClass = param9;
      }
      
      public function setArmorReduction(param1:uint) : void
      {
         this.params.armorReduction = param1;
      }
      
      public function serMaxPoisonDamage(param1:uint) : void
      {
         this.params.maxPoisonDamage = param1;
      }
      
      public function setCloudRadius(param1:uint) : void
      {
         this.params.cloudRadius = param1;
      }
      
      public function setSlowing(param1:Boolean) : void
      {
         this.params.slowing = param1;
      }
      
      public function setExplodeDamage(param1:int) : void
      {
         this.explodeDamage = param1;
      }
      
      public function setOnExplodePoisoningReduce() : void
      {
         this.onExplodePoisoningReduce = true;
      }
      
      override public function explode() : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         disposed = true;
         if(this.explodeDamage > 0)
         {
            §'"$§.§]#I§(owner,x,y,null,this.explodeDamage,paramSet.damageRadius.value,paramSet.explosionRadius.value,true,true,_damageType,true,true,true,true,_customSource);
            §1"-§.§&!C§(x,y,12);
            §1"-§.explode(§!r§,x,y,paramSet.damageRadius.value,§`!v§.§["s§);
            if(this.onExplodePoisoningReduce)
            {
               _loc2_ = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
               for each(_loc3_ in _loc2_)
               {
                  _loc3_.buffs.replace(new §[0§());
               }
            }
         }
         else
         {
            §1"-§.explode(§;n§.§8!-§,x,y,paramSet.damageRadius.value,§`!v§.§["s§);
         }
         var _loc1_:§3!x§ = new this.cloudClass(owner,x,y,paramSet,this.§`"$§,this.params);
         _loc1_.customSource = _customSource;
      }
   }
}

