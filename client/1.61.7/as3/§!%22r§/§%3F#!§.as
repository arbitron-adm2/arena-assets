package §!"r§
{
   import § #9§.§"$t§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §&!m§.§;#[§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,#c§.ArenaMenu;
   import §-&5§.*;
   import §0!§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2#x§.*;
   import §3#T§.§?$q§;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §5"J§.*;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§&!P§;
   import §<!W§.§>&@§;
   import §<%k§.§`!v§;
   import §=7§.*;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §[%§.Rabbit;
   import §^"<§.§+%E§;
   import §^"<§.§?"h§;
   import §^"<§.§@%L§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.net.*;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §?#!§ extends §1#g§
   {
      
      private var clanNameLabel:TextField;
      
      private var descriptionLabel:TextField;
      
      private var editLabel:TextField;
      
      private var increaseCapacityLabel:TextField;
      
      private var capacityLabel:TextField;
      
      private var officerLabel:TextField;
      
      private var upgradeMaximum:TextField;
      
      public var clanName:TextField;
      
      public var description:TextField;
      
      private var capacity:TextField;
      
      private var capacityAdd:TextField;
      
      private var officer:TextField;
      
      private var officerAdd:TextField;
      
      public var backBtn:§?%>§;
      
      public var saveNameBtn:§?%>§;
      
      public var saveDescriptionBtn:§?%>§;
      
      public var editLogoBtn:§?%>§;
      
      public var editTermsBtn:§?%>§;
      
      public var upgradeBtn:§?%>§;
      
      public var closeExit:§6"%§;
      
      private var isLeader:Boolean;
      
      private var isOfficer:Boolean;
      
      private var §0&&§:Boolean;
      
      public function §?#!§(param1:DisplayObjectContainer = null)
      {
         param1.parent.removeChild(param1);
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:ClanTO = null;
         var _loc3_:int = 0;
         super.§@"o§(param1);
         this.clanNameLabel = §'%s§("clanNameLabel");
         this.descriptionLabel = §'%s§("descriptionLabel");
         this.editLabel = §'%s§("editLabel");
         this.increaseCapacityLabel = §'%s§("increaseCapacityLabel");
         this.capacityLabel = §'%s§("capacityLabel");
         this.officerLabel = §'%s§("officerLabel");
         this.upgradeMaximum = §'%s§("upgradeMaximum");
         §&$9§.§>&F§(this.clanNameLabel,§"-§.§+$m§,§0$N§.CLAN_NAME);
         §&$9§.§>&F§(this.descriptionLabel,§"-§.§+$m§,§0$N§.CLAN_DESCRIPTION);
         §&$9§.§>&F§(this.editLabel,§"-§.§+$m§,§0$N§.SETTING_LABEL);
         §&$9§.§>&F§(this.increaseCapacityLabel,§"-§.§+$m§,"");
         §&$9§.§>&F§(this.capacityLabel,§"-§.§+$m§,§0$N§.CLAN_CAPACITY_LABEL);
         §&$9§.§>&F§(this.officerLabel,§"-§.§+$m§,§0$N§.OFFICERS_POSITIONS);
         §&$9§.§>&F§(this.upgradeMaximum,§"-§.§+$m§,§0$N§.MAX_CAPACITY_TITLE);
         this.clanName = §'%s§("clanName");
         this.clanName.restrict = §@C§.§'%Z§();
         this.clanName.maxChars = §@C§.§+#d§;
         this.clanName.text = "";
         this.description = §'%s§("description");
         this.description.text = "";
         this.description.maxChars = §@C§.§-!g§;
         this.capacity = §'%s§("capacity");
         this.capacityAdd = §'%s§("capacityAdd");
         this.officer = §'%s§("officer");
         this.officerAdd = §'%s§("officerAdd");
         this.backBtn = §!&5§.§7#[§(getChildByName("backBtn"));
         this.saveNameBtn = §!&5§.§7#[§(getChildByName("saveNameBtn"));
         this.saveDescriptionBtn = §!&5§.§7#[§(getChildByName("saveDescriptionBtn"));
         this.editLogoBtn = §!&5§.§7#[§(getChildByName("editLogoBtn"));
         this.editTermsBtn = §!&5§.§7#[§(getChildByName("editTermsBtn"));
         this.upgradeBtn = §!&5§.§7#[§(getChildByName("upgradeBtn"));
         this.saveDescriptionBtn.setText(§0$N§.CHANGE_BTN,§"-§.§+$m§);
         this.saveNameBtn.setText(§0$N§.CHANGE_BTN,§"-§.§+$m§);
         this.editLogoBtn.setText(§0$N§.CLAN_EMBLEM,§"-§.§+$m§);
         this.editTermsBtn.setText(§0$N§.TERMS_OF_JOINT,§"-§.§+$m§);
         _loc2_ = §]#i§.§=#7§(Application.userProfile);
         _loc3_ = _loc2_.level + 1;
         var _loc4_:§ G§ = § G§.getLevel(_loc3_);
         if(§ G§.getLevel(_loc2_.level + 1))
         {
            this.upgradeBtn.setText(§0$N§.UPGRADE_FOR_BTN,§"-§.§+$m§);
            this.upgradeBtn.setText(String(_loc4_.priceInfo.getValue()),§"-§.§6"j§,"price");
            §4"0§.§;#f§(this.upgradeBtn);
         }
         this.saveNameBtn.§[!u§(this.§4"r§);
         this.saveDescriptionBtn.§[!u§(this.§;%_§);
         this.upgradeBtn.§[!u§(this.§'#I§);
         this.closeExit = new §6"%§(getChildByName("closeExit") as SimpleButton);
         this.closeExit.setText(§0$N§.CLAN_CLOSE_EXIT,§"-§.§+$m§);
         this.§0&&§ = _loc2_.isExitClosed;
         this.closeExit.setPressed(this.§0&&§);
         this.closeExit.setDisabled(true);
         this.closeExit.§[!u§(this.§?#p§);
      }
      
      private function §?#p§(param1:Event) : void
      {
         this.closeExit.setDisabled(true);
         §8"%§.§!&I§.edit.§=!M§(!this.§0&&§,this.update);
      }
      
      override public function activate() : void
      {
         var _loc1_:ClanTO = null;
         var _loc3_:int = 0;
         var _loc5_:UserProfile = null;
         super.activate();
         _loc1_ = §]#i§.§=#7§(Application.userProfile);
         this.clanName.text = _loc1_.name;
         this.description.text = _loc1_.clanDescription;
         this.§0&&§ = _loc1_.isExitClosed;
         var _loc2_:§ G§ = § G§.getLevel(_loc1_.level);
         _loc3_ = §]#i§.userClan.level + 1;
         var _loc4_:§ G§ = § G§.getLevel(_loc3_);
         §&$9§.§>&F§(this.capacity,§"-§.§6"j§,String(_loc2_.capacity));
         §&$9§.§>&F§(this.officer,§"-§.§6"j§,String(_loc2_.officers));
         if(_loc4_)
         {
            this.upgradeBtn.setText(String(_loc4_.priceInfo.getValue()),§"-§.§6"j§,"price");
            §4"0§.§;#f§(this.upgradeBtn);
            §&$9§.§>&F§(this.capacityAdd,§"-§.§6"j§,"+" + String(_loc4_.capacity - _loc2_.capacity));
            §&$9§.§>&F§(this.officerAdd,§"-§.§6"j§,"+" + String(_loc4_.officers - _loc2_.officers));
            this.capacityAdd.visible = true;
            this.officerAdd.visible = true;
            this.upgradeMaximum.visible = false;
            this.upgradeBtn.setVisible(true);
         }
         else
         {
            this.capacityAdd.visible = false;
            this.officerAdd.visible = false;
            this.upgradeMaximum.visible = true;
            this.upgradeBtn.setVisible(false);
         }
         _loc5_ = Application.userProfile;
         var _loc6_:Boolean = _loc5_.§!#E§() && _loc5_.clanMember.clanId == _loc1_.id;
         this.isLeader = _loc6_ && _loc5_.clanMember.rank == §`&$§.§+#8§;
         this.isOfficer = _loc6_ && _loc5_.clanMember.rank == §`&$§.OFFICER;
         this.clanName.type = this.isLeader ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
         this.description.type = this.isLeader ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
         this.saveNameBtn.setDisabled(!this.isLeader);
         this.saveDescriptionBtn.setDisabled(!this.isLeader);
         this.editLogoBtn.setDisabled(!this.isLeader);
         this.editTermsBtn.setDisabled(!this.isLeader);
         this.upgradeBtn.setDisabled(!this.isLeader && !this.isOfficer);
         this.closeExit.setPressed(this.§0&&§);
         this.closeExit.setDisabled(!this.isLeader);
      }
      
      private function update() : void
      {
         this.activate();
      }
      
      private function §4"r§(param1:MouseEvent) : void
      {
         var dialog:§@%L§ = null;
         var priceInfo:§`"q§ = null;
         var event:MouseEvent = param1;
         if(§=%_§.§7$u§(this.clanName.text))
         {
            if(this.clanName.text == §]#i§.userClan.name)
            {
               §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0$N§.CHANGE_CLAN_NAME_FAILED,§,#W§.§6!m§).show();
            }
            else if(this.isLeader)
            {
               dialog = new §@%L§(§@C§.§+#?§.price,this.update,§0$N§.CLAN_OP_TITLE_RENAME);
               dialog.§[#K§(this.clanName.text);
               dialog.show();
            }
            else
            {
               priceInfo = §@C§.§+#?§;
               priceInfo.§&#q§ = false;
               §8"%§.§!&I§.edit.§8#S§(this.clanName.text,priceInfo,function():void
               {
                  update();
               });
            }
         }
      }
      
      private function §;%_§(param1:MouseEvent) : void
      {
         var dialog:§+%E§ = null;
         var priceInfo:§`"q§ = null;
         var event:MouseEvent = param1;
         if(this.description.text == §]#i§.userClan.clanDescription)
         {
            §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0$N§.CHANGE_CLAN_DESCRIPTION_FAILED,§,#W§.§6!m§).show();
         }
         else if(this.isLeader)
         {
            dialog = new §+%E§(§@C§.§<$R§.price,this.update,§0$N§.CLAN_OP_TITLE_CHANGE_DESCRIPTION);
            dialog.§,!r§(this.description.text);
            dialog.show();
         }
         else
         {
            priceInfo = §@C§.§<$R§;
            priceInfo.§&#q§ = false;
            §8"%§.§!&I§.edit.§2%f§(this.description.text,priceInfo,function():void
            {
               update();
            });
         }
      }
      
      private function §'#I§(param1:MouseEvent) : void
      {
         var nextLevelVal:int = 0;
         var dialog:§?"h§ = null;
         var priceInfo:§`"q§ = null;
         var event:MouseEvent = param1;
         nextLevelVal = §]#i§.userClan.level + 1;
         var nextLevel:§ G§ = § G§.getLevel(nextLevelVal);
         if(nextLevel)
         {
            if(this.isLeader)
            {
               dialog = new §?"h§(nextLevel.priceInfo.price,this.update,§0$N§.CLAN_OP_TITLE_EXPAND_CAPACITY);
               dialog.show();
            }
            else
            {
               priceInfo = nextLevel.priceInfo;
               priceInfo.§&#q§ = false;
               §8"%§.§!&I§.edit.§;#U§(nextLevelVal,priceInfo,function():void
               {
                  update();
               });
            }
         }
      }
   }
}

