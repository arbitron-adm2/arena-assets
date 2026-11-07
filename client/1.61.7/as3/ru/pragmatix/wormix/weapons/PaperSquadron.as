package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §"$+§.*;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §'!Z§.§1"-§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §4!!§.§#Z§;
   import §5%S§.§>&-§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class PaperSquadron extends §,%r§
   {
      
      public static const §1!&§:§&$2§ = new §&$2§(15);
      
      private var §-&2§:§&$2§ = new §&$2§(§1!&§.value);
      
      private var frames:§&$2§ = new §&$2§(0);
      
      private var §<$-§:§&$2§ = new §&$2§(0);
      
      private var §@"a§:§&$2§ = new §&$2§(6);
      
      private var angle:Number;
      
      private var missiles:Array;
      
      private var targets:Array;
      
      private var §2#Q§:Array;
      
      public function PaperSquadron()
      {
         super();
         §"#z§ = 10;
         §2$"§ = 45;
         §7&§(new §8#p§(this.§@%@§));
         §7&§(new §8#p§(this.§@%@§));
         §7&§(new §8#p§(this.§@%@§));
         §7&§(new §8#p§(this.§@%@§));
         §7&§(new §!7§());
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.missiles = [];
         this.targets = [];
         this.§2#Q§ = [];
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         if(§?"'§)
         {
            this.§-"%§();
         }
         else
         {
            this.§`8§();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §#!Z§.fire(§#!Z§.§[!E§);
            }
         }
      }
      
      private function §`8§() : void
      {
         var _loc1_:MovieClip = null;
         for each(_loc1_ in this.§2#Q§)
         {
            Application.scene.removeChild(_loc1_);
         }
         this.targets.length = this.§2#Q§.length = 0;
      }
      
      private function §@%@§(param1:int, param2:int) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         if(this.targets.length > 0)
         {
            _loc3_ = this.targets[this.targets.length - 1];
            _loc4_ = §^$y§.distance(_loc3_.x - param1,_loc3_.y - param2);
            if(_loc4_ < §<H§.§@k§ * 2)
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §>&-§.§[$9§(§0$N§.TARGETS_TOO_CLOSED,true);
                  §@%;§.play(§`!v§.§2$e§);
               }
               return false;
            }
         }
         this.targets.push({
            "x":param1,
            "y":param2,
            "i":this.targets.length
         });
         this.§2#Q§.push(§1"-§.§##7§(param1,param2));
         return true;
      }
      
      override protected function §7k§(param1:int) : void
      {
      }
      
      override protected function §`%V§() : void
      {
         §?"'§ = true;
         §+# §.§9! §.deactivate();
         this.angle = shotParams.angle;
         this.frames.value = 0;
         this.§<$-§.value = 0;
         startFrameListening();
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(!owner)
         {
            return;
         }
         ++this.frames.value;
         if(this.frames.value % this.§-&2§.value == 0)
         {
            ++this.§<$-§.value;
            this.§60§();
         }
         if(this.§<$-§.value == this.§@"a§.value)
         {
            this.§?!K§();
         }
      }
      
      private function §-"%§() : void
      {
         §?"'§ = false;
         §+# §.§9! §.activate();
         §2#G§();
         §=#P§.§6+§();
      }
      
      private function §60§() : void
      {
         var _loc2_:§'C§ = null;
         var _loc1_:uint = this.missiles.length % 2 == 0 ? §#Z§.§!1§ : §#Z§.§%% §;
         _loc2_ = new §'C§(owner,new Point(owner.x,owner.y),paramSet,shotParams.angle,§"#z§,shotParams.point,§#Z§.§!1§);
         _loc2_.setDamagePerSecond(§&$2§(getProperty("damagePerFrame")));
         var _loc3_:§'C§ = §'C§(_loc2_);
         _loc3_.§!;§(this.targets.concat());
         _loc3_.addEventListener(§0%v§.DISPOSED,this.§8%H§);
         this.missiles.push(_loc3_);
      }
      
      private function §8%H§(param1:Event) : void
      {
         var _loc2_:§'C§ = param1.target as §'C§;
         _loc2_.removeEventListener(§0%v§.DISPOSED,this.§8%H§);
         this.missiles.splice(this.missiles.indexOf(_loc2_),1);
         if(!§?"'§ && this.missiles.length == 0)
         {
            this.§`8§();
         }
      }
   }
}

