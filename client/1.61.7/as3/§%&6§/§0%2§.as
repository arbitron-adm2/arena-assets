package §%&6§
{
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1"r§.§#"Q§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §3#T§.*;
   import §4!!§.§2&F§;
   import §6%2§.§<<§;
   import §6_§.*;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<$q§.§6%b§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=$#§.§[#-§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderStatus;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §0%2§ extends §2$v§
   {
      
      private static const §`$2§:Array = [0.4,0.8];
      
      private static const §`$§:Array = [15,10];
      
      public function §0%2§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:§&$2§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function §^#P§(param1:Event) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         super.§^#P§(param1);
         if(!disposed)
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§="T§(owner,false,true);
            for each(_loc3_ in _loc2_)
            {
               this.§#!w§(_loc3_);
            }
         }
      }
      
      private function §#!w§(param1:§+%]§) : void
      {
         var healPhase:§2&F§ = null;
         var unit:§+%]§ = param1;
         var i:int = 0;
         while(i < §`$2§.length)
         {
            if(unit.attributes.hp.§9"H§() < §`$2§[i])
            {
               healPhase = new §2&F§(owner,x,y,unit,§`$§[i],true);
               if(unit.squad.isLocal())
               {
                  §§push(healPhase);
                  with({})
                  {
                     
                     var _temp_2:* = function(param1:int):void
                     {
                        if(param1 > 0)
                        {
                           §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,%R§,param1);
                        }
                     };
                     var _temp_3:* = onHealCallback = function(param1:int):void
                     {
                        if(param1 > 0)
                        {
                           §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,%R§,param1);
                        }
                     };
                  }
                  §§pop().onHealCallback = _temp_3;
               }
               break;
            }
            i++;
         }
      }
   }
}

