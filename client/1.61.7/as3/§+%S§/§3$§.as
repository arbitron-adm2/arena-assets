package §+%S§
{
   import §"$+§.§`&$§;
   import §&"c§.§!!q§;
   import §-8§.§`%[§;
   import §7!B§.§&"T§;
   import §<!W§.§1N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import config.§`!a§;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §3$§ extends §"!q§
   {
      
      public static const NAME:String = "MOVE_BLOCK";
      
      public function §3$§(param1:§&"T§, param2:§+%]§, param3:Point, param4:uint, param5:uint, param6:uint, param7:String)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         name = NAME;
      }
      
      override protected function §7$d§() : void
      {
         var _loc1_:Boolean = !anchor ? true : §`%[§.§""&§(anchor.x,anchor.y).indexOf(unit) > -1;
         var _loc2_:Boolean = unit.buffs.hasBuff(§`$l§.NAME);
         if(unit.disposed || !_loc1_ || _loc2_ || unit.stable)
         {
            clear();
         }
         else if(Boolean(counter.value >= §1#,§ && _loc1_ && !unit.stable && !gobj.disposed) && Boolean(owner) && !_loc2_)
         {
            unit.buffs.addValue(new §`$l§());
            §+!M§();
            unit.setSpeedXY(0,0);
            clear();
         }
      }
   }
}

