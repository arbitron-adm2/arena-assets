package ru.pragmatix.wormix.weapons
{
   import § !P§.§9%Z§;
   import § %f§.§ "r§;
   import § %f§.§=!z§;
   import § %f§.GasGrenade;
   import § %f§.VacuumGrenade;
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'T§.§!$C§;
   import §,"`§.§9#s§;
   import §-8§.GasCloud;
   import §0!Y§.§#!Z§;
   import §1#p§.§"Z§;
   import §2#i§.§9##§;
   import §3#a§.§-!`§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §9%W§.§8#p§;
   import §<!G§.§&!;§;
   import §<!^§.§]#u§;
   import §<%k§.§`!v§;
   import §?o§.StuffedBouncingGrenade;
   import §@<§.§+%]§;
   import §[#I§.§`"O§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class CarpetStrike extends §&!;§
   {
      
      private var §7!w§:int;
      
      private var targets:Array;
      
      private var §2#Q§:Array;
      
      public function CarpetStrike()
      {
         super();
      }
      
      override public function §""2§(param1:Object) : void
      {
         this.§7!w§ = param1["targets"] ? int(param1["targets"].value) : 1;
         var _loc2_:uint = 1;
         while(_loc2_ < this.§7!w§)
         {
            §7&§(new §8#p§(this.§@%@§));
            _loc2_++;
         }
         super.§""2§(param1);
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.targets = [];
         this.§2#Q§ = [];
      }
      
      override public function §?!K§() : void
      {
         var _loc1_:MovieClip = null;
         super.§?!K§();
         for each(_loc1_ in this.§2#Q§)
         {
            Application.scene.removeChild(_loc1_);
         }
         if(!§?"'§)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §#!Z§.fire(§#!Z§.§[!E§);
            }
         }
      }
      
      override protected function §@%@§(param1:int, param2:int) : Boolean
      {
         if(param2 > §6"o§)
         {
            this.targets.push({
               "x":param1,
               "y":param2,
               "dir":shotParams.§3f§
            });
            this.§2#Q§.push(§1"-§.§##7§(param1,param2));
            return true;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.CROSSHAIR_TOO_HIGH,true);
         }
         return false;
      }
      
      override protected function §3$>§() : void
      {
         var _loc1_:Object = null;
         if(this.targets.length > 1)
         {
            for each(_loc1_ in this.targets)
            {
               this.§@!-§(_loc1_.x,_loc1_.y,_loc1_.dir);
            }
            §@%;§.play(§`!v§.§;!w§);
         }
         else
         {
            super.§3$>§();
         }
      }
      
      private function §@!-§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 40;
         new §!$C§(owner,paramSet,§^M§(param3,param1 - _loc4_,param2),§?$a§,param3 * §6&?§,0,§&!E§.AIR);
         new §!$C§(owner,paramSet,§^M§(param3,param1 + _loc4_,param2),§?$a§,param3 * §6&?§,0,§&!E§.AIR);
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         var _loc8_:int = -1;
         while(_loc8_ <= 1)
         {
            new §!$C§(param1,param2,param3 + 60 * _loc8_,param4,param5,param6,§&!E§.AIR);
            _loc8_++;
         }
         super.§2",§(param1,param2,param3,param4,param5,param6,false);
         §@%;§.play(§`!v§.§;!w§);
      }
   }
}

