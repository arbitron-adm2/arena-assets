package §[$P§
{
   import §"#x§.§'"$§;
   import §"%H§.§`"w§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%o§.*;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §<%k§.§`!v§;
   import §@!i§.§<!9§;
   import §[%§.Rhino;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §>%a§ extends §+!"§
   {
      
      public static const §8;§:§&$2§ = new §&$2§(5);
      
      public static const §6%9§:§&$2§ = new §&$2§(10);
      
      private static const §3$"§:int = 50;
      
      private static const §[X§:int = 30;
      
      private var §;%L§:§?"&§ = new §?"&§(false);
      
      private var §4#y§:Rhino;
      
      public function §>%a§(param1:Rhino, param2:§+H§)
      {
         super(param1,param2);
         this.§4#y§ = param1;
      }
      
      override protected function jump(param1:Number, param2:uint, param3:Boolean, param4:Boolean = false) : void
      {
         this.§;%L§.value = true;
         super.jump(param1,param2,param3,param4);
      }
      
      override protected function extraJump(param1:Number, param2:Number, param3:Boolean = true, param4:Boolean = false) : void
      {
         var stompCounter:int = 0;
         var angle:Number = param1;
         var power:Number = param2;
         var forward:Boolean = param3;
         var alternate:Boolean = param4;
         if(§,%#§.value > 0 && §#$9§.value > §4!+§)
         {
            super.extraJump(angle,power,true,alternate);
         }
         else if(§+!H§ && this.§;%L§.value && !owner.isImmobile())
         {
            stompCounter = int(this.§4#y§.§"" §());
            if(stompCounter > 0)
            {
               this.§;%L§.value = false;
               this.§4#y§.§6$4§();
               §@%;§.play(§`!v§.§;$N§);
               §8$a§.§&!#§(owner,§0%v§.§+&=§,function onceCollideRhinoStomp(param1:Event):void
               {
                  §?"n§(stompCounter);
                  §4#y§.§@#e§();
               });
            }
         }
      }
      
      override public function stabilize(param1:Event) : void
      {
         this.§;%L§.value = false;
         super.stabilize(param1);
      }
      
      private function §?"n§(param1:uint) : void
      {
         var _loc6_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc2_:Number = 0.2 + 0.8 * (owner.record.getLevel() / §<!9§.getMaxLevel());
         var _loc3_:Number = 1 + §5%E§.value * 0.2;
         var _loc4_:Number = 0.8 * Math.sqrt(owner.speed);
         var _loc5_:Number = 0.4 + 0.08 * param1;
         _loc6_ = 1 * owner.attributes.§8$e§.value / §[k§.§ $e§.value;
         var _loc7_:Number = 1.25;
         var _loc8_:Number = 0.9 * (_loc6_ > 1 ? Math.min(_loc7_,1 + (_loc6_ - 1) * 0.2) : 1);
         _loc9_ = Math.min(§6%9§.value,0.6 * §#$9§.value * _loc3_ * _loc4_ * _loc2_ * _loc8_);
         _loc10_ = Math.max(§8;§.value,_loc9_ * _loc5_);
         var _loc11_:int = int(§8"%§.randomSeed.§,!q§(_loc10_,_loc9_));
         var _loc12_:Number = 1 + 0.4 + 0.3 * (§'"$§.§@%#§(1,owner.squad.§&!G§().getLevel(),owner.attributes.attack.value) - 1);
         var _loc13_:int = 1 * §#$9§.value * _loc12_ * _loc3_ * _loc5_ * _loc4_ * _loc8_;
         _loc13_ = Math.min(§3$"§,Math.max(§[X§,_loc13_));
         _loc13_ = _loc13_ * §9#I§;
         var _loc14_:Number = owner.speedX;
         var _loc15_:Number = owner.speedY;
         §'"$§.§]#I§(owner,owner.x,owner.y,null,_loc11_,_loc13_ + 5,_loc13_,false,false,null,false,true,true,true,this);
         Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§1#'§,false,true,§0%v§.DAMAGE_TRIGGER));
         §1"-§.explode(§;n§.§7q§,owner.x,owner.y,_loc13_,§`!v§.§["s§);
         owner.§5!?§(_loc14_,_loc15_);
      }
      
      override public function § %Q§() : Boolean
      {
         var _loc1_:uint = uint(Application.scene.§@$I§.§<#[§());
         return _loc1_ - §"$&§ >= §'#O§.value && (§,%#§.value > 0 || this.§;%L§.value);
      }
      
      override public function §["9§() : void
      {
         super.§["9§();
         this.§;%L§.value = false;
      }
   }
}

