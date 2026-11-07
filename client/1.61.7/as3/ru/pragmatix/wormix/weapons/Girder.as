package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+#U§.§#%D§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §1#p§.Team;
   import §2"L§.§^$y§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class Girder extends §,%r§
   {
      
      public static const §]!Y§:§&$2§ = new §&$2§(10);
      
      public static const §%U§:§&$2§ = new §&$2§(310);
      
      public static const §""T§:§&$2§ = new §&$2§(50);
      
      public static const §7$[§:§&$2§ = new §&$2§(200);
      
      private static const §4J§:§&$2§ = new §&$2§(20);
      
      private static const §3&"§:Number = 30;
      
      private static const §6%j§:Number = 22.5;
      
      private static const §4!§:int = 5;
      
      private static const §5$o§:int = 7;
      
      public static const §5&;§:int = 100;
      
      public static const §=#B§:int = 20;
      
      private var body:DisplayObject;
      
      private var leftTip:DisplayObject;
      
      private var rightTip:DisplayObject;
      
      private var ch:§8#p§;
      
      private var §<%"§:§&$2§ = new §&$2§(§7$[§.value);
      
      private var §0$;§:MovieClip;
      
      private var indestructible:Boolean = false;
      
      private var resizable:Boolean;
      
      private var §;$m§:int;
      
      private var § %v§:Number;
      
      private var §0#j§:Number;
      
      public function Girder()
      {
         super(§2"w§);
         §^&I§.value = false;
         this.ch = new §8#p§(this.§@%@§,this.§ %E§);
         §7&§(this.ch);
         §-g§ = new §#%D§();
      }
      
      private static function §["j§(param1:int) : Boolean
      {
         return param1 >= §""T§.value && param1 <= §%U§.value;
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.indestructible = §?"&§(getProperty("indestructible")).value;
         this.resizable = §?"&§(getProperty("resizable")).value;
         this.§0$;§ = §6#A§.§!&6§(String(getProperty("clipGirder")));
         var _loc2_:Boolean = getProperty("reducedAngle") ? §?"&§(getProperty("reducedAngle")).value : false;
         this.§;$m§ = _loc2_ ? §5$o§ : §4!§;
         this.§ %v§ = _loc2_ ? §6%j§ : §3&"§;
         this.§0#j§ = §-q§.§7%8§(this.§ %v§);
         if(this.resizable)
         {
            this.leftTip = this.§0$;§.getChildByName("leftTip");
            this.rightTip = this.§0$;§.getChildByName("rightTip");
            this.body = this.§0$;§.getChildByName("body");
         }
      }
      
      private function §@%@§(param1:int, param2:int) : Boolean
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
         var _loc3_:String = this.§9'§(param1,param2,shotParams.§3f§ * this.§0#j§);
         if(_loc3_)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(_loc3_,true);
            }
            return false;
         }
         return true;
      }
      
      private function § %E§(param1:int, param2:int) : void
      {
         if(this.§9'§(param1,param2,shotParams.§3f§ * this.§0#j§) == null)
         {
            this.§0$;§.transform.colorTransform = §1"-§.§"#@§;
         }
         else
         {
            this.§0$;§.transform.colorTransform = §1"-§.§8%#§;
         }
      }
      
      override public function activate() : void
      {
         this.ch.setCrosshairClip(this.§0$;§);
         super.activate();
         §+# §.§9! §.deactivate();
      }
      
      override public function §6!K§() : void
      {
         shotParams.§3f§ = shotParams.§3f§ == 0 ? this.§;$m§ : int(shotParams.§3f§ - 1);
         this.§2n§();
      }
      
      override public function §?&!§() : void
      {
         shotParams.§3f§ = shotParams.§3f§ == this.§;$m§ ? 0 : int(shotParams.§3f§ + 1);
         this.§2n§();
      }
      
      override public function §<#P§() : void
      {
         if(this.resizable)
         {
            this.§#$t§(§]!Y§.value);
         }
      }
      
      override public function §0%p§() : void
      {
         if(this.resizable)
         {
            this.§#$t§(-§]!Y§.value);
         }
      }
      
      public function §#$t§(param1:int) : void
      {
         var _loc2_:int = this.§0$;§.rotation;
         this.§0$;§.rotation = 0;
         if(Boolean(this.body) && §["j§(this.§<%"§.value + param1))
         {
            this.body.width += param1;
            this.body.x -= param1 / 2;
            this.leftTip.x -= param1 / 2;
            this.rightTip.x += param1 / 2;
            this.§<%"§.value += param1;
         }
         this.§0$;§.rotation = _loc2_;
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         owner.graphics.§9!I§(true);
         shotParams.§3f§ = 0;
         this.§2n§();
         if(this.resizable)
         {
            this.body.width = §7$[§.value;
            this.body.x = -(this.body.width / 2);
            this.body.y = -(this.body.height / 2);
            this.leftTip.x = -this.body.width / 2;
            this.rightTip.x = this.body.width / 2;
         }
         else
         {
            this.§0$;§.width = §7$[§.value;
         }
         this.§<%"§.value = §7$[§.value;
      }
      
      override public function §?!K§() : void
      {
         §+# §.§9! §.activate();
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         var _loc1_:MovieClip = §6#A§.§!&6§(String(getProperty("clipGirder")));
         _loc1_.x = shotParams.point.x;
         _loc1_.y = shotParams.point.y;
         if(this.resizable)
         {
            _loc2_ = _loc1_.getChildByName("body");
            _loc2_.width = this.§<%"§.value;
            _loc2_.x = this.body.x;
            _loc2_.y = this.body.y;
            _loc3_ = _loc1_.getChildByName("leftTip");
            _loc3_.x = this.leftTip.x;
            _loc3_.y = this.leftTip.y;
            _loc4_ = _loc1_.getChildByName("rightTip");
            _loc4_.x = this.rightTip.x;
            _loc4_.y = this.rightTip.y;
         }
         else
         {
            _loc1_.width = this.§<%"§.value;
            _loc1_.height = §4J§.value;
         }
         _loc1_.rotation = shotParams.angle ? §-q§.§%%>§(shotParams.angle) : shotParams.§3f§ * this.§ %v§;
         if(this.indestructible)
         {
            _loc1_.transform.colorTransform = §1"-§.§;"Y§;
         }
         Application.scene.§+!K§(_loc1_,shotParams.point.x,shotParams.point.y,this.indestructible);
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
            §+# §.§9! §.activate();
         }
         §@%;§.play(§`!v§.§=%N§);
         this.§,$x§(_loc1_.x,_loc1_.y);
         §9$h§.update(owner);
         this.§?!K§();
      }
      
      private function §2n§() : void
      {
         this.§0$;§.rotation = shotParams.§3f§ * this.§ %v§;
      }
      
      private function §9'§(param1:int, param2:int, param3:Number) : String
      {
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         if(!Application.scene.§@$I§.§@"E§())
         {
            _loc4_ = §8"%§.§?!W§.§4"m§.§5#h§();
            for each(_loc5_ in _loc4_)
            {
               if(!_loc5_.stable)
               {
                  return §0$N§.GIRDER_SCENE_UNSTABLE;
               }
            }
         }
         if(!this.§@3§(param1,param2,param3))
         {
            return §0$N§.GIRDER_IMPOSSIBLE;
         }
         return null;
      }
      
      public function §@3§(param1:int, param2:int, param3:Number) : Boolean
      {
         var testRadius:uint;
         var dx:Number;
         var dy:Number;
         var testObjects:Vector.<§&"T§>;
         var objHitTest:Boolean;
         var ox1:int;
         var oy1:int;
         var ox2:int;
         var oy2:int;
         var steps:int;
         var halfWidth:int = 0;
         var cos:Number = NaN;
         var sin:Number = NaN;
         var groundHitTest:Boolean = false;
         var testStep:uint = 0;
         var x1:int = 0;
         var y1:int = 0;
         var x2:int = 0;
         var y2:int = 0;
         var x:int = param1;
         var y:int = param2;
         var angle:Number = param3;
         halfWidth = this.§<%"§.value / 2;
         var halfHeight:int = §4J§.value / 2;
         cos = Math.cos(angle);
         sin = Math.sin(angle);
         var xcos1:Number = cos * -halfWidth;
         var xsin1:Number = sin * -halfWidth;
         var xcos2:Number = cos * halfWidth;
         var xsin2:Number = sin * halfWidth;
         groundHitTest = false;
         var i:int = -halfHeight;
         while(i <= halfHeight)
         {
            x1 = x + xcos1 - i * sin;
            y1 = y + xsin1 + i * cos;
            x2 = x + xcos2 - i * sin;
            y2 = y + xsin2 + i * cos;
            §^$y§.§`"F§(x1,y1,x2,y2,function(param1:int, param2:int):void
            {
               if(!groundHitTest)
               {
                  groundHitTest = groundHitTest || §>#9§.point(param1,param2);
                  if(param1 < §=#B§ || param2 < §5&;§ || param1 > Application.scene.width - 20 || param2 > Application.scene.height - 20)
                  {
                     groundHitTest = true;
                  }
               }
            });
            if(groundHitTest)
            {
               return false;
            }
            i++;
         }
         testRadius = 35;
         testStep = 15;
         dx = cos * testStep;
         dy = sin * testStep;
         testObjects = Application.scene.§@$I§.§@!_§();
         objHitTest = §<H§.§3%'§(x,y,testRadius,testObjects,false).length != 0;
         if(objHitTest)
         {
            return false;
         }
         ox1 = x;
         oy1 = y;
         ox2 = x;
         oy2 = y;
         steps = this.§<%"§.value / 2 / testStep;
         i = 1;
         while(i <= steps)
         {
            ox1 += dx;
            oy1 += dy;
            ox2 -= dx;
            oy2 -= dy;
            objHitTest = objHitTest || §<H§.§3%'§(ox1,oy1,testRadius,testObjects,false).length != 0 || §<H§.§3%'§(ox2,oy2,testRadius,testObjects,false).length != 0;
            if(objHitTest)
            {
               return false;
            }
            i++;
         }
         return true;
      }
      
      private function §,$x§(param1:int, param2:int) : void
      {
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !§>#9§.point(param1,param2) || !§["j§(this.§<%"§.value))
         {
         }
      }
      
      public function §@%<§() : int
      {
         return this.§<%"§.value;
      }
   }
}

