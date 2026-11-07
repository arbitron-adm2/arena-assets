package §<!W§
{
   import § %f§.§6&4§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §'!Z§.§1"-§;
   import §+%S§.§="_§;
   import §,#c§.ArenaMenu;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §3#T§.§?$q§;
   import §4#2§.§,%g§;
   import §5"J§.*;
   import §65§.§=&9§;
   import §7!B§.§&"T§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §[%§.Rabbit;
   import §^"y§.§]#i§;
   import §`%&§.§2§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.game.ai.§5&6§;
   import ru.pragmatix.wormix.game.ai.§<%&§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   
   public class §%#l§ extends §=&9§
   {
      
      public static const NAME:String = "RABBIT_GENEROSITY_BUFF";
      
      public static const §?!r§:int = 60;
      
      private static const §`&H§:int = 80;
      
      private var §1U§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      public function §%#l§()
      {
         super(NAME,0,1);
      }
      
      override protected function §7$d§() : void
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc6_:§+%]§ = null;
         var _loc7_:int = 0;
         if(Application.scene.§@$I§.§=%d§())
         {
            return;
         }
         if(§8"%§.§?!W§.§4"m§.activeSquad != unit.squad)
         {
            return;
         }
         if(Application.scene.§@$I§.§<#[§() % 5 != 0)
         {
            return;
         }
         var _loc1_:Rabbit = Rabbit(unit);
         if(!_loc1_.§8%B§())
         {
            return;
         }
         var _loc2_:Number = §?!r§ / 100;
         _loc3_ = §8"%§.§?!W§.§4"m§.§="T§(unit);
         var _loc4_:Vector.<§+%]§> = §<H§.§5"]§(unit.x,unit.y,§`&H§,_loc3_);
         var _loc5_:int = 0;
         for each(_loc6_ in _loc4_)
         {
            if(_loc6_.attributes.hp.§9"H§() < _loc2_ && this.§1U§.indexOf(_loc6_) == -1)
            {
               _loc7_ = §>&@§.apply(_loc6_,§>&@§.§1!5§(unit),false,false);
               §1"-§.§3#=§(§?$q§.§`#^§,_loc6_.x,_loc6_.y,40);
               _loc1_.§%!h§();
               this.§1U§.push(_loc6_);
               if(_loc7_ > 0)
               {
                  _loc5_++;
               }
            }
         }
         if(_loc5_ > 0)
         {
            §@%;§.play(§`!v§.§0!h§);
            if(unit.squad.isLocal())
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§<%F§,_loc5_);
            }
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         if(§8"%§.§?!W§.§4"m§.activeSquad == unit.squad)
         {
            this.§1U§.length = 0;
         }
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
      }
   }
}

