package §'%[§
{
   import §!$D§.§2$^§;
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2!-§.NewUnitEvent;
   import §2#x§.§0"`§;
   import §2#x§.§]s§;
   import §3"@§.§##L§;
   import §3#T§.§;#Q§;
   import §4'§.§#"l§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.*;
   import §8$V§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=$#§.§ b§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §^!]§.MineSetUpEvent;
   import config.achievements.*;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.text.TextFieldType;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class §#"K§ extends §="e§
   {
      
      public function §#"K§(param1:§]s§)
      {
         super(param1);
      }
      
      public function saveProfilePhoto(param1:BitmapData, param2:Function = null) : void
      {
         super.savePhoto(param1,param2);
      }
      
      override protected function getUploadServer() : void
      {
         §[f§.§!$i§(§4!P§);
      }
      
      override protected function uploadPhoto() : void
      {
         §[f§.saveProfilePhoto(photo,uploadServer,this.§9"R§);
      }
      
      override protected function §9"R§(param1:§,$2§) : void
      {
         if(callback != null)
         {
            if(Boolean(param1.errorCode) && param1.errorCode.code == §0"`§.§8#6§)
            {
               param1.errorCode = null;
               param1.success = true;
            }
            callback(param1);
         }
      }
   }
}

