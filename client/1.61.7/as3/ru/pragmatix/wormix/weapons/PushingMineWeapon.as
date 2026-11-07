package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7$1§.§;$n§;
   import §9%W§.§&!P§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^"I§.*;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class PushingMineWeapon extends DefaultMineWeapon
   {
      
      private static const §<%p§:uint = 150;
      
      private static const §"%0§:uint = 90;
      
      private static const §=#k§:int = 14;
      
      private var target:§+%]§;
      
      private var §4"o§:§,%r§;
      
      private var used:Boolean = false;
      
      private var damaged:Boolean = false;
      
      private var pushPower:int;
      
      public function PushingMineWeapon()
      {
         super(null,0,false);
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.pushPower = param1["pushPower"] ? int(param1["pushPower"]) : §=#k§;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      override protected function §6%U§() : §;$n§
      {
         var _loc1_:int = this.target ? int(§"%0§) : int(§<%p§);
         return new §+%%§(owner,owner.x,owner.y,paramSet,this.target,_loc1_,this.pushPower);
      }
      
      override protected function §`%V§() : void
      {
         if(!this.target)
         {
            this.§^#d§();
         }
         §@%;§.play(§`!v§.§7#O§);
         §>&-§.§[$9§(this.target ? §0$N§.PUSHING_MINE_UNIT_SETUP : §0$N§.PUSHING_MINE_GROUND_SETUP,true);
         this.used = true;
         this.§6%U§();
         §9$h§.update(owner);
         this.§?!K§();
         §8"%§.§?!W§.§4"m§.§%!J§(!this.damaged);
      }
      
      override public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         if(!super.§6#N§(param1))
         {
            return false;
         }
         if(property["groundSetup"])
         {
            return true;
         }
         if(this.§^#d§())
         {
            return true;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.PUSHING_MINE_USELESS,true);
         }
         return false;
      }
      
      private function §^#d§() : §+%]§
      {
         var _loc1_:Point = null;
         var _loc2_:Vector.<§+%]§> = null;
         _loc1_ = new Point(owner.x + §<H§.§@% § * owner.direction,owner.y);
         _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         var _loc3_:Vector.<§+%]§> = §<H§.§5"]§(_loc1_.x,_loc1_.y,§<H§.§-#C§,_loc2_);
         if(_loc3_.length > 0)
         {
            this.target = _loc3_[0];
         }
         return this.target;
      }
      
      override public function jumpShoot(param1:Boolean) : void
      {
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §#!Z§.fire(§#!Z§.§[!E§);
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         var unit:§+%]§ = param1;
         super.attach(unit);
         §8$a§.§&!#§(owner,§0%v§.§&!D§,function():void
         {
            if(active.value)
            {
               damaged = true;
            }
         });
         this.§4"o§ = owner.lastWeapon == null || owner.lastWeapon is SwitchTurn ? §'%_§.§5a§(owner.record) : owner.lastWeapon;
      }
      
      override public function §?!K§() : void
      {
         var _loc1_:§+%]§ = owner;
         super.§?!K§();
         if(this.used && !this.damaged)
         {
            _loc1_.lastWeapon = this.§4"o§;
            _loc1_.§#&5§();
            this.§4"o§ = null;
         }
         this.used = false;
         this.damaged = false;
         this.target = null;
      }
   }
}

