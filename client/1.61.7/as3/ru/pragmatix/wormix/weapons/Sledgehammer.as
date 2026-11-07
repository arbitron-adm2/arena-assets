package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#%!§.§^%c§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §+%S§.§"#E§;
   import §-8§.§3!x§;
   import §0"L§.§+# §;
   import §2#i§.§+%z§;
   import §3#T§.§+&F§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class Sledgehammer extends §<"e§
   {
      
      private static const §6%9§:§&$2§ = new §&$2§(280);
      
      private static const §6%`§:uint = 10;
      
      private static const §?$4§:Number = 0.35;
      
      private var §-!v§:§7#P§;
      
      public function Sledgehammer()
      {
         super(§<H§.§@k§ * 1.3);
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      private function §6#N§(param1:§+%]§ = null) : Boolean
      {
         param1 ||= owner;
         if((Boolean(getProperty("seasonal")) || Boolean(getProperty("consumable"))) && §?!P§.§!%w§(param1))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override public function deactivate() : void
      {
         if(active.value)
         {
            super.deactivate();
            if(this.§-!v§ != null)
            {
               this.§-!v§.stop();
               this.§-!v§ = null;
            }
         }
      }
      
      override public function §?!K§() : void
      {
         §?"'§;
         super.§?!K§();
      }
      
      protected function §;$p§() : Vector.<§&"T§>
      {
         var x:int = owner.x + owner.direction * §-T§;
         var y:int = owner.y;
         var classes:Array = [§^%c§];
         var objects:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§(classes);
         objects = objects.filter(function(param1:§&"T§, param2:int, param3:Vector.<§&"T§>):Boolean
         {
            return !(param1 is §3!x§);
         });
         return §<H§.§3%'§(x,y,paramSet.damageRadius.value,objects);
      }
      
      override protected function §`%V§() : void
      {
         §+# §.§9! §.deactivate();
         owner.§4%Y§(clip);
         this.§-!v§ = §@%;§.play(§`!v§.§2%T§);
         var _loc1_:uint = 4;
         §8$a§.§%!E§(_loc1_,this.§1!2§);
      }
      
      private function §1!2§() : void
      {
         var standardHoleDepth:Boolean = false;
         var holeDepth:uint = 0;
         var frames:uint = 0;
         var hitDelay:uint = 0;
         var statsReduction:int = 0;
         if(owner != null)
         {
            standardHoleDepth = shotParams.isAlternate && !property["burningHole"] || !property["holeDepth"];
            holeDepth = standardHoleDepth ? §6%`§ : uint(property["holeDepth"]);
            frames = uint(owner.graphics.hammer(paramSet.ammoClassName).totalFrames);
            hitDelay = 24;
            statsReduction = property["statsReduction"] ? int(property["statsReduction"].value) : 0;
            §?"'§ = true;
            §8$a§.§%!E§(hitDelay,function waitAndDoHitDelaySledgehammer():void
            {
               var tmpOwner:§+%]§ = null;
               var targUnits:Vector.<§+%]§> = null;
               var targGobjs:Vector.<§&"T§> = null;
               var angle:Number = NaN;
               var weaponById:§;#_§ = null;
               var canCrit:Boolean = false;
               var unit:§+%]§ = null;
               var gobj:§&"T§ = null;
               var dmg:uint = 0;
               var i:int = 0;
               var tmpUnit:§+%]§ = null;
               var burningHole:Function = null;
               if(owner != null)
               {
                  tmpOwner = owner;
                  targUnits = pickTargets();
                  targGobjs = §;$p§();
                  angle = Math.PI / 4;
                  weaponById = §<$c§.§ !=§(§+%z§.SLEDGEHAMMER);
                  canCrit = property["canCrit"] ? §?"&§(property["canCrit"]).value : true;
                  for each(unit in targUnits)
                  {
                     dmg = Boolean(property["fixedDamage"]) && §?"&§(property["fixedDamage"]).value ? uint(paramSet.damage.value) : uint(Math.min(§6%9§.value,Math.max(paramSet.damage.value,unit.hp * §?$4§)));
                     §'"$§.§]#I§(tmpOwner,unit.x,unit.y,unit,dmg,0,paramSet.explosionRadius.value,false,true,null,canCrit,true,true,true,weaponById,int(recordId.value));
                     i = 0;
                     while(i < holeDepth)
                     {
                        Application.scene.§,# §(unit.x,unit.y + i * 5,7,null,int(recordId.value));
                        i++;
                     }
                     unit.setSpeedXY(0,20);
                     if(statsReduction > 0)
                     {
                        unit.buffs.place(new §"#E§(statsReduction));
                     }
                     if(Boolean(property["burningHole"]) && §?"&§(property["burningHole"]).value)
                     {
                        tmpUnit = unit;
                        burningHole = function(param1:Event):void
                        {
                           if(tmpUnit)
                           {
                              if(Boolean(tmpUnit.physicModel) && tmpUnit.speedY != 0)
                              {
                                 new §+&F§(tmpOwner,-angle * 3,5,tmpUnit.x,tmpUnit.y);
                                 new §+&F§(tmpOwner,-angle,5,tmpUnit.x,tmpUnit.y);
                              }
                              else
                              {
                                 MovieClip(param1.target).removeEventListener(Event.ENTER_FRAME,burningHole);
                              }
                           }
                           else
                           {
                              MovieClip(param1.target).removeEventListener(Event.ENTER_FRAME,burningHole);
                           }
                        };
                        §8$a§.§%!E§(1,function():void
                        {
                           if(Boolean(tmpUnit) && Boolean(tmpUnit.clip))
                           {
                              tmpUnit.clip.addEventListener(Event.ENTER_FRAME,burningHole);
                           }
                        });
                     }
                  }
                  for each(gobj in targGobjs)
                  {
                     if(!(gobj is §+%]§))
                     {
                        gobj.disposed = true;
                     }
                  }
               }
            });
            §8$a§.§%!E§(frames,function():void
            {
               if(owner != null)
               {
                  owner.§2!W§();
                  §?!K§();
                  §+# §.§9! §.activate();
               }
            });
         }
      }
   }
}

