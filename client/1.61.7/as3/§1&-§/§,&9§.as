package §1&-§
{
   import § #9§.§"$t§;
   import §!!!§.BuySkinDialog;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0!§.§8$Y§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§^$y§;
   import §2o§.§]#@§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §;!Z§.*;
   import §<!W§.§?#L§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§!"9§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=$#§.§ "V§;
   import §=7§.§?%4§;
   import §?$7§.§+l§;
   import §@!i§.§"-§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   
   public class §,&9§ extends §5#A§
   {
      
      private static const NAME:String = "LEECH_REGEN";
      
      private static const §4!Q§:int = §<H§.§3r§ * 3;
      
      private static const §^1§:int = §<H§.§3r§;
      
      private static const §=%"§:int = §<H§.§3r§ * 10;
      
      private static const §"$f§:int = §=%"§ - §^1§;
      
      private static const §;$T§:§&$2§ = new §&$2§(50);
      
      private var §4y§:Boolean;
      
      private var activated:Boolean;
      
      public function §,&9§(param1:int, param2:Boolean = true, param3:String = "LEECH_REGEN")
      {
         super(param3,-1,param1);
         this.§4y§ = param2;
      }
      
      override protected function §5#F§() : void
      {
         if(§8"%§.§?!W§.§4"m§)
         {
            this.activate();
         }
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(this.unit.squad))
         {
            _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(this.unit);
            for each(_loc2_ in _loc1_)
            {
               _loc2_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
               _loc2_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
            }
         }
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         super.onNextTurn(param1);
         this.activate();
      }
      
      private function activate() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         if(!this.activated && Boolean(this.unit.squad))
         {
            this.activated = true;
            Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
            _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(this.unit);
            for each(_loc2_ in _loc1_)
            {
               _loc2_.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
               _loc2_.addEventListener(§0%v§.DISPOSED,this.onDisposed);
            }
         }
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit.squad.getTeamId() != unit.squad.getTeamId() && !param1.unit.disposed)
         {
            param1.unit.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            param1.unit.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         }
      }
      
      private function onDisposed(param1:Event) : void
      {
         §+%]§(param1.target).removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
         §+%]§(param1.target).removeEventListener(§0%v§.DISPOSED,this.onDisposed);
      }
      
      private function §3"M§(param1:HpChangeEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(!§&%M§ && param1.changeType == §6#z§.HEAL && param1.amount > 0 && param1.§ %M§ is §+%]§ && value.value > 0)
         {
            _loc2_ = §+%]§(param1.§ %M§);
            _loc3_ = §^$y§.distance(_loc2_.x - unit.x,_loc2_.y - unit.y);
            if(_loc2_ != unit && !_loc2_.disposed && _loc2_.hp > 0 && !_loc2_.squad.isAi() && _loc2_.squad.getTeamId() != unit.squad.getTeamId() && !_loc2_.buffs.hasBuff(§ &=§.NAME))
            {
               _loc4_ = Math.round(§-q§.§8$G§(value.value,param1.amount));
               _loc5_ = 100;
               if(_loc4_ > 0)
               {
                  _loc2_.attributes.hp.change(-_loc4_);
                  _loc2_.attributes.hp.§@#§(_loc4_);
                  §2!H§.§;!x§(String(_loc4_),§2!H§.§0"Z§,_loc2_.x,_loc2_.y - 10,20);
                  DamageEvent.§!"2§(null,_loc2_,_loc4_,§0%v§.§'%e§);
                  _loc4_ = Math.min(unit.attributes.hp.§#&"§() - unit.attributes.hp.value,_loc4_);
                  if(_loc4_ > 0)
                  {
                     _loc6_ = unit.attributes.hp.§#1§(_loc4_,false,this.§4y§ ? 1 : 0,§6#z§.THEFT,§8$Y§.§^$]§,§2!H§.§1j§);
                     if(_loc6_ > 0 && unit.squad.isLocal())
                     {
                        §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,"n§,_loc6_);
                     }
                  }
               }
            }
         }
      }
   }
}

