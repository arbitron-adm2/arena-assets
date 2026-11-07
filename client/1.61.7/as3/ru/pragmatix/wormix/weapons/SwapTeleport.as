package ru.pragmatix.wormix.weapons
{
   import § "L§.§1%b§;
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §2#H§.§>#M§;
   import §2#H§.§?#S§;
   import §3#a§.§-#M§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §<!^§.§'$e§;
   import §<%k§.§`!v§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class SwapTeleport extends SwitchTurn
   {
      
      private static const §7%9§:ColorTransform = new ColorTransform(1,1,1,1,-70,-70,-70);
      
      private static const §5#9§:String = "SwapTeleportArrows";
      
      private static const §>%t§:int = 400;
      
      private static const §1$N§:int = 175;
      
      private static const §""A§:Array = [§;$n§,§[$ §,§'$e§,§1%b§];
      
      private var sphere:MovieClip;
      
      public function SwapTeleport(param1:uint = 0)
      {
         super(param1);
         §5#&§ = §5#9§;
         §86§[1] = §7%9§;
      }
      
      override public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         if(!super.§6#N§(owner))
         {
            return false;
         }
         if(Boolean(owner) && §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override public function activate() : void
      {
         var _loc1_:uint = 0;
         super.activate();
         if(Boolean(this.sphere) && Boolean(this.sphere.parent))
         {
            this.sphere.parent.removeChild(this.sphere);
         }
         if(Application.instance.§#&7§())
         {
            _loc1_ = §5%8§.§75§(owner.squad.getNumber()).§=%%§;
            this.sphere = §1"-§.§!#=§(_loc1_,§>%t§ + §<H§.§,%P§);
            clip.addChild(this.sphere);
         }
         if(!owner.stable || owner.buffs.hasBuff(§@$J§.NAME))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.ACTION_IMPOSSIBLE,true);
            }
            deactivate();
         }
         else if(this.§%#K§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.WATER_CLOSE_TABU,true);
            }
            deactivate();
         }
         else if(this.§=!,§().length == 0)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.NOT_ENOUGH_UNITS_FOR_TELEPORT,true);
            }
            deactivate();
         }
         else if(this.§4!`§().length > 0)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.INTERFERENCES_FROM_TURRETS,true);
            }
            deactivate();
         }
      }
      
      private function §4!`§() : Vector.<§&"T§>
      {
         var _loc1_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§1%b§]);
         return §<H§.§3%'§(owner.x,owner.y,§>%t§,_loc1_,false);
      }
      
      override protected function §`%V§() : void
      {
         var tmpTarget:§+%]§ = null;
         var tmpOwner:§+%]§ = null;
         var ownerX:int = 0;
         var ownerY:int = 0;
         var targetX:int = 0;
         var targetY:int = 0;
         var dummy:§&"T§ = null;
         tmpTarget = §!!B§;
         tmpOwner = owner;
         ownerX = tmpOwner.x;
         ownerY = tmpOwner.y - §<H§.§-#C§ - 10;
         if(Boolean(this.sphere) && Boolean(this.sphere.parent))
         {
            this.sphere.parent.removeChild(this.sphere);
         }
         tmpOwner.getBar().§>$T§();
         tmpOwner.stable = false;
         tmpOwner.keepUnstable = true;
         §?!P§.update(owner);
         if(tmpTarget)
         {
            targetX = tmpTarget.x;
            targetY = tmpTarget.y;
            dummy = Application.scene.§,$z§();
            §<H§.§"%8§(tmpOwner,targetX,targetY,function():void
            {
               §-#M§.§4%b§(paramSet,tmpOwner,ownerX,ownerY,§1$N§,§""A§,true,true);
               if(!tmpOwner.disposed)
               {
                  §<!?§(tmpOwner);
                  if(!§8"%§.§?!W§.§4"m§.§[!W§())
                  {
                     §?!K§();
                  }
               }
               §8$a§.§%!E§(10,function():void
               {
                  if(Boolean(tmpTarget) && Boolean(!tmpTarget.disposed) && tmpTarget.stable)
                  {
                     tmpTarget.stable = false;
                     §<H§.§"%8§(tmpTarget,ownerX,ownerY,function():void
                     {
                        if(Boolean(tmpTarget) && !tmpTarget.disposed)
                        {
                           §<!?§(tmpTarget);
                        }
                     });
                     §@%;§.play(§`!v§.TELEPORT);
                  }
                  §8$a§.§%!E§(10,function():void
                  {
                     dummy.disposed = true;
                     dummy = null;
                     §=#P§.§6+§();
                  });
               });
            });
            §@%;§.play(§`!v§.TELEPORT);
         }
         else
         {
            §?!K§();
         }
         if(!tmpOwner.disposed)
         {
            tmpOwner.keepUnstable = false;
         }
         §8"%§.§?!W§.§4"m§.§-"M§();
      }
      
      private function §<!?§(param1:§+%]§) : void
      {
         param1.buffs.place(new §@$J§());
         if(!param1.buffs.hasBuff(§=z§.NAME))
         {
            param1.buffs.addValue(new §=z§(§=z§.NAME,2));
         }
      }
      
      override protected function §=!,§() : Vector.<§+%]§>
      {
         var _loc3_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         _loc2_ = _loc2_.concat(§8"%§.§?!W§.§4"m§.§="T§(owner));
         _loc2_ = §<H§.§5"]§(owner.x,owner.y,§>%t§,_loc2_,true);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.stable && !_loc3_.buffs.hasBuff(§@$J§.NAME) && !_loc3_.buffs.hasBuff(§>#M§.NAME) && !_loc3_.buffs.hasBuff(§?#S§.NAME))
            {
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      private function §%#K§(param1:§+%]§) : Boolean
      {
         return param1.y > Application.scene.height - Application.scene.§#%0§() - §<H§.§,%P§ * 2;
      }
   }
}

