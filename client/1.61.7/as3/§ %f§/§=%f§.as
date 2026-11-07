package § %f§
{
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§-$s§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-@§.§3%9§;
   import §0!§.§6#z§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.*;
   import §2#x§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §=7§.*;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   
   public class §=%f§ extends §=!z§
   {
      
      public static const §8%>§:§&$2§ = new §&$2§(13);
      
      public static const §4"3§:§&$2§ = new §&$2§(7);
      
      public function §=%f§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint)
      {
         super(param1,param2,param3,param4,param5,param6,0.5,150);
         §2#J§ = [§`!v§.§5%;§];
         physParams.§5N§ |= §9%1§.§@%h§;
         addEventListener(§0%v§.§+&=§,this.onCollide);
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§+%]§ = null;
         if(param1.other != null && param1.other is §+%]§ && owner.squad.getTeamId() != §+%]§(param1.other).squad.getTeamId())
         {
            _loc2_ = §+%]§(param1.other);
            if(_loc2_.§0!e§)
            {
               _loc2_.buffs.place(new §-$s§(owner,§4"3§.value,§8%>§.value,§,$O§.PUMPKIN_GREEN_WEAPON));
               disposed = true;
            }
            else
            {
               this.explode();
            }
         }
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         this.explode();
      }
      
      override public function explode() : void
      {
         inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
         disposed = true;
         §1"-§.explode(§;n§.§@"W§,x,y,0,§`!v§.§["s§);
      }
   }
}

