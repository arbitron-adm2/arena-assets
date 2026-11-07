package §]^§
{
   import § K§.§2""§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§;!d§;
   import §+%S§.§2!x§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2B§.§#&E§;
   import §7!B§.§6#I§;
   import §8#a§.ShopMenu;
   import §<!W§.§=!6§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §^"y§.§[";§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§]$y§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetFriendsForMission;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3$f§ implements §[";§
   {
      
      private static var instance:§3$f§;
      
      private var §&#T§:Object = {};
      
      private var bosses:Object = {};
      
      public function §3$f§()
      {
         super();
      }
      
      public static function getInstance() : §3$f§
      {
         if(!instance)
         {
            instance = new §3$f§();
         }
         return instance;
      }
      
      public static function §+!7§() : Object
      {
         return §3$f§.getInstance().§&#T§;
      }
      
      public static function getBosses() : Object
      {
         return §3$f§.getInstance().bosses;
      }
      
      public static function §<$K§(param1:uint) : §5" §
      {
         return §3$f§.getInstance().bosses[param1];
      }
   }
}

