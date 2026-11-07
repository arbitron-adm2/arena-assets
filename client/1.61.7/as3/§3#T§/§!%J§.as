package §3#T§
{
   import § !8§.§`!d§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+%S§.§#%X§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §8$Z§.§9!&§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=&!§.§&$a§;
   import §?#g§.Race;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import config.§;"I§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §!%J§ extends §6#I§
   {
      
      private static const §9""§:uint = 6;
      
      private static const §'%R§:Vector.<int> = new <int>[§;"I§.§+#L§,§;"I§.§@T§,§;"I§.§ &F§];
      
      private var paramSet:§5$n§;
      
      public function §!%J§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param1.x,param1.y,false);
         this.paramSet = param2;
         initialize(param1.weapon.getBarrelPoint(param3),param2.ammoClassName);
         §^"F§(param3,param4);
         §`4§ = §5$=§;
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§+%]§ = null;
         if(!disposed)
         {
            _loc2_ = param1.other as §+%]§;
            if(_loc2_)
            {
               this.trigger(_loc2_);
            }
            else
            {
               §1"-§.explode(§;n§.§6#B§,x,y,10,§`!v§.§5%;§);
            }
            disposed = true;
         }
      }
      
      private function trigger(param1:§+%]§) : void
      {
         var _loc3_:§#%X§ = null;
         var _loc4_:§`!d§ = null;
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:§+%]§ = null;
         var _loc8_:§#%X§ = null;
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().battleType == §&$a§.§5!w§ && param1.squad.isAi();
         if(_loc2_)
         {
            §1"-§.explode(§;n§.§6#B§,x,y,10,§`!v§.§5%;§);
            inflictDamage(param1,this.paramSet.damage.value,0,0,false,true);
            return;
         }
         inflictDamage(param1,this.paramSet.damage.value,0,0,false,true);
         if(!param1.disposed)
         {
            §@%;§.play(§`!v§.§0!h§);
            _loc3_ = param1.buffs.getBuff(§#%X§.NAME) as §#%X§;
            if(_loc3_)
            {
               _loc3_.§7%?§(§9""§);
            }
            _loc4_ = param1.record.getRace();
            _loc5_ = §'%R§.length - 1;
            _loc6_ = uint(§'%R§[int(§8"%§.randomSeed.§,!q§(0,_loc5_))]);
            while(Race.§3!4§(_loc6_) == _loc4_)
            {
               _loc6_ = uint(§'%R§[int(§8"%§.randomSeed.§,!q§(0,_loc5_))]);
            }
            _loc7_ = §5"O§.changeRace(param1,Race.§3!4§(_loc6_));
            _loc8_ = _loc7_.buffs.getBuff(§#%X§.NAME) as §#%X§;
            if(!_loc8_)
            {
               _loc7_.buffs.place(new §#%X§(_loc3_ ? _loc3_.getRace() : param1.record.getRace(),_loc3_ ? _loc3_.§9K§() : param1.record.§5"L§().§7"=§(),_loc3_ ? _loc3_.§;!a§() : param1.isRevived(),_loc3_ ? _loc3_.§8#z§() : int(§9""§)));
            }
         }
      }
   }
}

