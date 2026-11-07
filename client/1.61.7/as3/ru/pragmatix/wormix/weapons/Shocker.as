package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+%S§.§[&;§;
   import §0"L§.§+# §;
   import §2#i§.§+%z§;
   import §3#T§.§,?§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class Shocker extends §<"e§
   {
      
      private static const §1!&§:uint = 15;
      
      public function Shocker()
      {
         super(§<H§.§@k§ * 1.1);
         §7&§(new §&!P§());
      }
      
      override public function §?!K§() : void
      {
         §?"'§ = false;
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         var dmgX:int;
         var dmgY:int;
         var slowing:Boolean;
         var jump:Boolean;
         var units:Vector.<§+%]§>;
         var trgX:int;
         var staticCharge:§,?§;
         var unit:§+%]§ = null;
         §?"'§ = true;
         dmgX = owner.x + owner.direction * §-T§;
         dmgY = owner.y;
         slowing = Boolean(getProperty("slowing"));
         jump = Boolean(getProperty("jump")) && !shotParams.isAlternate ? §?"&§(getProperty("jump")).value : false;
         units = §<H§.§5"]§(dmgX,dmgY,paramSet.damageRadius.value);
         trgX = owner.x + owner.direction * 10;
         for each(unit in units)
         {
            if(unit != owner)
            {
               §1"-§.§,%F§(unit,trgX,owner.y,§1!&§,5,13948116,6);
               if(slowing && !unit.buffs.hasBuff(§[&;§.NAME))
               {
                  unit.buffs.place(new §[&;§());
               }
            }
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §+# §.§9! §.deactivate();
         }
         staticCharge = new §,?§(owner,paramSet,dmgX,dmgY,jump);
         if(owner.squad.isLocal())
         {
            staticCharge.§^!@§(§<$c§.§ !=§(§+%z§.SHOCKER));
         }
         else
         {
            staticCharge.apply();
         }
         §8$a§.§%!E§(§1!&§,function():void
         {
            if(owner != null)
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §+# §.§9! §.activate();
               }
               §?!K§();
            }
            §=#P§.§6+§();
         });
         §@%;§.play(§`!v§.§`%9§);
      }
   }
}

