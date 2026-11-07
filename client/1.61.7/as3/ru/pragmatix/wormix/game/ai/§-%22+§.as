package ru.pragmatix.wormix.game.ai
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §%Q§.§;$,§;
   import §%Q§.§;$W§;
   import §%Q§.§<&A§;
   import §&"c§.§!!q§;
   import §&#h§.§-"F§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4!!§.§!$j§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§=$@§;
   import §7$t§.§;#_§;
   import §<!^§.§]#u§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§2§;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.text.TextFieldType;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §-"+§
   {
      
      private static const PI_HALF:Number = Math.PI * 0.5;
      
      private var frameCount:uint;
      
      private var §7!6§:uint;
      
      private var callback:Function;
      
      private var unit:§+%]§;
      
      private var isWeaponSelected:Boolean;
      
      private var arsenal:§,%8§;
      
      private var §7$v§:Vector.<§,%r§> = new Vector.<§,%r§>(0);
      
      private var §25§:Boolean;
      
      private var §9<§:Object;
      
      private var §#!2§:uint;
      
      public function §-"+§(param1:§,%8§)
      {
         super();
         this.arsenal = param1;
      }
      
      public function §1"'§(param1:§+%]§) : void
      {
         var _loc3_:§,%r§ = null;
         var _loc4_:int = 0;
         this.unit = param1;
         this.isWeaponSelected = false;
         var _loc2_:Vector.<int> = this.arsenal.§,&,§(param1.record.getLevel());
         for each(_loc4_ in _loc2_)
         {
            _loc3_ = §<$c§.§ !=§(_loc4_).getWeapon();
            if((_loc3_.§,!"§ is §;$W§ && §;$W§(_loc3_.§,!"§).check(param1) || _loc3_.§,!"§ is §;$,§ && §;$,§(_loc3_.§,!"§).check(param1,_loc3_)) && §8"%§.randomSeed.§,!q§(1,100) < this.arsenal.§1%N§(_loc4_) * 100)
            {
               if(this.§7$v§.length < 4)
               {
                  this.§7$v§.push(_loc3_);
               }
            }
         }
         this.§%"y§();
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      private function §%"y§() : void
      {
         if(this.§7$v§.length > 0)
         {
            this.nextEvent(10,this.§3#S§);
         }
         else
         {
            this.nextEvent(60,this.findPositions);
         }
      }
      
      private function §3#S§() : void
      {
         var weapon:§,%r§ = null;
         var shotParams:§!!q§ = null;
         if(this.unit == null || this.unit.disposed)
         {
            return;
         }
         if(this.unit.weapon != null)
         {
            this.unit.weapon.§?!K§();
         }
         weapon = this.§7$v§.shift();
         shotParams = weapon.shotParams;
         this.unit.weapon = weapon;
         this.unit.weapon.attach(this.unit);
         this.nextEvent(40,function():void
         {
            if(Boolean(unit) && !unit.disposed)
            {
               unit.weapon.shootWithParams(shotParams);
               arsenal.§[!e§(weapon.recordId.value);
               §%"y§();
            }
         });
      }
      
      public function onFrame(param1:Event) : void
      {
         if(this.unit == null || this.unit.disposed)
         {
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
            return;
         }
         var _loc2_:§-"+§ = this;
         var _temp_3:* = _loc2_.frameCount;
         §§push(_temp_3);
         var _loc3_:Number = _temp_3 + 1;
         _loc2_.frameCount = _loc3_;
         if(§§pop() == this.§7!6§ && this.callback != null)
         {
            this.callback();
         }
      }
      
      public function §?%E§() : void
      {
         var missFactor:Number;
         var testResult:Object = null;
         var level:uint = 0;
         var weapons:Vector.<int> = null;
         var weaponId:uint = 0;
         var fns:Vector.<Function> = null;
         var recId:int = 0;
         var finish:Function = null;
         var weaponRec:§;#_§ = null;
         var weapon:§,%r§ = null;
         var lastDontSpendTurn:Boolean = false;
         var fn:Function = null;
         if(this.unit == null || this.unit.disposed)
         {
            return;
         }
         testResult = null;
         level = uint(this.unit.record.getLevel());
         missFactor = this.§[#A§(level);
         if(!this.isWeaponSelected)
         {
            this.§25§ = true;
            if(this.unit.weapon != null)
            {
               this.unit.weapon.§?!K§();
            }
            weapons = this.arsenal.§,&,§(level);
            weaponId = §+%z§.RIFLE;
            this.unit.weapon = §<$c§.§ !=§(weaponId).getWeapon();
            fns = new Vector.<Function>(0);
            for each(recId in weapons)
            {
               weaponRec = §<$c§.§ !=§(recId);
               weapon = weaponRec.getWeapon();
               lastDontSpendTurn = Boolean(this.unit.lastWeapon) && Boolean(this.unit.lastWeapon.getProperty("dontSpendTurn")) && this.unit.lastWeapon.getProperty("dontSpendTurn") == true;
               if(!(weapon.§,!"§ is §;$W§) && (this.unit.lastWeapon != weapon || !lastDontSpendTurn))
               {
                  fn = §1%"§.§]$<§(function(param1:int, param2:§,%r§, param3:§;#_§, param4:Number):void
                  {
                     fns.splice(0,1);
                     var _loc5_:* = null;
                     if(Boolean(§8"%§.randomSeed.§5!p§() < arsenal.§1%N§(param1) && unit && !unit.disposed && param2) && Boolean(param2.§,!"§) && param2.§,!"§ is §<&A§)
                     {
                        _loc5_ = §<&A§(param2.§,!"§).test(unit,unit.x,unit.y,param4);
                     }
                     if(_loc5_ != null)
                     {
                        _loc5_.rate *= 1 + §8"%§.randomSeed.§5!p§() * 0.5;
                     }
                     if(_loc5_ != null && (testResult == null || _loc5_.rate > testResult.rate))
                     {
                        testResult = _loc5_;
                        weaponId = param1;
                        unit.weapon = param2;
                        §9<§ = _loc5_;
                        §#!2§ = param1;
                     }
                     if(fns.length)
                     {
                        fns[0]();
                     }
                  },this,[recId,weapon,weaponRec,missFactor],true);
                  fns[fns.length] = fn;
               }
            }
            finish = §1%"§.§]$<§(function():void
            {
               if(Boolean(unit) && !unit.disposed)
               {
                  arsenal.§[!e§(§#!2§);
                  if(unit.weapon)
                  {
                     unit.weapon.attach(unit);
                     isWeaponSelected = true;
                     §25§ = false;
                     §'!S§(§@$p§(§9<§));
                  }
               }
            },this);
            fns[fns.length] = finish;
            fns[0]();
         }
         else if(this.unit.weapon)
         {
            testResult = §<&A§(this.unit.weapon.§,!"§).test(this.unit,this.unit.x,this.unit.y,missFactor);
            this.§'!S§(this.§@$p§(testResult));
         }
         else if(!§8"%§.§?!W§.§4"m§.§1"3§())
         {
            §8"%§.§?!W§.§4"m§.§9!d§();
         }
      }
      
      private function §[#A§(param1:uint) : Number
      {
         var _loc2_:Number = NaN;
         if(this.unit.aiMissFactor == -1)
         {
            _loc2_ = Math.log(param1) * Math.LOG2E;
            _loc2_ = 6 - (_loc2_ < 1 ? 1 : (_loc2_ > 5 ? 5 : _loc2_));
         }
         else
         {
            _loc2_ = this.unit.aiMissFactor;
         }
         return _loc2_;
      }
      
      private function §@$p§(param1:Object) : §!!q§
      {
         var _loc2_:Number = param1 ? Number(param1.angle) : -PI_HALF;
         var _loc3_:uint = Boolean(param1) && Boolean(param1.power) ? uint(param1.power) : 10;
         var _loc4_:Point = Boolean(param1) && Boolean(param1.point) ? param1.point : null;
         var _loc5_:Object = Boolean(param1) && Boolean(param1.additionalParams) ? param1.additionalParams : null;
         var _loc6_:§!!q§ = new §!!q§();
         _loc6_.angle = _loc2_;
         _loc6_.power = §,%r§(this.unit.weapon).powerToCharge(_loc3_);
         _loc6_.point = _loc4_;
         _loc6_.additionalParams = _loc5_;
         if(Boolean(param1) && Boolean(param1.time))
         {
            _loc6_.timer = param1.time;
         }
         return _loc6_;
      }
      
      private function §'!S§(param1:§!!q§) : void
      {
         var params:§!!q§ = param1;
         new §5&6§().§?%a§(§<%&§.§7]§,null,this.unit,params).§?%a§(function(param1:Function):void
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            if(Boolean(unit) && Boolean(!unit.disposed) && Boolean(unit.weapon))
            {
               unit.weapon.shootWithParams(params);
               _loc2_ = unit.weapon && unit.weapon.shots.value > 1 && unit.weapon.shotsLeft.value > 0;
               _loc3_ = !unit.weapon && unit.lastWeapon && unit.lastWeapon.getProperty("dontSpendTurn") && unit.lastWeapon.getProperty("dontSpendTurn") == true;
               if(Boolean(unit) && Boolean(!unit.disposed) && (Boolean(_loc2_) || Boolean(_loc3_)))
               {
                  if(_loc3_)
                  {
                     isWeaponSelected = false;
                  }
                  nextEvent(_loc3_ ? 60 : 20,findPositions);
               }
               else
               {
                  Application.scene.removeEventListener(§0%v§.FRAME,onFrame);
                  param1();
               }
            }
         },this).§?%a§(function():void
         {
            if(!(unit && !unit.disposed && Boolean(unit.lastWeapon) && (unit.lastWeapon is HolyGrenade || unit.lastWeapon is Cannon)))
            {
               nextEvent(30,§2#b§);
            }
         },this).run();
      }
      
      private function findPositions() : void
      {
         var dx:int = 0;
         var dy:int = 0;
         var dist:Number = NaN;
         var leftX:int = 0;
         var rightX:int = 0;
         var minDist:int = 150;
         var enemy:§+%]§ = §0$a§.§4+§(this.unit);
         if(enemy != null)
         {
            dx = enemy.x - this.unit.x;
            dy = enemy.y - this.unit.y;
            dist = Math.sqrt(dx * dx + dy * dy);
            if(dist < minDist && (!this.unit.weapon || !(this.unit.weapon.§,!"§ is §2#7§)))
            {
               leftX = §3+§.move(this.unit,§@!o§.LEFT.value).x;
               rightX = §3+§.move(this.unit,§@!o§.RIGHT.value).x;
               new §5&6§().§?%a§(§<%&§.§!"8§,null,this.unit,enemy.x - leftX > rightX - enemy.x ? leftX : rightX).§?%a§(function():void
               {
                  if(Boolean(unit) && !unit.disposed)
                  {
                     nextEvent(10,§?%E§);
                  }
               },this).run();
            }
            else if(Boolean(this.unit) && !this.unit.disposed)
            {
               this.nextEvent(10,this.§?%E§);
            }
         }
      }
      
      public function §2#b§() : void
      {
         var direct:int = 0;
         var pathX:int = 0;
         if(Boolean(this.unit) && Boolean(!this.unit.disposed) && !this.unit.weapon)
         {
            direct = §8"%§.randomSeed.§5!p§() > 0.5 ? §@!o§.LEFT.value : §@!o§.RIGHT.value;
            pathX = §3+§.move(this.unit,direct).x;
            §<%&§.§!"8§(function():void
            {
            },this.unit,pathX);
         }
      }
      
      private function §+%X§() : void
      {
         var _loc1_:Object = this.unit.lastWeapon.getProperty("dontSpendTurn");
         if(Boolean(this.unit && !this.unit.disposed && this.unit.lastWeapon && _loc1_) && Boolean(_loc1_ == true) && !(this.unit.lastWeapon.§,!"§ is §;$W§))
         {
            this.isWeaponSelected = false;
            this.nextEvent(30,this.§?%E§);
         }
      }
      
      public function nextEvent(param1:uint, param2:Function) : void
      {
         this.frameCount = 0;
         this.§7!6§ = param1;
         this.callback = param2;
      }
      
      public function §9"W§() : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         this.unit = null;
      }
   }
}

