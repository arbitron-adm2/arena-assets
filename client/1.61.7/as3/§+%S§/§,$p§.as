package §+%S§
{
   import § !8§.§`!d§;
   import § &5§.§%$O§;
   import §!$d§.§<$c§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §1!J§.§@#%§;
   import §65§.§%%o§;
   import §7"Q§.§0$L§;
   import §7$t§.*;
   import §<%k§.§`!v§;
   import §?!E§.*;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^4§.§]"8§;
   import config.§28§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §,$p§ extends §%%o§
   {
      
      public static const NAME:String = "IMMEDIATE_SWAP_ATTRIBUTES_DEBUFF";
      
      private static const §%!y§:int = 2;
      
      private var owner:§+%]§;
      
      private var §<j§:Boolean;
      
      private var §+#+§:int;
      
      private var §'$Q§:int;
      
      public function §,$p§(param1:§+%]§, param2:int = 2, param3:int = 0, param4:int = 0, param5:Boolean = false)
      {
         super(NAME,param2,1);
         this.owner = param1;
         this.§+#+§ = param3;
         this.§'$Q§ = param4;
         this.§<j§ = param5;
      }
      
      override protected function §5#F§() : void
      {
         if(this.§<j§)
         {
            unit.graphics.colorTransform(0,-25,-100);
         }
         else if(this.§1g§(unit))
         {
            this.§<j§ = true;
            unit.graphics.colorTransform(0,-25,-100);
            §1"-§.explode(§;n§.§6#B§,unit.x,unit.y,30,§`!v§.§+Q§);
         }
      }
      
      override protected function §0&"§() : void
      {
         if(this.§<j§)
         {
            this.§<j§ = false;
            unit.graphics.colorTransform(0,25,100);
            if(!Application.scene.§@$I§.§=%d§())
            {
               §1"-§.explode(§;n§.§6#B§,unit.x,unit.y,30,§`!v§.§0&C§);
            }
            unit.attributes.armor.§3e§(this.§+#+§);
            unit.attributes.attack.§3e§(this.§'$Q§);
         }
      }
      
      private function §1g§(param1:§+%]§) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         _loc2_ = param1.attributes.armor.§8!R§();
         _loc3_ = param1.attributes.attack.§8!R§();
         var _loc4_:int = _loc2_ - _loc3_;
         if(Math.abs(_loc4_) > 1)
         {
            this.§+#+§ = _loc2_;
            this.§'$Q§ = _loc3_;
            if(_loc4_ > 0)
            {
               _loc5_ = _loc2_ * 0.5;
               param1.attributes.armor.§3e§(_loc5_);
               param1.attributes.attack.§3e§(_loc3_ + _loc5_);
            }
            else
            {
               _loc6_ = _loc3_ * 0.5;
               param1.attributes.armor.§3e§(_loc2_ + _loc6_);
               param1.attributes.attack.§3e§(_loc6_);
            }
            return true;
         }
         return false;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §,$p§(this.owner,§8#z§(),this.§+#+§,this.§'$Q§,this.§<j§));
      }
   }
}

