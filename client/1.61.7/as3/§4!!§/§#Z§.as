package §4!!§
{
   import § #k§.*;
   import § &5§.§0&$§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §#%!§.§ §;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §'!Z§.§]!&§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §6#Z§.§&!Z§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §="z§.*;
   import §=&!§.§4$z§;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.greensock.TweenMax;
   import flash.display.Shape;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.BossWormStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §#Z§
   {
      
      public static const §!1§:uint = 0;
      
      public static const ZERO:uint = 1;
      
      public static const STABLE:uint = 2;
      
      public static const §%% §:uint = 3;
      
      private static const PI_ONE_FOUR:Number = Math.PI / 4;
      
      private static const §4$=§:Number = PI_ONE_FOUR * 0.25;
      
      private var ammo:§&"T§;
      
      private var §9"k§:Number;
      
      private var power:uint;
      
      private var §;%0§:Number = 0.7853981633974483;
      
      private var §`P§:int = 0;
      
      private var §`O§:Number;
      
      private var §&%]§:Number = 0.12566370614359174;
      
      private var mode:uint;
      
      public function §#Z§(param1:§&"T§, param2:Number, param3:uint, param4:uint)
      {
         super();
         this.ammo = param1;
         this.§9"k§ = param2;
         this.power = param3;
         this.mode = param4;
         if(§8"%§.randomSeed.§6#;§())
         {
            this.§&%]§ *= -1;
         }
         this.§`O§ = param4 == ZERO ? param2 : §8%j§(param2,this.§&%]§);
      }
      
      private static function §8%j§(param1:Number, param2:Number) : Number
      {
         return param1 + §8"%§.randomSeed.§,!q§(-5,5) * param2;
      }
      
      public function §!!>§() : void
      {
         if(!this.ammo || this.ammo.disposed)
         {
            return;
         }
         if(this.mode > ZERO)
         {
            this.§!&4§();
         }
         this.ammo.§^"F§(this.§`O§,this.power);
      }
      
      private function §!&4§() : void
      {
         var _loc1_:Number = NaN;
         if(§-q§.§0#!§(this.§9"k§,this.§`O§) > this.§;%0§)
         {
            if(this.mode == §%% § && this.§`P§ % 2 > 0)
            {
               if(this.§;%0§ <= §4$=§)
               {
                  this.mode = ZERO;
                  this.§`O§ = this.§9"k§;
                  return;
               }
               _loc1_ = this.§;%0§ * 0.1;
               this.§;%0§ *= 0.9;
               this.§`O§ -= _loc1_ + this.§&%]§;
            }
            this.§&%]§ *= -1;
            ++this.§`P§;
         }
         this.§`O§ += this.§&%]§;
      }
      
      public function §@"J§(param1:Number) : void
      {
         if(this.§9"k§ == param1)
         {
            return;
         }
         this.§`O§ = this.§9"k§ = param1;
      }
      
      public function clear() : void
      {
         this.ammo = null;
      }
      
      public function get §!#T§() : Number
      {
         return this.§`O§;
      }
   }
}

