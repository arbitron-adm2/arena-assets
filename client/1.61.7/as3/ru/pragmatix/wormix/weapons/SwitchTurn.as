package ru.pragmatix.wormix.weapons
{
   import § &5§.§%$O§;
   import §##y§.§9§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-8§.§3!x§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5!,§.§]"G§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^!]§.§-$w§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class SwitchTurn extends §,%r§
   {
      
      private static const §7%9§:ColorTransform = new ColorTransform(1,1,1,1,61,-87,115);
      
      private static const §+#I§:int = 85;
      
      private static const §5#9§:String = "SwitchTurn";
      
      protected var §86§:Array = [null,§7%9§];
      
      protected var §5#&§:String;
      
      protected var §!!B§:§+%]§;
      
      private var §8!§:Boolean;
      
      private var §`%3§:MovieClip;
      
      private var §4"o§:§,%r§;
      
      public function SwitchTurn(param1:uint = 0)
      {
         super(§2"w§);
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
         this.§5#&§ = §5#9§;
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         if(Boolean(this.§!!B§) && Boolean(owner) && this.§!!B§ == owner)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.ALREADY_ACTIVE_UNIT,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         if(Boolean(owner) && §9$h§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         owner.graphics.§9!I§(true);
      }
      
      override public function activate() : void
      {
         if(!active.value)
         {
            super.activate();
            §+# §.§9! §.deactivate();
            this.§!!B§ = owner;
            this.§8!§ = false;
            this.§6"$§();
            if(owner)
            {
               this.§4"o§ = owner.lastWeapon == null || owner.lastWeapon is SwitchTurn ? §'%_§.§5a§(owner.record) : owner.lastWeapon;
            }
         }
      }
      
      override public function deactivate() : void
      {
         if(active.value)
         {
            super.deactivate();
            this.hideArrow();
            if(Boolean(this.§!!B§) && Boolean(owner == this.§!!B§) && §8"%§.§?!W§.§4"m§.§=%g§())
            {
               owner.getBar().§]%d§();
            }
            §+# §.§9! §.activate();
         }
      }
      
      override public function §?!K§() : void
      {
         var _loc1_:§+%]§ = owner;
         super.§?!K§();
         if(!_loc1_.disposed && !§8"%§.§?!W§.§4"m§.§[!W§())
         {
            _loc1_.lastWeapon = this.§4"o§;
         }
         _loc1_.getBar().§]%d§();
         if(this.§!!B§)
         {
            if(this.§!!B§ != _loc1_)
            {
               this.§!!B§.getBar().§>$T§();
            }
            this.§!!B§ = null;
         }
         this.§4"o§ = null;
      }
      
      override public function §6!K§() : void
      {
         this.§!! §(§@!o§.LEFT);
      }
      
      override public function §?&!§() : void
      {
         this.§!! §(§@!o§.RIGHT);
      }
      
      private function §!! §(param1:§@!o§) : void
      {
         this.§!!B§ = this.§6%,§(param1);
         if(Boolean(this.§!!B§) && !this.§!!B§.disposed)
         {
            Application.scene.§'%%§(this.§!!B§);
            this.hideArrow();
            this.§6"$§();
            §@%;§.play(§`!v§.§;$u§);
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§+%]§ = this.§!!B§;
         var _loc2_:§+%]§ = owner;
         §9$h§.update(owner);
         this.§?!K§();
         _loc2_.getBar().§>$T§();
         if(!_loc1_.disposed && _loc1_.stable)
         {
            if(_loc1_.lastWeapon == null || _loc1_.lastWeapon is SwitchTurn)
            {
               _loc1_.lastWeapon = §'%_§.§5a§(_loc1_.record);
            }
            §8"%§.§?!W§.§4"m§.§?&C§(_loc1_);
         }
         §8"%§.§?!W§.§4"m§.§%!J§(true);
         if(_loc1_ is Cat)
         {
            _loc1_.§#&5§();
         }
         var _loc3_:§]"G§ = _loc1_.buffs.getBuff(§]"G§.NAME) as §]"G§;
         var _loc4_:§]"G§ = _loc2_.buffs.getBuff(§]"G§.NAME) as §]"G§;
         if(Boolean(_loc3_) && Boolean(_loc3_.§ %T§()) || Boolean(_loc4_) && Boolean(_loc4_.§ %T§()))
         {
            if(Boolean(_loc3_) && _loc3_.§ %T§())
            {
               _loc3_.§^!2§();
            }
            else if(Boolean(_loc4_) && _loc4_.§ %T§())
            {
               _loc4_.§^!2§();
            }
            Application.scene.dispatchEvent(new §-$w§(recordId.value));
         }
      }
      
      private function §6%,§(param1:§@!o§) : §+%]§
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:int = 0;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         var _loc3_:Vector.<§+%]§> = this.§=!,§();
         for each(_loc4_ in _loc3_)
         {
            if(!_loc4_.disposed && _loc4_.stable)
            {
               _loc2_.push(_loc4_);
            }
         }
         _loc5_ = 0;
         while(_loc5_ < _loc2_.length)
         {
            if(_loc2_[_loc5_] == this.§!!B§)
            {
               break;
            }
            _loc5_++;
         }
         if(_loc2_.length == 0)
         {
            return this.§!!B§;
         }
         if(param1 == §@!o§.LEFT)
         {
            return _loc5_ == 0 ? _loc2_[_loc2_.length - 1] : _loc2_[_loc5_ - 1];
         }
         return _loc5_ >= _loc2_.length - 1 ? _loc2_[0] : _loc2_[_loc5_ + 1];
      }
      
      protected function §=!,§() : Vector.<§+%]§>
      {
         return §8"%§.§?!W§.§4"m§.activeSquad.§1!n§();
      }
      
      private function §6"$§() : void
      {
         var _loc1_:ColorTransform = null;
         if(!this.§8!§ && Boolean(this.§!!B§))
         {
            this.§`%3§ = §6#A§.§!&6§(this.§5#&§);
            this.§`%3§.x = this.§!!B§.x;
            this.§`%3§.y = this.§!!B§.y - §+#I§;
            _loc1_ = this.§86§[this.§!!B§.squad.getNumber()];
            if(_loc1_)
            {
               this.§`%3§.transform.colorTransform = _loc1_;
            }
            Application.scene.addChild(this.§`%3§);
            §%$O§.§4%s§(Application.scene,this.§!!B§,true,false);
            this.§8!§ = true;
         }
      }
      
      private function hideArrow() : void
      {
         if(this.§8!§)
         {
            Application.scene.removeChild(this.§`%3§);
            this.§`%3§ = null;
            this.§8!§ = false;
         }
      }
   }
}

