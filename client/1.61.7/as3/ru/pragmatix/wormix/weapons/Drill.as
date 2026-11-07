package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §+%S§.§9"i§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4#`§.BattleInterface;
   import §4'§.§`"q§;
   import §5#`§.§7%g§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   
   public class Drill extends §,%r§ implements §3N§
   {
      
      private static const §<$C§:int = §<H§.§-#C§ + 16;
      
      private static const §-$u§:int = 20;
      
      private static const §5%X§:int = 40;
      
      private static const DAMAGE:int = 5;
      
      private var §3"K§:int;
      
      private var §=%z§:MovieClip;
      
      private var §4%[§:int;
      
      private var §,!i§:Boolean;
      
      private var areaDamageRadius:uint = 0;
      
      private var setPlug:Boolean;
      
      private var §;_§:Vector.<Point>;
      
      private var allowTorch:Boolean;
      
      private var §^$a§:Boolean;
      
      public function Drill()
      {
         super();
         §7&§(new §&!P§());
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["areaDamageRadius"])
         {
            this.areaDamageRadius = §&$2§(param1["areaDamageRadius"]).value;
         }
         if(param1["allowTorch"])
         {
            this.allowTorch = param1["allowTorch"];
         }
      }
      
      override protected function §`%V§() : void
      {
         §?"'§ = true;
         this.§^$a§ = false;
         this.§;_§ = new Vector.<Point>(0);
         if(property["setPlug"])
         {
            this.setPlug = property["setPlug"];
         }
         this.§4%[§ = Application.scene.§@$I§.§<#[§();
         §+# §.§9! §.deactivate();
         this.§3"K§ = 0;
         this.§=%z§ = §6#A§.§!&6§(paramSet.ammoClassName);
         this.§,!i§ = true;
         owner.§#"%§(this.§=%z§);
         owner.addEventListener(§0%v§.§+&=§,this.onCollide,false,100);
         owner.stable = false;
         owner.keepUnstable = true;
         owner.buffs.place(new §9"i§());
         §+# §.§@%V§.activate();
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         if(owner.speedY > 0 && param1.other == null)
         {
            ++this.§3"K§;
            _loc2_ = this.§+"r§() ? uint(§5%X§) : uint(§-$u§);
            if(this.§3"K§ >= _loc2_)
            {
               this.§?!K§();
            }
            else
            {
               owner.§5!?§(0,-5);
               if(this.areaDamageRadius > 0)
               {
                  _loc3_ = §<H§.§5"]§(param1.point.x,param1.point.y,this.areaDamageRadius);
                  for each(_loc4_ in _loc3_)
                  {
                     if(_loc4_.squad.getTeamId() != owner.squad.getTeamId())
                     {
                        §'"$§.§]#I§(owner,_loc4_.x,_loc4_.y,_loc4_,DAMAGE,0,0,false,false,§&!E§.DRILL);
                        this.§^$a§ = true;
                     }
                  }
                  §'"$§.§]#I§(owner,param1.point.x,param1.point.y + §<H§.§-#C§,null,0,§<$C§,15,false,false,§&!E§.DRILL,true,true,true,true,null,int(recordId.value));
               }
               else
               {
                  _loc3_ = §<H§.§5"]§(param1.point.x,param1.point.y,§<$C§);
                  if(!this.§^$a§)
                  {
                     for each(_loc4_ in _loc3_)
                     {
                        if(_loc4_.squad.getTeamId() != owner.squad.getTeamId())
                        {
                           this.§^$a§ = true;
                           break;
                        }
                     }
                  }
                  §'"$§.§]#I§(owner,param1.point.x,param1.point.y + §<H§.§-#C§,null,DAMAGE,§<$C§,15,false,false,§&!E§.DRILL,true,true,true,true,null,int(recordId.value));
               }
               this.§;_§.push(new Point(param1.point.x,param1.point.y + §<H§.§-#C§));
               if(this.setPlug)
               {
                  this.setPlug = !§7%g§.§3"b§(owner,this.§;_§,true);
               }
               param1.stopPropagation();
               if((this.§3"K§ - 1) % 4 == 0)
               {
                  §@%;§.play(§`!v§.§>%l§);
               }
               if(Boolean(owner) && !owner.disposed)
               {
                  owner.x = param1.point.x;
                  owner.y = param1.point.y;
               }
            }
         }
      }
      
      private function §&#`§() : void
      {
         var gm:§]$;§ = null;
         var wb:§;#X§ = null;
         var blowTorch:BackpackItem = null;
         var tmpOwner:§+%]§ = null;
         var turnNumber:uint = 0;
         var blowtorchDelay:uint = 0;
         if(this.§,!i§)
         {
            this.§,!i§ = false;
            §?"'§ = false;
            §+# §.§@%V§.deactivate();
            if(this.§=%z§)
            {
               owner.§'$§(this.§=%z§);
               this.§=%z§ = null;
            }
            owner.removeEventListener(§0%v§.§+&=§,this.onCollide,false);
            §+# §.§9! §.activate();
            owner.buffs.§6C§(§9"i§.NAME);
            owner.§5!?§(0,-1);
            owner.keepUnstable = false;
            gm = §8"%§.§?!W§.§4"m§;
            wb = owner.squad.§?"#§().getBattleBackpack();
            blowTorch = §1!S§.§@!&§(§+%z§.BLOW_TORCH,wb);
            if(Boolean(!this.§^$a§ && this.allowTorch && gm.§#"G§() && blowTorch) && Boolean(!blowTorch.isBlocked) && !blowTorch.§1!9§)
            {
               gm.§""v§(false);
               gm.§-"M§(false);
               tmpOwner = owner;
               BattleInterface.§?#"§(blowTorch.getId());
               tmpOwner.attributes.jump.§["9§();
               turnNumber = gm.§,j§();
               blowtorchDelay = 45;
               §8$a§.§%!E§(blowtorchDelay,function():void
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
         this.§^$a§ = false;
      }
      
      private function §+"r§() : Boolean
      {
         return owner.y > Application.scene.height - Application.scene.§#%0§();
      }
      
      public function weaponCharge() : void
      {
         if(!this.§+"r§())
         {
            this.§3"K§ = §5%X§;
         }
      }
      
      override public function §?!K§() : void
      {
         this.§&#`§();
         super.§?!K§();
      }
   }
}

