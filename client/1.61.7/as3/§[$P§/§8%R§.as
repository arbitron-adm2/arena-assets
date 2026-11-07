package §[$P§
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §<%k§.§`!v§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[%§.Boar;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §8%R§ extends §+!"§
   {
      
      public static const §6%9§:§&$2§ = new §&$2§(10);
      
      private static const §#%P§:§&$2§ = new §&$2§(2);
      
      private static const NONE:§&$2§ = new §&$2§(0);
      
      private static const §&"'§:§&$2§ = new §&$2§(1);
      
      private static const §?5§:§&$2§ = new §&$2§(2);
      
      private static const §="9§:§&$2§ = new §&$2§(3);
      
      private static const §3$"§:int = 44;
      
      private static const §[X§:int = 26;
      
      private static const §1#-§:int = 5;
      
      private var §8"K§:§?"&§ = new §?"&§();
      
      private var §2%m§:§&$2§ = new §&$2§();
      
      private var §^!G§:§&$2§ = new §&$2§();
      
      private var §`"t§:Boar;
      
      private var §5"s§:int;
      
      private var §;!h§:int;
      
      private var §?$1§:Boolean;
      
      public function §8%R§(param1:Boar, param2:§+H§)
      {
         super(param1,param2);
         this.§`"t§ = param1;
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.START_TURN_SWITCHING,this.§1n§);
         this.§;!h§ = §[X§ + (§3$"§ - §[X§) / (§<!9§.getMaxLevel() - 1) * (param1.record.getLevel() - 1);
      }
      
      private function §@%D§(param1:Event = null) : void
      {
         this.§?$1§ = false;
         this.§@4§();
         this.§3&-§();
      }
      
      private function §1n§(param1:Event) : void
      {
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(Boolean(!this.§?$1§) && Boolean(_loc2_) && _loc2_.activeUnit == owner)
         {
            this.§?$1§ = true;
         }
      }
      
      public function §@4§() : void
      {
         this.§^!G§.value = §#%P§.value;
      }
      
      public function §3&-§() : void
      {
         this.§5"s§ = NONE.value;
      }
      
      override protected function jump(param1:Number, param2:uint, param3:Boolean, param4:Boolean = false) : void
      {
         this.§8"K§.value = true;
         super.jump(param1,param2,param3,param4);
      }
      
      override protected function extraJump(param1:Number, param2:Number, param3:Boolean = true, param4:Boolean = false) : void
      {
         var tempOwnerOnCollide:§+%]§ = null;
         var self:§8%R§ = null;
         var initX:int = 0;
         var initY:int = 0;
         var hitDamage:int = 0;
         var radius:int = 0;
         var angle:Number = param1;
         var power:Number = param2;
         var forward:Boolean = param3;
         var alternate:Boolean = param4;
         if(§,%#§.value > 0 && §#$9§.value > §4!+§)
         {
            super.extraJump(angle,power,true,alternate);
         }
         else if(§+!H§ && this.§8"K§.value && !owner.isImmobile() && this.§5r§ && this.§^!G§.value > 0)
         {
            this.§8"K§.value = false;
            this.§5"s§ = §&"'§.value;
            this.§2%m§.value = 0;
            this.§`"t§.§ %>§();
            angle = (forward ? owner.direction * §[$J§ * 2 : -owner.direction * §@$m§ * 0.5) - PI_HALF;
            owner.§^"F§(angle,power * 5);
            owner.rotateUntilStable(false);
            owner.graphics.damaged();
            §@%;§.play(§`!v§.§8x§);
            tempOwnerOnCollide = owner;
            self = this;
            initX = owner.x;
            initY = owner.y;
            hitDamage = §6%9§.value;
            radius = this.§;!h§ * §9#I§;
            §8$a§.§&!#§(owner,§0%v§.§+&=§,function onceCollideBoarDash(param1:CollisionEvent):void
            {
               var _loc2_:Point = null;
               if(!tempOwnerOnCollide.disposed)
               {
                  if(§3!X§)
                  {
                     --§^!G§.value;
                     §5"s§ = §?5§.value;
                     §'"$§.§]#I§(tempOwnerOnCollide,tempOwnerOnCollide.x,tempOwnerOnCollide.y,null,hitDamage,radius + 10,radius,false,false,null,false,true,true,true,self);
                     Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§1#'§,false,true,§0%v§.DAMAGE_TRIGGER));
                     §1"-§.explode(§;n§.MEDIUM,tempOwnerOnCollide.x,tempOwnerOnCollide.y,radius,§`!v§.§4&3§);
                     §'!j§.go(hitDamage,true);
                     if(§>#9§.unit(tempOwnerOnCollide.x,tempOwnerOnCollide.y))
                     {
                        _loc2_ = §<H§.§ !K§(tempOwnerOnCollide.x,tempOwnerOnCollide.y,§>#9§.unit,20);
                        if(_loc2_ != null)
                        {
                           tempOwnerOnCollide.x = _loc2_.x;
                           tempOwnerOnCollide.y = _loc2_.y;
                        }
                        else
                        {
                           tempOwnerOnCollide.x = initX;
                           tempOwnerOnCollide.y = initY;
                        }
                        tempOwnerOnCollide.physicModel.stop();
                     }
                  }
               }
            });
            §8$a§.§&!#§(owner.physicModel,§9#1§.STABLE,function(param1:Event):void
            {
               if(§+#!§)
               {
                  if(§^!G§.value > 0)
                  {
                     §3&-§();
                  }
               }
               else
               {
                  §3&-§();
               }
               if(!§?$1§)
               {
                  §`"t§.§>H§();
               }
               §`"t§.physParams.§?$]§ = true;
            });
         }
      }
      
      public function §!!>§() : void
      {
         if(this.§3!X§)
         {
            if(this.§2%m§.value < §1#-§)
            {
               ++this.§2%m§.value;
            }
            else
            {
               this.§5"s§ = §="9§.value;
               if(owner.speedX != 0 || owner.speedY != 0)
               {
                  owner.setSpeedXY(int(owner.speedX * 0.1),int(owner.speedY * 0.1));
               }
            }
         }
      }
      
      override public function stabilize(param1:Event) : void
      {
         this.§8"K§.value = false;
         super.stabilize(param1);
      }
      
      override public function § %Q§() : Boolean
      {
         var _loc1_:uint = uint(Application.scene.§@$I§.§<#[§());
         return _loc1_ - §"$&§ >= §'#O§.value && (§,%#§.value > 0 || this.§8"K§.value);
      }
      
      override public function §["9§() : void
      {
         super.§["9§();
         this.§8"K§.value = false;
      }
      
      public function disposed() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.START_TURN_SWITCHING,this.§1n§);
      }
      
      public function get §5r§() : Boolean
      {
         return this.§5"s§ == NONE.value;
      }
      
      public function get §3!X§() : Boolean
      {
         return this.§5"s§ == §&"'§.value;
      }
      
      public function get §+#!§() : Boolean
      {
         return this.§5"s§ == §?5§.value;
      }
   }
}

