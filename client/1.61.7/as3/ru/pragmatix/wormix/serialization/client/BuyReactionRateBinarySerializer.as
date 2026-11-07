package ru.pragmatix.wormix.serialization.client
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&&6§.*;
   import §'"N§.§4&5§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §+&<§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-%B§.*;
   import §-&5§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §3#T§.Boomerang;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §]$v§.§<§;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§28§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.client.BuyReactionRate;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BuyReactionRateBinarySerializer implements §&"a§
   {
      
      public function BuyReactionRateBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 49;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyReactionRate = BuyReactionRate(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.reactionRateLevel);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuyReactionRate = new BuyReactionRate();
         _loc3_.reactionRateLevel = param1.readInt();
         return _loc3_;
      }
   }
}

