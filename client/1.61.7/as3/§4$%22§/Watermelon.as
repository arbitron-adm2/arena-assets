package §4$"§
{
   import § "d§.§,!c§;
   import § #k§.*;
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#%!§.§ §;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §'!Z§.§'!j§;
   import §'!Z§.§]!&§;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §0!§.§9"u§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §?o§.§!%I§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.plugins.*;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class Watermelon extends §!%I§
   {
      
      private static const §>#O§:§&$2§ = new §&$2§(6);
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §%%n§:Number = Math.PI / 20;
      
      protected var paramSetEx:§5$n§;
      
      protected var §5!§:Class = WatermelonPiece;
      
      public function Watermelon(param1:§+%]§, param2:§5$n§, param3:§5$n§, param4:uint, param5:Number, param6:uint, param7:Number)
      {
         super(param1,param2,param4,param5,param6,param7,null);
         this.paramSetEx = param3;
         §2#J§ = [§`!v§.§5%;§];
         §5L§ = null;
         if(param1.squad.isLocal())
         {
            _customSource = §<$c§.§ !=§(§+%z§.WATERMELON);
         }
      }
      
      override public function attachTrail() : void
      {
      }
      
      override public function explode() : void
      {
         var _loc1_:int = 0;
         if(!disposed)
         {
            super.explode();
            if(§>#O§.value > 6)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"watermelon hack"));
            }
            _loc1_ = 0;
            while(_loc1_ < §>#O§.value)
            {
               this.§5#^§();
               _loc1_++;
            }
            §'!j§.go(paramSet.damage.value);
         }
      }
      
      private function §5#^§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         _loc1_ = -PI_HALF + §%%n§ * §8"%§.randomSeed.§,!q§(-5,5);
         _loc2_ = §8"%§.randomSeed.§,!q§(3,7);
         var _loc3_:WatermelonPiece = new this.§5!§(owner,this.x,this.y - 30,_loc1_,_loc2_,this.paramSetEx);
         if(owner.squad.isLocal())
         {
            _loc3_.customSource = §<$c§.§ !=§(§+%z§.WATERMELON);
         }
      }
      
      override public function inflictDamage(param1:§&"T§, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Boolean = false, param7:Boolean = true, param8:Object = null) : void
      {
         super.inflictDamage(param1,param2,param3,param4,param5,param6,param7,_customSource);
      }
   }
}

