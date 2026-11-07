package §1&-§
{
   import § !8§.§`!d§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§8$Y§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2"L§.§^$y§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §<%c§.§>!^§;
   import §=#g§.*;
   import §=&!§.§&$a§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §?#g§.§&"P§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.EndBattle;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.server.EndBattleResult;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §4!s§ extends §5#A§
   {
      
      public static const §,!g§:String = "REGENERATION_START_TURN";
      
      public static const §!!Y§:String = "REGENERATION_END_TURN";
      
      public static const §]$L§:int = 50;
      
      private var event:String;
      
      private var §8%^§:Boolean;
      
      private var §?D§:Boolean;
      
      private var §&&B§:int;
      
      private var §"$D§:int;
      
      private var §%%k§:int;
      
      private var §>J§:Boolean;
      
      public function §4!s§(param1:int, param2:int = -1, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false)
      {
         this.§8%^§ = param3;
         this.event = param3 ? §0%v§.EOT : §0%v§.SOT;
         this.§?D§ = param4;
         this.§>J§ = param5;
         this.§&&B§ = param5 ? §8$Y§.§6"y§ : §8$Y§.§<#9§;
         super(param3 ? §!!Y§ : §,!g§,param2,param1);
      }
      
      public static function §33§(param1:§+%]§) : int
      {
         return param1.attributes.hp.§8!R§() * §]$L§ / 100;
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(this.event,this.trigger,false,§[!F§.§^!?§);
         this.§"$D§ = §33§(unit);
         this.§%%k§ = 0;
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(this.event,this.trigger);
      }
      
      private function trigger(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!§&%M§ && (!this.§?D§ || §8"%§.§?!W§.§4"m§.activeSquad == unit.squad))
         {
            if(value.value > 0 && unit.hp < unit.attributes.hp.§#&"§())
            {
               _loc2_ = 0;
               if(value.value >= 1)
               {
                  _loc2_ += value.value;
               }
               else
               {
                  _loc2_ += Math.round(unit.attributes.hp.§#&"§() * value.value);
               }
               _loc3_ = unit.bonuses.getStatValue(Bonus.§;#-§);
               _loc2_ += §-q§.§8$G§(_loc3_,_loc2_);
               if(_loc2_ > 0)
               {
                  this.§%%k§ += _loc2_;
                  _loc4_ = unit.attributes.hp.§#1§(_loc2_,false,1,null,this.§&&B§);
                  if(_loc4_ > 0 && Boolean(§8"%§.§?!W§.§4"m§))
                  {
                     §8"%§.§?!W§.§4"m§.§!%W§.§3%g§(unit,MechanicEventV2.TYPE_REGEN,_loc4_,sourceItemId);
                  }
                  if(_loc4_ > 0 && unit.squad.isLocal())
                  {
                     §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,"n§,_loc4_);
                  }
               }
            }
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §4!s§(value.value,§8#z§(),this.§8%^§,this.§?D§,true));
      }
      
      public function §%#;§() : void
      {
         this.§&&B§ = §8$Y§.§6"y§;
      }
   }
}

