package §&#E§
{
   import § "L§.§1%b§;
   import §!L§.§+"'§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §+$=§.§6#A§;
   import §4!x§.§@& §;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §<%J§.RopeRaceGiftMenu;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class MsgBoxSocialSelect extends §@& §
   {
      
      public function MsgBoxSocialSelect()
      {
         super(§6#A§.§!&6§(§+"'§.§&P§));
      }
      
      public static function show() : void
      {
         if(Boolean(Application.userProfile.clanMember) && Application.userProfile.clanMember.rank == §`&$§.§+#8§)
         {
            §,#W§.§6!P§(§0$N§.TITLE_ATTENTION,§0$N§.TRANSFER_PROFILE_LEADER,§,#W§.§6!m§);
         }
         else
         {
            new MsgBoxSocialSelect().show();
         }
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var container:DisplayObject = param1;
         super.§@"o§(container);
         §7&5§.§>&<§(§'%s§("title"),§0$N§.TRANSFER_PROFILE_TITLE);
         §7&5§.§>&<§(§'%s§("msg"),§0$N§.TRANSFER_PROFILE_SOCIAL_SELECT);
         §4"0§.§>&F§(§>!-§.simpleButton,§"-§.§+$m§,§0"-§.BUTTON_CANCEL);
         this.§7#[§(getChildByName("btnVk"),§0$N§.TRANSFER_FROM_VK,function():void
         {
            okAction();
            navigateToURL(new URLRequest("http://vk.ru/app1744756?ad_id=trans"),"_blank");
         });
         this.§7#[§(getChildByName("btnOk"),§0$N§.TRANSFER_FROM_OK,function():void
         {
            okAction();
            navigateToURL(new URLRequest("https://ok.ru/game/wormix?ad_id=trans"),"_blank");
         });
         this.§7#[§(getChildByName("btnMm"),§0$N§.TRANSFER_FROM_MM,function():void
         {
            okAction();
            navigateToURL(new URLRequest("https://my.mail.ru/apps/731265?ad_id=trans"),"_blank");
         });
      }
      
      private function §7#[§(param1:DisplayObject, param2:String, param3:Function) : void
      {
         var _loc4_:§?%>§ = §!&5§.§7#[§(param1);
         _loc4_.setText(param2);
         _loc4_.§[!u§(param3);
      }
   }
}

