package § %f§
{
   import §!L§.§+"'§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§2"B§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§="_§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §9%W§.§&!P§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.weapons.Grenade;
   
   public class §"#J§ extends §6&4§
   {
      
      private static const §2#,§:§&$2§ = new §&$2§(1);
      
      private var unit:§+%]§;
      
      public function §"#J§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function inflictDamage(param1:§&"T§, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Boolean = false, param7:Boolean = true, param8:Object = null) : void
      {
         if(param1 != null && param1 is §+%]§)
         {
            this.unit = §+%]§(param1);
         }
         super.inflictDamage(param1,param2,param3,param4,param5,param6,param7,param8);
         Application.scene.addEventListener(§0%v§.SOT,this.§!!r§);
      }
      
      private function §!!r§(param1:Event = null) : void
      {
         var _loc3_:BackpackItem = null;
         var _loc4_:Vector.<int> = null;
         var _loc5_:Vector.<int> = null;
         Application.scene.removeEventListener(§0%v§.SOT,this.§!!r§);
         var _loc2_:§+%]§ = §8"%§.§?!W§.§4"m§.activeUnit;
         if(Boolean(_loc2_ && this.unit && this.unit == _loc2_) && Boolean(!this.unit.disposed) && this.unit.buffs.hasBuff(§="_§.NAME))
         {
            _loc3_ = this.unit.squad.§?"#§().getBattleBackpack().§8&E§(§+%z§.SWITCH_TURN);
            if(_loc3_)
            {
               _loc4_ = new <int>[§+%z§.SWITCH_TURN];
               _loc5_ = new <int>[§2#,§.value];
               §7%g§.§6!b§(this.unit,_loc4_,_loc5_);
               ++_loc5_[0];
               §7%g§.§`%i§(this.unit,_loc4_,_loc5_);
               this.unit = null;
            }
         }
      }
   }
}

