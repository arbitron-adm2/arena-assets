package §>$q§
{
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §4!K§.*;
   import §4#2§.§,%g§;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §<"L§.*;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §?#g§.§-!k§;
   import §@!i§.§<#&§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[$P§.§8%R§;
   import §[%§.*;
   import §]$v§.§]%_§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.*;
   import config.§`!a§;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9$U§ extends §-#8§
   {
      
      private static const §?#?§:Vector.<String> = new <String>["ThievesBoxBlue","ThievesBoxRed","ThievesBoxBlack","ThievesBoxSilver"];
      
      private var item:BackpackItem;
      
      private var type:uint;
      
      private var §0!u§:Function;
      
      public function §9$U§(param1:Point, param2:BackpackItem, param3:uint)
      {
         super(param1.x,param1.y,§?#?§[param3],§0$N§.§%! §("BOSS_THIEF_BOX"));
         this.item = param2;
         this.type = param3;
         var _loc4_:MovieClip = §6#A§.§!&6§(param2.getRecord().getMenuIcon());
         var _loc5_:MovieClip = clip["bubble"]["icon"];
         §`o§.§7!S§(_loc4_,_loc5_.width,_loc5_.height);
         _loc5_.addChild(_loc4_);
         clip.scaleX = clip.scaleY = 0.5;
         §-b§(0,-18);
      }
      
      public function §4%$§(param1:Function) : void
      {
         this.§0!u§ = param1;
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§0#0§ = §<#`§.NONE;
      }
      
      override protected function §-%+§(param1:§+%]§) : Boolean
      {
         return (this.§0!u§ == null || Boolean(this.§0!u§(this,param1))) && param1.squad.getTeamId() != §>!^§.§?$s§;
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         super.§0$j§(param1);
         param1.squad.§&!G§().getBattleBackpack().§0%8§(this.item.getRecord(),this.item.getCount(),this.item.§]!C§());
         §1"-§.§3#=§(this.item.getRecord().getMenuIcon(),x,y,40);
         this.§0!u§ = null;
      }
      
      public function getType() : uint
      {
         return this.type;
      }
   }
}

