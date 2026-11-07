package §'T§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§@#s§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§=!?§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!$C§ extends §6#I§
   {
      
      private static const §7!?§:int = 3;
      
      private static const §[%g§:int = 0;
      
      private static const §]b§:String = "ZombieBoom";
      
      private static const §9";§:Number = 20;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §&#$§:Number = Math.PI / 64;
      
      private var §5&1§:int = 0;
      
      private var paramSet:§5$n§;
      
      private var damageForBounce:§&$2§;
      
      private var maxBounce:§&$2§;
      
      private var bonusDamage:§&$2§ = new §&$2§(0);
      
      private var §3"O§:Boolean = false;
      
      private var §8#;§:§+%]§;
      
      private var homingFeat:§%%2§;
      
      protected var §9%N§:Class = §;n§.MEDIUM;
      
      public function §!$C§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int, param7:§&!E§ = null)
      {
         super(param1,param3,param4,false,§6#I§.§&i§,param7);
         §@%;§.play(§`!v§.§["p§);
         if(!§!#v§.§%!@§())
         {
            initialize(new Point(param3,param4),param2.ammoClassName);
         }
         else
         {
            initialize(new Point(param3,param4),§]b§);
            clip.scaleX = clip.scaleY = 0.75;
         }
         §1"-§.§;%k§(this,§;n§.§7q§,16,2);
         setSpeedXY(param5,param6);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         this.paramSet = param2;
         §`4§ = §5$=§;
         this.damageForBounce = new §&$2§(§[%g§);
         this.maxBounce = new §&$2§(§7!?§);
         this.homingFeat = new §%%2§(this,§9";§,Math.PI / 12);
         §=l§.push(this.homingFeat);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      public function §2W§(param1:int = -1, param2:int = -1) : void
      {
         if(param2 != -1)
         {
            this.maxBounce.value = param1;
         }
         if(param1 != -1)
         {
            this.damageForBounce.value = param2;
         }
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§5N§ = §9%1§.§&!A§ + §9%1§.§@%h§;
      }
      
      public function onCollide(param1:CollisionEvent) : void
      {
         if(!disposed)
         {
            §1"-§.§&!C§(x,y,16);
            §1"-§.explode(this.§9%N§,x,y,this.paramSet.damageRadius.value,§`!v§.§["s§);
            inflictDamage(param1.other,this.paramSet.damage.value + this.bonusDamage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            if(++this.§5&1§ == this.maxBounce.value)
            {
               disposed = true;
            }
            else
            {
               this.§="I§(param1.point);
               this.bonusDamage.value += this.damageForBounce.value;
            }
            if(this.§3"O§)
            {
               this.§""5§(param1.other);
            }
         }
      }
      
      private function §="I§(param1:Point) : void
      {
         var _loc2_:§,'§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§>#9§.point(x,y,true))
         {
            setSpeedXY(-speedX * 0.8,-speedY * 0.8);
         }
         else
         {
            _loc2_ = §8"%§.randomSeed;
            _loc3_ = -PI_HALF + _loc2_.§,!q§(-8,8) * §&#$§;
            _loc4_ = this.§8#;§ ? §9";§ : 1 * _loc2_.§,!q§(5,15 + 5 * (this.maxBounce.value - this.§5&1§));
            §^"F§(_loc3_,_loc4_);
         }
         x = param1.x + speedX;
         y = param1.y + speedY;
      }
      
      private function §""5§(param1:§&"T§) : void
      {
         var unitsInCircle:Vector.<§+%]§> = null;
         var unit:§+%]§ = null;
         var directTarget:§&"T§ = param1;
         if(this.§8#;§ == null)
         {
            if(directTarget is §+%]§)
            {
               this.§8#;§ = §+%]§(directTarget);
            }
            else
            {
               unitsInCircle = §<H§.§5"]§(x,y,this.paramSet.damageRadius.value);
               var _loc3_:int = 0;
               var _loc4_:* = unitsInCircle;
               for each(unit in _loc4_)
               {
                  this.§8#;§ = unit;
               }
            }
         }
         if(this.§8#;§)
         {
            this.homingFeat.§0!F§(null);
            §8$a§.§%!E§(8,function():void
            {
               if(!homingFeat.§-%§())
               {
                  homingFeat.§0!F§(§8#;§);
               }
            });
         }
      }
      
      public function §`%!§() : void
      {
         this.§3"O§ = true;
      }
   }
}

