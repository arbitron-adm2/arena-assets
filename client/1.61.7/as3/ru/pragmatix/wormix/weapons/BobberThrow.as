package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §4!K§.§^%A§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9"-§.AnchorTeleportMark;
   import §9%4§.§]$Z§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §`"p§.*;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   public class BobberThrow extends §,%r§ implements §-$2§
   {
      
      private var §!#U§:§]$Z§;
      
      public function BobberThrow()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §^&I§.value = false;
         var _loc1_:§!"G§ = new §!"G§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         if(property["ignoresTerrain"])
         {
            §-g§ = new §5$1§(50,false,1);
         }
         else
         {
            §-g§ = new §`§(§"#z§,§2$"§,50);
         }
      }
      
      private function §6#N§(param1:Number = 0) : Boolean
      {
         if(§9$h§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         var _loc2_:§!!q§ = null;
         if(this.§6#N§() && !§8"%§.§?!W§.§4"m§.§1"3§())
         {
            _loc2_ = new §!!q§();
            _loc2_.power = 5;
            _loc2_.angle = Math.PI / 2;
            this.shootWithParams(_loc2_);
         }
      }
      
      override public function shootWithParams(param1:§!!q§) : void
      {
         super.shootWithParams(param1);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Class = getProperty("ammoClass") as Class;
         this.§!#U§ = new _loc1_(owner,paramSet,shotParams.angle,§-&I§(shotParams.power));
         if(Boolean(getProperty("consumable")) || Boolean(getProperty("seasonal")))
         {
            §?!P§.update(owner);
         }
         if(property["trailColor"])
         {
            this.§!#U§.trailColor = this.§!#U§.§?$z§ = property["trailColor"];
         }
         this.§!#U§.§6"9§();
         this.§?!K§();
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §+# §.§9! §.deactivate();
         }
         §=#P§.§6+§();
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         if(this.§!#U§)
         {
            this.§!#U§ = null;
         }
      }
      
      private function §'%f§(param1:MineSetUpEvent) : void
      {
      }
      
      private function §[#7§(param1:Event) : void
      {
      }
   }
}

