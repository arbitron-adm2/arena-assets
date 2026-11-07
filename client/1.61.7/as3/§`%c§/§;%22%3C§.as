package §`%c§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%#u§.*;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §&$Y§.§?&5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §-8§.§3!x§;
   import §0%z§.*;
   import §2#i§.§+%z§;
   import §4!x§.§@& §;
   import §4f§.§-&§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.client.SendWipeConfirmCode;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.SendWipeConfirmCodeResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;"<§ extends §?&5§
   {
      
      private var §%!O§:§8"6§;
      
      public function §;"<§()
      {
         super();
         realPriceBtn.§[!u§(this.§@$c§);
         realPriceBtn.setText(§0$N§.BUTTON_NEW_PROFILE);
         §+! §.color = label.textColor;
         price.§0f§(§0$N§.PRICE_OR_LABEL);
         price.§8&;§(§5&4§.WIPE);
         price.§'%s§("price.value").setTextFormat(§+! §);
         price.§'%s§("realPrice.value").setTextFormat(§+! §);
         price.§'%s§("orLabel").setTextFormat(§+! §);
         price.x = panel.width / 1.8;
         §-%V§.visible = false;
         §`o§.§@"n§(label,price.getContainer(),5);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         if(Application.instance.§#&7§())
         {
            new §8"6§().show();
            return;
         }
         super.show(param1);
      }
      
      public function §@$c§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         if(§4! §.§7"-§(Application.userProfile,§+$A§.REAL,§5&4§.WIPE))
         {
            _loc2_ = §8"%§.§[f§.isSettingAvailable(SocialApiSettings.§%!S§);
            _loc3_ = §0$N§.WIPE_PROFILE_QUESTION;
            if(!_loc2_)
            {
               _loc3_ += ". " + §0$N§.WIPE_PROFILE_ADD_QUESTION;
            }
            §4##§.show(§0$N§.WIPE_PROFILE_TITLE,_loc3_,§,#W§.§`$x§,this.§0"n§);
         }
         this.hide();
      }
      
      public function §0"n§() : void
      {
         var _loc1_:§,#W§ = null;
         if(Boolean(Application.userProfile.getSocialData()) && Application.userProfile.getSocialData().§@!0§())
         {
            §8"%§.§[f§.changeSettingsIfNeeded(SocialApiSettings.§%!S§,this.§<&=§,hide);
         }
         else
         {
            _loc1_ = §,#W§.§'!+§(§0$N§.TITLE_ATTENTION,§0$N§.WIPE_PROFILE_LINK_PAGE_PHONE_NUMBER,§,#W§.§6!m§,§1#"§);
            _loc1_.§##b§(§0$N§.WIPE_PROFILE_CHANGE_PHONE_NUMBER_BTN);
            _loc1_.show();
         }
      }
      
      protected function §<&=§() : void
      {
         §%%w§.§##$§(SendWipeConfirmCodeResponse,this.§-!_§);
         var _loc1_:SendWipeConfirmCode = new SendWipeConfirmCode();
         _loc1_.level = Application.userProfile.getLevel();
         _loc1_.experience = Application.userProfile.§[!s§();
         _loc1_.rating = Application.userProfile.getRating();
         §%%w§.§,U§(_loc1_);
         §&#F§(true);
      }
      
      protected function §-!_§(param1:§9$v§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§,#W§ = null;
         §&#F§(false);
         §%%w§.§-"j§(SendWipeConfirmCodeResponse,this.§-!_§);
         var _loc4_:int = SendWipeConfirmCodeResponse(param1.message).result;
         switch(_loc4_)
         {
            case SendWipeConfirmCodeResponse.OK:
               if(!this.§%!O§)
               {
                  this.§%!O§ = new §8"6§();
               }
               this.§%!O§.show();
               break;
            case SendWipeConfirmCodeResponse.DAILY_LIMIT_EXCEEDED:
               _loc2_ = §0$N§.WIPE_PROFILE_DAILY_LIMIT_EXCEEDED;
               _loc3_ = new §,#W§(§0$N§.TITLE_ATTENTION,_loc2_,§,#W§.§6!m§);
               break;
            case SendWipeConfirmCodeResponse.TODAY_ALREADY_WIPED:
               _loc2_ = §0$N§.WIPE_PROFILE_TODAY_ALREADY_WIPED;
               _loc3_ = new §,#W§(§0$N§.TITLE_ATTENTION,_loc2_,§,#W§.§6!m§);
               break;
            case SendWipeConfirmCodeResponse.WRONG_MOBILE_NUMBER:
               _loc2_ = §0$N§.WIPE_PROFILE_WRONG_MOBILE_NUMBER;
               _loc3_ = new §,#W§(§0$N§.TITLE_ERROR,_loc2_,§,#W§.§6!m§);
               break;
            case SendWipeConfirmCodeResponse.ERROR:
               _loc2_ = §0$N§.ERROR_SERVER;
               _loc3_ = new §,#W§(§0$N§.TITLE_ERROR,_loc2_,§,#W§.§6!m§);
               break;
            default:
               _loc2_ = §0$N§.ERROR_SAVING;
               _loc3_ = new §,#W§(§0$N§.TITLE_ERROR,_loc2_,§,#W§.§6!m§);
         }
         Application.§5!>§.§8$w§();
         if(_loc2_)
         {
            _loc3_.show();
         }
      }
   }
}

