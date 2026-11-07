package ru.pragmatix.wormix.weapons
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&!?§.§^!5§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.§=!?§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   public class EmergencyTeleport extends §,%r§ implements §-$2§
   {
      
      private static const §""A§:Array = [§=!?§];
      
      private static const §9$C§:uint = 5;
      
      private static const §3P§:uint = 15;
      
      private static const §<$C§:uint = 15;
      
      private static const §1$N§:int = 150;
      
      public function EmergencyTeleport()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
         §-g§ = new §^!5§();
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
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
         if(this.§6#N§() && !§8"%§.§?!W§.§4"m§.§1"3§() && !§8"%§.§?!W§.§4"m§.§[!W§())
         {
            shootWithParams(§!!q§.EMPTY);
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc7_:Point = null;
         var _loc9_:Vector.<§&"T§> = null;
         var _loc10_:§#"s§ = null;
         var _loc11_:§#"s§ = null;
         var _loc12_:int = 0;
         var _loc13_:§5$n§ = null;
         var _loc14_:int = 0;
         var _loc1_:uint = uint(§&$2§(getProperty("teleportRadius")).value);
         var _loc2_:Boolean = §?"&§(getProperty("mindDangerObj")).value;
         var _loc3_:Boolean = property["toMedkit"] ? Boolean(property["toMedkit"].value) : false;
         var _loc4_:Boolean = property["destroyGuardians"] ? Boolean(property["destroyGuardians"].value) : false;
         var _loc5_:uint = 15;
         var _loc6_:int = 82;
         if(_loc3_ && (Boolean(shotParams) && Boolean(!shotParams.isAlternate)))
         {
            _loc9_ = §<H§.§3%'§(owner.x,owner.y,_loc1_,Application.scene.§@$I§.§;%a§.§"L§([§#"s§]));
            for each(_loc11_ in _loc9_)
            {
               if(§-#M§.§&b§(new Point(_loc11_.x,_loc11_.y),owner) && (!_loc10_ || _loc10_.§2$§() < _loc11_.§2$§()))
               {
                  _loc10_ = _loc11_;
               }
            }
            if(_loc10_)
            {
               _loc7_ = new Point(_loc10_.x,_loc10_.y - §<H§.§-#C§);
            }
         }
         if(_loc4_)
         {
            _loc12_ = owner.y - §<H§.§-#C§ - 10;
            _loc13_ = new §5$n§();
            _loc13_.damageRadius = new §&$2§(§<$C§);
            _loc13_.explosionRadius = new §&$2§(§3P§);
            _loc13_.damage = new §&$2§(§9$C§);
            §-#M§.§4%b§(_loc13_,owner,owner.x,_loc12_,§1$N§,§""A§,false,false);
         }
         var _loc8_:Number = _loc1_ / 2;
         while(!_loc7_)
         {
            _loc14_ = §-q§.§8$G§(_loc6_,_loc1_);
            _loc7_ = §-#M§.§&"!§(owner.x + owner.direction * _loc14_,owner.y,_loc1_,_loc8_,§<H§.§-#C§ * 3,_loc2_,5);
            _loc6_ -= _loc5_;
            if(_loc6_ <= 0)
            {
               break;
            }
         }
         if(!_loc7_)
         {
            _loc7_ = new Point(owner.x,owner.y);
         }
         new §'$V§(owner,owner.x,owner.y,true,owner,16777215,16777215,60);
         §1"-§.explode(§;n§.§6#B§,owner.x,owner.y,20);
         §1"-§.explode(§;n§.§6#B§,_loc7_.x,_loc7_.y,20);
         §@%;§.play(§`!v§.EMERGENCY_TELEPORT);
         §<H§.§"%8§(owner,_loc7_.x,_loc7_.y);
         owner.stable = false;
         §9$h§.update(owner);
         §?!K§();
         if(§8"%§.§?!W§.§4"m§.§#"G§() && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
   }
}

