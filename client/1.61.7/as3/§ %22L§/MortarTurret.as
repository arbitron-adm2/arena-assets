package § "L§
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%Q§.§<&A§;
   import §&&6§.§7"1§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§+&F§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §?"[§.*;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §[$P§.§>%a§;
   import §]$v§.§0"[§;
   import §]$v§.§1>§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class MortarTurret extends §1%b§ implements §^%c§
   {
      
      private var §'#K§:int = 0;
      
      private var additionalMissile:int = 0;
      
      public function MortarTurret(param1:Point, param2:§+%]§, param3:int = -1)
      {
         super(param1,param2,§0$N§.§%! §("MORTAR.NAME"),param3);
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:BackpackItem = null;
         var _loc3_:Object = null;
         if(!owner)
         {
            disposed = true;
            return;
         }
         var _loc1_:Vector.<BackpackItem> = owner.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
         for each(_loc2_ in _loc1_)
         {
            if(Boolean(_loc2_) && Boolean(!_loc2_.§1!9§) && §1!S§.§[!r§(_loc2_.getId()) == §+%z§.MORTAR)
            {
               if(!_loc2_.isEmpty())
               {
                  weapon = §;#_§(_loc2_.getRecord());
                  _loc3_ = §<&A§(weapon.getWeapon().§,!"§).test(owner,x,y,§&>§);
                  if(_loc3_)
                  {
                     §>%M§ = _loc3_.angle;
                     this.§<%8§();
                     if(weapon.property["additionalMissile"] > 0)
                     {
                        dummy = Application.scene.§,$z§();
                        this.§'#K§ = frames + Mortar.§>&G§.value;
                        this.additionalMissile = weapon.property["additionalMissile"];
                     }
                     else
                     {
                        §<#h§();
                     }
                     _loc2_.§[!e§();
                     _loc2_.§2#"§();
                     if(!owner.squad.isAi() && !_loc2_.isEmpty() && _loc2_.§&">§() > 0)
                     {
                        §7%g§.§`%i§(owner,new <int>[_loc2_.getId()],new <int>[_loc2_.§&">§()]);
                     }
                     _loc2_.§-&H§ = true;
                     --shotsLeft;
                  }
               }
               else
               {
                  disposed = true;
               }
               return;
            }
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!disposed && this.additionalMissile > 0 && frames > this.§'#K§)
         {
            §>%M§ += (§8"%§.randomSeed.§6#;§() ? 1 : -1) * Mortar.§0$Z§;
            this.§<%8§();
            this.§'#K§ = frames + Mortar.§>&G§.value;
            var _temp_3:* = this;
            if(--this.additionalMissile <= 0)
            {
               dummy.disposed = true;
               §<#h§();
            }
         }
      }
      
      override protected function §<%8§() : void
      {
         var _loc1_:Point = null;
         super.§<%8§();
         barrel.rotation = head.rotation = §-q§.§%%>§(§>%M§ + Math.PI / 2);
         _loc1_ = getBarrelPoint(§>%M§ + Math.PI / 2);
         var _loc2_:§0"[§ = new §0"[§(owner,_loc1_,weapon.§<$4§,weapon.§^%1§,§>%M§,30);
         _loc2_.mindAttack = false;
         if(weapon.property["cleverShards"].value)
         {
            _loc2_.§%$J§();
         }
      }
   }
}

