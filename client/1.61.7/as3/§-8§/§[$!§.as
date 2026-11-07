package §-8§
{
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §+%S§.§[&;§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §[$!§ extends §3!x§
   {
      
      private static const §]=§:§&$2§ = new §&$2§(5);
      
      public function §[$!§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:String, param6:Object)
      {
         super(param1,param2,param3,param4,param5,§]=§.value + param1.bonuses.getStatValue(Bonus.IMMOBILITY_ADDITION));
      }
      
      override protected function §[%x§(param1:§+%]§) : void
      {
         super.§[%x§(param1);
         param1.buffs.place(new §[&;§());
         if(!§0%X§[param1])
         {
            §0%X§[param1] = {
               "unit":param1,
               "count":0
            };
         }
         var _loc2_:Point = §=z§.§-L§(param1);
         var _loc3_:int = param1.bonuses.getStatValue(Bonus.IMMOBILITY_REDUCTION);
         if(Boolean(§0%X§[param1]) && §0%X§[param1].count < duration.value + _loc3_)
         {
            ++§0%X§[param1].count;
            §'"$§.§]#I§(owner,param1.x,param1.y,param1,paramSet.damage.value,0,0,true,true,§&!E§.COLD,true,false,true,true,_customSource);
         }
         if(_loc2_)
         {
            §=z§.§5!u§(param1,_loc2_);
         }
      }
   }
}

