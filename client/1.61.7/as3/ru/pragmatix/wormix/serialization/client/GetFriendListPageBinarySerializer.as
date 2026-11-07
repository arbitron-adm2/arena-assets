package ru.pragmatix.wormix.serialization.client
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §!$d§.*;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§6!?§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GetFriendListPageBinarySerializer implements §&"a§
   {
      
      public function GetFriendListPageBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 18;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetFriendListPage = GetFriendListPage(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.pageIndex);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetFriendListPage = new GetFriendListPage();
         _loc3_.pageIndex = param1.readInt();
         return _loc3_;
      }
   }
}

