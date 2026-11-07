package §]$J§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§ !!§;
   import §0%[§.§1%"§;
   import §0%z§.§,$h§;
   import §1#0§.§;4§;
   import §2B§.§8"n§;
   import §4'§.§`"q§;
   import §;#O§.§+%7§;
   import §>%S§.§^!V§;
   import §@#K§.§3&2§;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#"s§ extends §3&2§
   {
      
      private static const §-!b§:uint = 20;
      
      protected var boost:int;
      
      protected var §;w§:Boolean = false;
      
      public function §#"s§(param1:Point, param2:String, param3:int)
      {
         super(param1.x,param1.y,param2,"+" + param3.toString() + " " + §0$N§.TO_HP,Math.max(§-!b§ + 10,param3 + 10),Math.max(§-!b§,param3),§&!E§.§0"&§);
         §1"-§.explode(§;n§.§6#B§,param1.x,param1.y,20);
         this.boost = param3;
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.color = 6856467;
         hint.setQtip("+" + param3.toString() + " " + §0$N§.TO_HP,§;#^§.DEFAULT,§+"'§.§1$n§,_loc4_);
         §+%;§();
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         super.§0$j§(param1);
         if(param1.squad.isLocal())
         {
            §8"%§.§?!W§.§7%@§.increment(§;4§.COLLECTED_MEDKITS);
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§^$v§);
         }
         var _loc2_:int = param1.bonuses.getStatValue(Bonus.§;#-§);
         this.boost += §-q§.§8$G§(_loc2_,this.boost);
         param1.attributes.hp.§#1§(this.boost,this.§;w§);
         param1.buffs.§6C§(§ !!§.NAME);
      }
      
      public function §2$§() : uint
      {
         return this.boost;
      }
   }
}

