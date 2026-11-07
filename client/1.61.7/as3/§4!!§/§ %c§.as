package §4!!§
{
   import §!L§.§+"'§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §"%H§.§6$3§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6#Z§.§&!Z§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=&!§.§4$z§;
   import §?$7§.§6J§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class § %c§ extends §6#I§
   {
      
      private static const §4;§:uint = 700;
      
      private var damage:§&$2§;
      
      private var target:§+%]§;
      
      private var homingFeat:§%%2§;
      
      private var bounces:uint = 2;
      
      private var §;"1§:uint = 700;
      
      public function § %c§(param1:§+%]§, param2:int, param3:int, param4:§+%]§, param5:uint, param6:uint, param7:Boolean = false)
      {
         super(param1,param2,param3,true,§&i§ * 2,§&!E§.§=$-§);
         §-"e§ = false;
         this.target = param4;
         this.damage = new §&$2§(param5);
         initialize(new Point(param2,param3),"AmThunderBolt");
         §`4§ = §]$S§;
         physParams.ignoresTerrain = true;
         physParams.§5N§ = §9%1§.§@%h§;
         addEventListener(§0%v§.§+&=§,this.onCollide);
         this.homingFeat = new §%%2§(this,param6,0);
         this.homingFeat.§<&E§ = 1;
         §=l§.push(this.homingFeat.§&$e§(param4));
         if(param7 && §8"%§.§&S§.§-p§())
         {
            §1"-§.attachTrail(this,12,6,13694463,16777215,1,true,0.5);
         }
         Application.scene.§@$I§.§1$+§(this);
      }
      
      public function §?"=§(param1:uint) : void
      {
         this.§;"1§ = param1;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.§5N§ = §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:Array = null;
         _loc2_ = param1.other as §+%]§;
         var _loc3_:Boolean = Boolean(this.target) && _loc2_ == this.target;
         var _loc4_:Boolean = Boolean(_loc2_) && _loc2_.squad.getTeamId() != owner.squad.getTeamId();
         if(_loc3_ || _loc4_)
         {
            inflictDamage(_loc2_,this.damage.value,0,0,false,true);
            §1"-§.explode(§;n§.§1"E§,_loc2_.x,_loc2_.y,30,§`!v§.§@S§);
            _loc5_ = null;
            if(this.bounces > 0)
            {
               _loc6_ = §""L§.§,"=§(§8"%§.§?!W§.§4"m§.§="T§(_loc2_));
               _loc5_ = §<H§.§7%+§(_loc2_,_loc6_,this.§;"1§) as §+%]§;
            }
            if(_loc5_)
            {
               this.target = _loc5_;
               this.homingFeat.§0!F§(this.target);
               --this.bounces;
            }
            else
            {
               this.clear();
            }
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(§7%[§(physicModel).isObjectIgnored(this.target))
         {
            disposed = true;
         }
         if(disposed)
         {
            this.clear();
         }
      }
      
      protected function clear() : void
      {
         disposed = true;
         removeEventListener(§0%v§.§+&=§,this.onCollide);
      }
   }
}

