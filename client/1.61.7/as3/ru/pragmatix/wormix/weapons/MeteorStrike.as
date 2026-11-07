package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §'!Z§.§1"-§;
   import §+5§.§8$W§;
   import §0"L§.§+# §;
   import §3#T§.Meteor;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §9%W§.§8#p§;
   import §^#[§.§&$2§;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class MeteorStrike extends §,%r§
   {
      
      public static const §@!q§:Number = 50;
      
      private static var g:Number = §]%G§.§5$r§.ay;
      
      private static const §6"o§:int = 100;
      
      private static const §7"o§:int = 20;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const PI_QUARTER:Number = Math.PI / 4;
      
      private static const §&%+§:Number = Math.PI / 8;
      
      private var shards:uint = 4;
      
      private var §<$v§:uint = 1;
      
      private var frames:§&$2§ = new §&$2§(0);
      
      private var §&"8§:uint;
      
      public function MeteorStrike()
      {
         super();
         §7&§(new §8#p§(this.§@%@§));
         §-g§ = new §@&,§();
      }
      
      public static function §2"k§(param1:int, param2:int, param3:int, param4:int = -100) : Object
      {
         var _loc5_:Number = §8"%§.randomSeed.§5!p§() * PI_QUARTER - §&%+§ + PI_HALF;
         var _loc6_:Number = Math.cos(_loc5_) * param3;
         var _loc7_:Number = Math.sin(_loc5_) * param3;
         var _loc8_:Number = (Math.sqrt(_loc7_ * _loc7_ - g * 2 * (param4 - param2)) - _loc7_) / g;
         var _loc9_:Number = param1 - _loc6_ * _loc8_;
         return {
            "x":_loc9_,
            "y":param4,
            "vx":_loc6_,
            "vy":_loc7_
         };
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["shards"])
         {
            this.shards = §&$2§(param1["shards"]).value;
         }
         if(param1["missiles"])
         {
            this.§<$v§ = §&$2§(param1["missiles"]).value;
         }
      }
      
      private function §@%@§(param1:int, param2:int) : Boolean
      {
         if(param2 > §6"o§)
         {
            return true;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.CROSSHAIR_TOO_HIGH,true);
         }
         return false;
      }
      
      override protected function §`%V§() : void
      {
         §1"-§.§##7§(shotParams.point.x,shotParams.point.y,20);
         if(this.§<$v§ <= 1)
         {
            this.castMeteor();
            §?!K§();
            §=#P§.§6+§();
         }
         else
         {
            startFrameListening();
            this.§&"8§ = 0;
            this.frames.value = 0;
            §?"'§ = true;
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         ++this.frames.value;
         if(this.frames.value % §7"o§ == 0)
         {
            this.castMeteor();
            ++this.§&"8§;
         }
         if(this.§<$v§ == this.§&"8§)
         {
            this.§-"%§();
         }
      }
      
      private function §-"%§() : void
      {
         §?"'§ = false;
         §2#G§();
         §=#P§.§6+§();
         §?!K§();
      }
      
      protected function castMeteor() : void
      {
         var _loc1_:Object = shotParams.additionalParams ? shotParams.additionalParams : §2"k§(shotParams.point.x,shotParams.point.y,§@!q§);
         if(Boolean(property["ammoClass"]) && property["ammoClass"] == §8$W§)
         {
            new §8$W§(owner,paramSet,_loc1_.x,_loc1_.y,_loc1_.vx,_loc1_.vy,_loc1_.angle,shotParams.power,true);
         }
         else
         {
            new Meteor(owner,paramSet,_loc1_.x,_loc1_.y,_loc1_.vx,_loc1_.vy,this.shards);
         }
      }
   }
}

