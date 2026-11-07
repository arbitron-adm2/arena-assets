package §;$%§
{
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§6$3§;
   import §"&?§.§-$b§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§=t§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.§?$E§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §9%k§.*;
   import §9z§.§7§;
   import §<!^§.§9"§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §?$K§.§>K§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!W§.§&%e§;
   import §@!W§.§,#J§;
   import §@!W§.§]$i§;
   import §@!i§.§"-§;
   import §@"x§.*;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]$v§.*;
   import §^4§.§>"$§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ColliseumInterruptSeries;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §#&H§ extends §8"w§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private const §&#%§:uint = 6;
      
      private var §>"=§:int;
      
      private var §1$B§:Boolean;
      
      private var groundDestroy:Boolean;
      
      private var freezingDuration:int = 0;
      
      private var §^%$§:int = 30;
      
      private var §;L§:int = 6;
      
      private var §<!2§:uint = 15072255;
      
      private var §;$A§:uint = 15072255;
      
      public function §#&H§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Boolean = true)
      {
         var _loc6_:int = param5 ? int(this.§&#%§) : int(§8"%§.randomSeed.§,!q§(1,30));
         super(param1,param2,param3,param4,0,_loc6_);
         _damageType = §&!E§.COLD;
         if(param5)
         {
            physParams.addForce(new §]%G§("UP",-PI_HALF,1));
         }
         this.§1$B§ = param5;
         this.groundDestroy = !param5;
      }
      
      public function attachTrail() : void
      {
         var _loc1_:Number = NaN;
         if(§8"%§.§&S§.§-p§())
         {
            _loc1_ = Math.random() * this.§^%$§ * 0.4 + this.§^%$§ * 0.6;
            §1"-§.attachTrail(this,_loc1_,this.§;L§,this.§<!2§,this.§;$A§,1);
         }
      }
      
      override protected function explode(param1:§&"T§) : void
      {
         var _loc4_:§+%]§ = null;
         disposed = true;
         §1"-§.explode(§;n§.MEDIUM,x,y,paramSet.explosionRadius.value,§`!v§.§ !h§);
         var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!_loc4_.disposed)
            {
               _loc3_++;
            }
         }
         if(_loc3_)
         {
            for each(_loc4_ in _loc2_)
            {
               if(!_loc4_.disposed)
               {
                  §'"$§.§]#I§(owner,_loc4_.x,_loc4_.y,_loc4_,paramSet.damage.value,0,0,false,false,_damageType);
                  if(!_loc4_.disposed)
                  {
                     _loc4_.buffs.place(new §+m§(owner,this.freezingDuration));
                  }
               }
            }
            if(this.groundDestroy)
            {
               inflictDamage(param1,0,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            }
         }
         else if(this.groundDestroy)
         {
            inflictDamage(param1,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Number = 0.4;
         if(speedX > this.§>"=§)
         {
            §5!?§(-_loc1_,0);
         }
         else if(speedX < this.§>"=§)
         {
            §5!?§(_loc1_,0);
         }
         if(§##[§ % 18 == 0 && this.§1$B§)
         {
            this.§>"=§ = int(11 * §]%G§.§-4§.ax) + §8"%§.randomSeed.§,!q§(-4,4);
         }
         if(§8"%§.§&S§.§1#Q§() && §##[§ % 4 == 0)
         {
            new §-$b§();
         }
         super.§!!>§();
      }
      
      public function §;";§(param1:int) : void
      {
         this.freezingDuration = param1;
      }
      
      public function §8%t§(param1:Boolean) : void
      {
         var _loc2_:Number = §,q§.indexOf(§-&§.IGNORE_MAGNET);
         if(param1 && _loc2_ == -1)
         {
            §,q§.push(§-&§.IGNORE_MAGNET);
         }
         else if(!param1 && _loc2_ > -1)
         {
            §,q§.splice(_loc2_,1);
         }
      }
      
      public function set trailLength(param1:int) : void
      {
         this.§^%$§ = param1;
      }
      
      public function set trailWidth(param1:int) : void
      {
         this.§;L§ = param1;
      }
      
      public function set trailColor(param1:uint) : void
      {
         this.§<!2§ = param1;
      }
      
      public function set §?$z§(param1:uint) : void
      {
         this.§;$A§ = param1;
      }
   }
}

