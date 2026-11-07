package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#T§.§]!6§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9&+§.§6&=§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §@<§.§+%]§;
   import §`%&§.§`§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class CircusCannon extends §,%r§
   {
      
      private static const §-%O§:Number = Math.PI / 3;
      
      private const §`!z§:String = "BigCannonWheels";
      
      private const §;"§:String = "BigCannon";
      
      private const §2G§:uint = 30;
      
      private var §7f§:String;
      
      public function CircusCannon()
      {
         super(§2"w§);
         §"#z§ = §2$"§ = 35;
         §-g§ = new §`§(§"#z§ - 5,§2$"§ + 5,130,false);
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.§7f§ = param1["upgradeClipNameAppend"] || "";
         if(Boolean(param1["trajectoryCrosshair"]) && Boolean(param1["trajectoryCrosshair"].value))
         {
            §§push(§§findproperty(§7&§));
            §§push(§§findproperty(§%G§));
            §§push(§2$"§);
            var _temp_3:* = new <§]%G§>[§]%G§.§5$r§];
            §§pop().§7&§(new §§pop().§%G§(§§pop(),new <§]%G§>[§]%G§.§5$r§],§%G§.§4"<§,§-%O§,§-%O§));
         }
         else
         {
            §7&§(new §!7§(§!7§.§'$+§,§-%O§,§-%O§));
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         param1.§4#§ = 0;
         super.attach(param1);
      }
      
      override public function activate() : void
      {
         if(!active.value)
         {
            super.activate();
            §+# §.§9! §.deactivate();
            owner.graphics.§6w§(this.§`!z§ + this.§7f§,false,false);
            owner.graphics.lock();
            try
            {
               owner.graphics.getClip().swapChildren(owner.graphics.getClip().getChildAt(0),§6&=§(§&&E§).getClip());
            }
            catch(e:Error)
            {
            }
         }
      }
      
      override public function deactivate() : void
      {
         if(active.value)
         {
            §+# §.§9! §.activate();
            owner.graphics.unlock();
            owner.§2!W§();
            super.deactivate();
         }
      }
      
      override protected function §`%V§() : void
      {
         var shellWheel:§]!6§;
         var shellCannon:§]!6§;
         var initX:int = 0;
         var initY:int = 0;
         var tempOwner:§+%]§ = null;
         var damageBonusPercents:int = 0;
         var finalDamage:uint = 0;
         owner.§^"F§(shotParams.angle,§2$"§);
         owner.rotateUntilStable(false);
         owner.graphics.damaged();
         owner.attachTrail();
         initX = owner.x;
         initY = owner.y;
         owner.x += this.§2G§ * Math.cos(shotParams.angle);
         owner.y += this.§2G§ * Math.sin(shotParams.angle);
         §@%;§.play(§`!v§.§"!T§);
         tempOwner = owner;
         damageBonusPercents = owner.bonuses.getStatValue(Bonus.CIRCUS_WEAPON_DAMAGE);
         finalDamage = paramSet.damage.value * (1 + damageBonusPercents / 100);
         §8$a§.§&!#§(owner,§0%v§.§+&=§,function(param1:Event):void
         {
            var _loc2_:Point = null;
            if(!tempOwner.disposed)
            {
               §'"$§.§]#I§(tempOwner,tempOwner.x,tempOwner.y,null,finalDamage,paramSet.damageRadius.value,paramSet.explosionRadius.value,false,false,null,true,true,true,true,§<$c§.§ !=§(§+%z§.CIRCUS_CANNON));
               §'"$§.§]#I§(tempOwner,tempOwner.x,tempOwner.y,tempOwner,property["strickerDamage"].value,0,0,true);
               §1"-§.explode(§;n§.MEDIUM,tempOwner.x,tempOwner.y,paramSet.explosionRadius.value,§`!v§.§4"t§);
               if(§>#9§.unit(tempOwner.x,tempOwner.y))
               {
                  _loc2_ = §<H§.§ !K§(tempOwner.x,tempOwner.y,§>#9§.unit,20);
                  if(_loc2_ != null)
                  {
                     tempOwner.x = _loc2_.x;
                     tempOwner.y = _loc2_.y;
                  }
                  else
                  {
                     tempOwner.x = initX;
                     tempOwner.y = initY;
                  }
                  tempOwner.physicModel.stop();
               }
            }
         });
         §+# §.§9! §.deactivate();
         shellWheel = new §]!6§(owner.x,owner.y,this.§`!z§ + this.§7f§,1);
         shellWheel.setSpeedXY(-owner.direction * 7,-5);
         §1"-§.§;%k§(shellWheel,§;n§.§7q§,8);
         shellCannon = new §]!6§(owner.x,owner.y,this.§;"§ + this.§7f§,1);
         shellCannon.setSpeedXY(owner.direction * 6,-5);
         §1"-§.§;%k§(shellCannon,§;n§.§7q§,10);
         §'"$§.§]#I§(owner,owner.x,owner.y,null,0,50,30,false);
         §?!K§();
         §=#P§.§6+§();
      }
      
      override public function §6!K§() : void
      {
         if(owner.direction == §+%]§.RIGHT)
         {
            this.deactivate();
            owner.§8%Y§(§+%]§.LEFT);
            owner.§;#a§();
            this.activate();
         }
      }
      
      override public function §?&!§() : void
      {
         if(owner.direction == §+%]§.LEFT)
         {
            this.deactivate();
            owner.§8%Y§(§+%]§.RIGHT);
            owner.§;#a§();
            this.activate();
         }
      }
   }
}

