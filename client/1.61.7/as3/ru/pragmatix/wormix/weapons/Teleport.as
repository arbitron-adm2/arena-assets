package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §&!?§.§"_§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4!!§.§'$V§;
   import §4#`§.BattleInterface;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§?#T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class Teleport extends §,%r§
   {
      
      protected var sourceLocationDamage:Boolean = false;
      
      protected var placeUndergroundDisabled:Boolean = false;
      
      protected var allowAntiFreeze:Boolean = false;
      
      protected var healBonus:int = 0;
      
      private var §"#8§:MovieClip;
      
      private var §?!Q§:int;
      
      private var §="f§:int;
      
      private var §&$?§:Boolean;
      
      private var § !K§:Point;
      
      public function Teleport()
      {
         super();
         var _loc1_:§8#p§ = new §8#p§(this.§@%@§,this.§ %E§);
         this.§"#8§ = _loc1_.§1%_§();
         §7&§(_loc1_);
         §-g§ = new §?#T§();
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["sourceLocationDamage"])
         {
            this.sourceLocationDamage = §?"&§(param1["sourceLocationDamage"]).value;
         }
         if(param1["placeUndergroundDisabled"])
         {
            this.placeUndergroundDisabled = §?"&§(param1["placeUndergroundDisabled"]).value;
         }
         if(param1["allowAntiFreeze"])
         {
            this.allowAntiFreeze = §?"&§(param1["allowAntiFreeze"]).value;
         }
         if(param1["healBonus"])
         {
            this.healBonus = §&$2§(param1["healBonus"]).value;
         }
      }
      
      private function §@%@§(param1:int, param2:int) : Boolean
      {
         return this.§9'§(param1,param2);
      }
      
      private function § %E§(param1:int, param2:int) : void
      {
         if(!this.placeUndergroundDisabled || this.§?!Q§ == param1 && this.§="f§ == param2)
         {
            return;
         }
         this.§"#8§.transform.colorTransform = this.§9'§(param1,param2) ? §1"-§.§"#@§ : §1"-§.§8%#§;
      }
      
      private function §9'§(param1:int, param2:int) : Boolean
      {
         if(this.§?!Q§ == param1 && this.§="f§ == param2)
         {
            return this.§&$?§;
         }
         if(this.placeUndergroundDisabled)
         {
            this.§ !K§ = §<H§.§ !K§(param1,param2,§>#9§.unit,30);
         }
         this.§&$?§ = !§>#9§.unit(param1,param2,true) && (!this.placeUndergroundDisabled || this.§ !K§ != null);
         this.§?!Q§ = param1;
         this.§="f§ = param2;
         return this.§&$?§;
      }
      
      override protected function §`%V§() : void
      {
         var tmpOwner:§+%]§ = null;
         var oldX:int = 0;
         var oldY:int = 0;
         var pa:§'$V§ = null;
         tmpOwner = owner;
         oldX = tmpOwner.x;
         oldY = tmpOwner.y;
         if(this.sourceLocationDamage)
         {
            pa = new §'$V§(tmpOwner,tmpOwner.x,tmpOwner.y,true,tmpOwner,16777215,16777215,60);
            pa.§4M§ = false;
         }
         if(this.allowAntiFreeze)
         {
            §8$a§.§&!#§(owner,§0%v§.§3G§,this.onStable);
         }
         if(this.§ !K§)
         {
            shotParams.point.x = this.§ !K§.x;
            shotParams.point.y = this.§ !K§.y;
         }
         §'"$§.§]#I§(tmpOwner,shotParams.point.x,shotParams.point.y,null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,false,false,null,true,true,true,true,null,int(recordId.value));
         §1"-§.explode(§;n§.§6#B§,shotParams.point.x,shotParams.point.y,30,§`!v§.§["s§);
         §<H§.§"%8§(tmpOwner,shotParams.point.x,shotParams.point.y,function():void
         {
            if(sourceLocationDamage)
            {
               §'"$§.§]#I§(tmpOwner,oldX,oldY,null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,false,false,null,true,true,true,true,null,int(recordId.value));
               §1"-§.explode(§;n§.§6#B§,shotParams.point.x,shotParams.point.y,30,§`!v§.§["s§);
            }
            tmpOwner.stable = false;
            §?!K§();
            §=#P§.§6+§();
         });
         §@%;§.play(§`!v§.TELEPORT);
         §1"-§.§##7§(shotParams.point.x,shotParams.point.y,20);
      }
      
      private function onStable(param1:Event) : void
      {
         var canUseAntiFreeze:Boolean;
         var gm:§]$;§ = null;
         var wb:§;#X§ = null;
         var antiFreeze:BackpackItem = null;
         var restoreValue:int = 0;
         var enhValue:int = 0;
         var restored:int = 0;
         var tmpOwner:§+%]§ = null;
         var turnNumber:uint = 0;
         var antiFreezeDelay:uint = 0;
         var e:Event = param1;
         var target:§+%]§ = §+%]§(e.currentTarget);
         if(this.healBonus)
         {
            restoreValue = this.healBonus;
            enhValue = target.bonuses.getStatValue(Bonus.§;#-§);
            restoreValue += §-q§.§8$G§(enhValue,restoreValue);
            restored = target.attributes.hp.§#1§(restoreValue);
            if(restored > 0 && target.squad.isLocal())
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,%R§,restored);
            }
         }
         gm = §8"%§.§?!W§.§4"m§;
         wb = target.squad.§?"#§().getBattleBackpack();
         antiFreeze = §1!S§.§@!&§(§+%z§.ANTIFREEZE,wb);
         canUseAntiFreeze = Boolean(antiFreeze) && !antiFreeze.isEmpty() && !antiFreeze.§1!9§;
         if(this.allowAntiFreeze && gm.§#"G§() && canUseAntiFreeze)
         {
            gm.§""v§(false);
            gm.§-"M§(false);
            tmpOwner = target;
            BattleInterface.§?#"§(antiFreeze.getId());
            tmpOwner.attributes.jump.§["9§();
            turnNumber = gm.§,j§();
            antiFreezeDelay = 60;
            §8$a§.§%!E§(antiFreezeDelay,function():void
            {
               tmpOwner.attributes.jump.§;-§();
               if(turnNumber == gm.§,j§() && !gm.§"$6§())
               {
                  gm.§-"M§();
                  if(!tmpOwner.disposed && Boolean(tmpOwner.weapon))
                  {
                     tmpOwner.weapon.§?!K§();
                  }
                  §=#P§.§6+§();
               }
            });
         }
         else
         {
            §=#P§.§6+§();
         }
      }
   }
}

