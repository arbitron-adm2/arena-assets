package §4!!§
{
   import § $q§.§,"c§;
   import § &5§.§0&$§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §0!§.§8$Y§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §<%k§.§`!v§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §6$V§ extends §'$V§
   {
      
      private var damage:§&$2§;
      
      private var §=$Z§:Boolean;
      
      private var trail:Sprite;
      
      public function §6$V§(param1:§+%]§, param2:int, param3:int, param4:§+%]§, param5:uint, param6:uint = 30, param7:uint = 0, param8:Boolean = false)
      {
         super(param1,param2,param3,true,param4,3355443,1402368,param6);
         this.damage = new §&$2§(param5);
         this.§=$Z§ = param8;
         homingFeat.§;$C§ = param7;
         §3$1§ = !param8;
         § &%§ = !param8;
      }
      
      override protected function §;&;§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc1_:§+%]§ = §+%]§(target);
         if(this.§=$Z§ && owner != _loc1_ && owner.§+&,§(_loc1_))
         {
            _loc2_ = owner.bonuses.getStatValue(Bonus.§;#-§);
            this.damage.value += §-q§.§8$G§(_loc2_,this.damage.value);
            _loc3_ = _loc1_.attributes.hp.§#1§(this.damage.value,false,1,null,§8$Y§.§<#9§,"0x99CC99",this);
            if(_loc3_ > 0 && _loc1_.squad.isLocal())
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,%R§,_loc3_);
            }
         }
         else
         {
            inflictDamage(target,this.damage.value,0,0,false,true,true,_customSource);
         }
         dispatchEvent(new Event(§0%v§.TARGET_HIT));
         §@%;§.play(§`!v§.§3"A§);
      }
      
      override protected function §0$J§(param1:uint, param2:uint) : void
      {
         if(Boolean(this.trail) && Boolean(this.trail.parent))
         {
            this.trail.parent.removeChild(this.trail);
         }
         this.trail = §1"-§.attachTrail(this,12,6,param1,param2,1);
      }
      
      public function §`# §(param1:uint, param2:uint = 1402368) : void
      {
         this.§0$J§(param1,param2);
      }
      
      public function get healing() : Boolean
      {
         return this.§=$Z§;
      }
   }
}

