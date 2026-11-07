package §^-§
{
   import § m§.§9!^§;
   import §"%H§.§`"w§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§+#h§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §1#p§.§"Z§;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §9"-§.§?!s§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §>%I§.§-#f§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class § %s§ extends Rope
   {
      
      private static const §-#J§:§&$2§ = new §&$2§(15);
      
      private var paramSet:§5$n§;
      
      private var power:Number;
      
      private var §?!Y§:§&$2§ = new §&$2§(0);
      
      private var §<"N§:Boolean;
      
      private var _target:§+%]§;
      
      public function § %s§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:Number, param7:uint = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §,q§.push(§-&§.SUPPLY_PICKUPER);
         this.paramSet = param4;
         this.power = param6;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.NONE);
         physParams.§5N§ = §9%1§.§&!A§ + §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         if(this.§<"N§)
         {
            if(param1.other)
            {
               if(param1.other is §+%]§)
               {
                  if(!this._target)
                  {
                     this._target = §+%]§(param1.other);
                     super.onCollide(param1);
                     disposed = true;
                  }
               }
            }
            else
            {
               inflictDamage(param1.other,0,this.paramSet.damageRadius.value * 0.5,this.paramSet.explosionRadius.value * 0.5);
               §1"-§.§&!C§(x,y,4);
               if(++this.§?!Y§.value >= §-#J§.value)
               {
                  disposed = true;
               }
            }
         }
         else
         {
            super.onCollide(param1);
         }
      }
      
      public function §<&?§() : void
      {
         this.§<"N§ = true;
      }
      
      public function get target() : §+%]§
      {
         return this._target;
      }
   }
}

