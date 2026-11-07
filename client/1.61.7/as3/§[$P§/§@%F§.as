package §[$P§
{
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#H§.§9$e§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §@%F§ extends §+H§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const PI_ONE_FOUR:Number = Math.PI / 4;
      
      private static const §+`§:§&$2§ = new §&$2§(5);
      
      private static const §0!C§:§&$2§ = new §&$2§(8);
      
      private static const §@%>§:§&$2§ = new §&$2§(6);
      
      private static const §@#9§:Array = [§+m§.NAME,§+N§.NAME,§1%I§.NAME,§2&>§.NAME,§,"R§.§5!d§];
      
      private var §%"6§:§?"&§ = new §?"&§();
      
      private var §+"Z§:§?"&§ = new §?"&§(false);
      
      private var §7%Y§:Cat;
      
      private var dummy:§&"T§;
      
      private var §?$1§:Boolean;
      
      private var §4$i§:Boolean;
      
      private var §&#p§:Boolean;
      
      private var §+B§:Boolean;
      
      public function §@%F§(param1:Cat, param2:§+H§)
      {
         super(param1,param2);
         this.§7%Y§ = param1;
         §'#O§.value = §@%>§.value;
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         Application.scene.addEventListener(§0%v§.START_TURN_SWITCHING,this.§1n§);
         Application.scene.addEventListener(§`"^§.WAIT_STABLE_SURRENDER,this.§4"F§);
      }
      
      private function §4"F§(param1:§`"^§) : void
      {
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(this.isClimbing && _loc2_.activeUnit == owner && _loc2_.activeSquad.isLocal())
         {
            §+# §.§9! §.deactivate();
            this.§%%g§(true);
         }
      }
      
      protected function §@%D§(param1:Event) : void
      {
         this.§?$1§ = false;
         this.§4$i§ = false;
         this.§+B§ = true;
      }
      
      protected function §,!l§(param1:Event) : void
      {
         if(this.isClimbing && §8"%§.§?!W§.§4"m§.activeUnit == owner)
         {
            §+# §.§9! §.deactivate();
         }
      }
      
      protected function §1n§(param1:Event) : void
      {
         if(!this.§?$1§ && §8"%§.§?!W§.§4"m§.activeUnit == owner)
         {
            this.§?$1§ = true;
            if(this.isClimbing)
            {
               this.§2#_§();
            }
         }
      }
      
      private function §`$h§(param1:Boolean) : void
      {
         var _loc3_:Point = null;
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(_loc2_.§1"3§())
         {
            return;
         }
         _loc3_ = §<H§.§ !K§(owner.x,owner.y,§>#9§.§3m§,20);
         if(!_loc3_)
         {
            return;
         }
         owner.x = _loc3_.x;
         owner.y = _loc3_.y;
         this.§+"Z§.value = true;
         §@%;§.play(§`!v§.§;$N§);
         this.§#$E§();
         owner.attributes.§8$e§.§5#l§(Cat.§##R§.value);
         this.§7%Y§.§?!N§();
         owner.physicModel.keepUnstable = false;
         owner.graphics.§6w§("CatFlying",true);
         if(owner.weapon)
         {
            owner.weapon.deactivate();
         }
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         var _loc4_:uint = param1 ? uint(§0!C§.value) : uint(§+`§.value);
         owner.§^"F§(owner.direction * PI_ONE_FOUR - PI_HALF,_loc4_);
         §8$a§.§&!#§(owner.physicModel,§9#1§.§3%G§,this.§<%7§);
         this.§%"6§.value = false;
      }
      
      override protected function jump(param1:Number, param2:uint, param3:Boolean, param4:Boolean = false) : void
      {
         super.jump(param1,param2,param3,param4);
         this.§%"6§.value = true;
      }
      
      override public function stabilize(param1:Event) : void
      {
         this.§%"6§.value = false;
         super.stabilize(param1);
      }
      
      private function §<%7§(param1:Event = null) : void
      {
         if(!Application.scene)
         {
            return;
         }
         if(Application.scene.§@$I§.§=%d§())
         {
            return;
         }
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         if(!this.isClimbing)
         {
            return;
         }
         owner.§?"o§();
         if(!owner.buffs.hasBuff(§9$e§.NAME))
         {
            owner.setSpeedXY(0,-§+`§.value);
         }
         owner.attributes.§8$e§.§5#l§(-Cat.§##R§.value);
         this.§+"Z§.value = false;
         this.§]u§();
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(Boolean(_loc2_ && !_loc2_.§1"3§() && !_loc2_.§[!W§() && !_loc2_.§"$6§()) && Boolean(_loc2_.activeUnit == owner) && !owner.buffs.hasBuff(§9$e§.NAME))
         {
            if(owner.weapon == null)
            {
               owner.§#&5§();
            }
            if(_loc2_.§=%g§())
            {
               _loc2_.§%!J§(true);
            }
         }
      }
      
      public function §!%N§() : void
      {
         if(!owner.disposed)
         {
            if(this.isClimbing)
            {
               if(owner.weapon)
               {
                  owner.weapon.§?!K§();
               }
               §8"%§.§?!W§.§4"m§.§%!J§(false);
               this.§#$E§();
            }
            else
            {
               this.§]u§();
            }
         }
      }
      
      public function §%%g§(param1:Boolean = false) : void
      {
         var immediately:Boolean = param1;
         if(!owner.disposed)
         {
            if(immediately)
            {
               this.§+B§ = false;
            }
            if(this.isClimbing && this.§?$1§ && !this.§4$i§ && !immediately)
            {
               this.§4$i§ = true;
               §8$a§.§%!E§(1,function onWaitAndDoStopClimbing():void
               {
                  if(!Application.scene)
                  {
                     return;
                  }
                  if(Application.scene.§@$I§.§=%d§())
                  {
                     return;
                  }
                  if(!§8"%§.§?!W§.§4"m§)
                  {
                     return;
                  }
                  if(§+B§)
                  {
                     §+# §.§9! §.activate();
                  }
               });
               this.§2#_§();
            }
            else
            {
               this.§]u§();
            }
         }
      }
      
      public function §#$E§() : void
      {
         if(!this.dummy || this.dummy.disposed)
         {
            this.dummy = Application.scene.§,$z§();
            if(this.§?$1§)
            {
               this.§2#_§();
            }
         }
      }
      
      public function §]u§() : void
      {
         if(this.dummy)
         {
            this.dummy.disposed = true;
            this.dummy = null;
         }
      }
      
      public function §2#_§() : void
      {
         if(!this.§&#p§)
         {
            this.§&#p§ = true;
            §8$a§.§%!E§(150,function onWaitAndDoKillDummy():void
            {
               if(!Application.scene)
               {
                  return;
               }
               if(Application.scene.§@$I§.§=%d§())
               {
                  return;
               }
               if(!§8"%§.§?!W§.§4"m§)
               {
                  return;
               }
               if(§8"%§.§?!W§.§4"m§.activeUnit == owner)
               {
                  §+# §.§9! §.deactivate();
               }
               §]u§();
               §&#p§ = false;
               if(§?$1§)
               {
                  §4$i§ = true;
               }
            });
         }
      }
      
      private function §?!8§(param1:String) : void
      {
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
      }
      
      override public function § %Q§() : Boolean
      {
         var _loc1_:uint = uint(Application.scene.§@$I§.§<#[§());
         return §+!H§ && _loc1_ - §"$&§ >= §'#O§.value && (§,%#§.value > 0 || this.§%"6§.value);
      }
      
      override public function §,#B§(param1:Boolean = false) : void
      {
         var _loc3_:uint = 0;
         if(this.§9#P§())
         {
            return;
         }
         var _loc2_:Boolean = §+!H§ && this.§%"6§.value && (§5%E§.value == 0 || §,%#§.value == 1);
         if(_loc2_ && !owner.disposed && !owner.stable && !owner.isImmobile())
         {
            _loc3_ = uint(Application.scene.§@$I§.§<#[§());
            if(_loc3_ - §"$&§ >= §'#O§.value)
            {
               this.§`$h§(§,%#§.value == 1);
               §"$&§ = _loc3_;
               §,%#§.value = 0;
            }
         }
         else
         {
            super.§,#B§(param1);
         }
      }
      
      override protected function §7$z§(param1:Boolean = false) : void
      {
         if(this.isClimbing)
         {
            owner.stable = false;
         }
         else
         {
            super.§7$z§(param1);
         }
      }
      
      override protected function §4$0§() : void
      {
         if(!this.isClimbing)
         {
            super.§4$0§();
         }
      }
      
      override public function jumpBack(param1:Boolean = false) : void
      {
         if(this.§9#P§())
         {
            return;
         }
         if(§,%#§.value == 0)
         {
            if(owner.stable && !owner.isImmobile())
            {
               this.§,#4§();
            }
         }
         else
         {
            if(§5%E§.value > 0 && §,%#§.value == 1)
            {
               this.§%"6§.value = false;
            }
            super.jumpBack(param1);
         }
      }
      
      private function §9#P§() : Boolean
      {
         return owner.buffs.§%%b§(§@#9§);
      }
      
      override protected function §,#4§(param1:Boolean = false) : void
      {
         if(this.isClimbing)
         {
            owner.stable = false;
         }
         else
         {
            super.§,#4§(param1);
         }
      }
      
      override public function §["9§() : void
      {
         super.§["9§();
         this.§%"6§.value = false;
      }
      
      public function get isClimbing() : Boolean
      {
         return this.§+"Z§.value;
      }
   }
}

