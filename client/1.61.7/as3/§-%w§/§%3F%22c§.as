package §-%w§
{
   import §!L§.§`#p§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §7$t§.§;#_§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §?$7§.§6%k§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§"!g§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanEmblemRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class §?"c§ extends §7!G§
   {
      
      private var itemIcon:§"!g§;
      
      public function §?"c§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override protected function init() : void
      {
         this.itemIcon = new §"!g§(container.getChildByName("itemIcon"));
         this.itemIcon.§1&!§(1);
      }
      
      public function update(param1:§;#_§) : void
      {
         §^&+§ = 8;
         this.§"%s§("nameLabel",param1.§7%z§());
         this.§"%s§("descrLabel",param1.§]G§());
         this.§"%s§("noteLabel",param1.§#6§());
         if(param1.§-$O§())
         {
            this.§"%s§("damageLabel",§0$N§.DAMAGE + ": " + param1.§-$O§());
         }
         else
         {
            this.§"%s§("damageLabel","");
         }
         if(param1.§]!C§() > 0)
         {
            this.§"%s§("maxShotsLabel",§0$N§.COUNT_LABEL + ": " + param1.§]!C§() + " " + §0$N§.QUANTITY_PER_BATTLE);
         }
         else
         {
            this.§"%s§("maxShotsLabel",§0$N§.COUNT_LABEL + ": " + §0$N§.QUANTITY_INFINITY);
         }
         this.itemIcon.§"e§(false);
         this.itemIcon.§[#"§(false);
         this.itemIcon.setItem(param1);
      }
      
      override protected function §"%s§(param1:String, param2:String) : void
      {
         container[param1].text = "";
         if(param2 != "")
         {
            container[param1].y = §^&+§;
            container[param1].autoSize = TextFieldAutoSize.LEFT;
            container[param1].multiline = true;
            container[param1].wordWrap = true;
            §&$9§.§>&F§(container[param1],§"-§.§+$m§,param2);
            §^&+§ += container[param1].height + 6;
         }
      }
   }
}

