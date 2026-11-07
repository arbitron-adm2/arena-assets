package §1&-§
{
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §-I§.*;
   import §0!§.§6#z§;
   import §0!§.§8$Y§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §4!K§.§^%A§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §;$%§.§'%W§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.MouseEvent;
   import flash.system.LoaderContext;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §'$_§ extends §5#A§
   {
      
      private static const NAME:String = "LEECH";
      
      private var §4y§:Boolean;
      
      protected var §=!j§:Boolean = false;
      
      protected var §8#t§:Boolean = false;
      
      protected var §+"9§:Boolean = true;
      
      public function §'$_§(param1:int, param2:Boolean = true, param3:String = "LEECH")
      {
         super(param3,-1,param1);
         this.§4y§ = param2;
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.DAMAGE,this.trigger);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.DAMAGE,this.trigger);
      }
      
      private function trigger(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:§&"T§ = null;
         var _loc4_:§]$;§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!§&%M§)
         {
            _loc2_ = param1.source.owner;
            _loc3_ = param1.victim;
            _loc4_ = §8"%§.§?!W§.§4"m§;
            _loc5_ = unit && unit.squad && _loc4_ && Boolean(_loc4_.activeSquad) && _loc4_.activeSquad.getTeamId() == unit.squad.getTeamId();
            if(Boolean(_loc2_ && !_loc2_.disposed && _loc2_ != _loc3_ && param1.source.§=#3§) && (Boolean(_loc5_ || this.§8#t§)) && (_loc2_ == unit || this.§=!j§))
            {
               _loc6_ = value.value;
               _loc7_ = int(_loc3_.attributes.hp.§@#@§());
               if(_loc3_.disposed && _loc3_.attributes.hp.value < 0)
               {
                  _loc7_ += _loc3_.attributes.hp.value;
               }
               if(_loc6_ > 0)
               {
                  _loc6_ = Math.round(§-q§.§8$G§(_loc6_,_loc7_));
                  if(this.§+"9§)
                  {
                     _loc6_ = Math.min(_loc2_.attributes.hp.§#&"§() - _loc2_.attributes.hp.value,_loc6_);
                  }
                  if(_loc6_ > 0)
                  {
                     if(§8"%§.§?!W§.§4"m§)
                     {
                        §8"%§.§?!W§.§4"m§.§!%W§.§3%g§(_loc2_,MechanicEventV2.TYPE_LEECH,_loc6_,sourceItemId);
                     }
                     this.§3E§(param1.source,unit,_loc3_ as §+%]§,_loc6_);
                  }
               }
            }
         }
      }
      
      protected function §3E§(param1:§6#I§, param2:§+%]§, param3:§+%]§, param4:int) : void
      {
         var _loc5_:int = param2.attributes.hp.§#1§(param4,false,this.§4y§ ? 1 : 0,§6#z§.LEECH,§8$Y§.§^$]§);
         if(_loc5_ > 0 && param2.squad.isLocal())
         {
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,"n§,_loc5_);
         }
      }
   }
}

