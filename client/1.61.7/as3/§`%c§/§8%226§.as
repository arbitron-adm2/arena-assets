package §`%c§
{
   import §!L§.§+"'§;
   import §"% §.LevelUpDialog;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.§8"O§;
   import §+$=§.§6#A§;
   import §-%B§.§-"o§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §4!x§.§@& §;
   import §4$b§.§2m§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§;#L§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.OverwriteManager;
   import com.greensock.TweenLite;
   import com.greensock.plugins.AutoAlphaPlugin;
   import com.greensock.plugins.BevelFilterPlugin;
   import com.greensock.plugins.BezierPlugin;
   import com.greensock.plugins.BezierThroughPlugin;
   import com.greensock.plugins.BlurFilterPlugin;
   import com.greensock.plugins.ColorMatrixFilterPlugin;
   import com.greensock.plugins.ColorTransformPlugin;
   import com.greensock.plugins.DropShadowFilterPlugin;
   import com.greensock.plugins.EndArrayPlugin;
   import com.greensock.plugins.FrameLabelPlugin;
   import com.greensock.plugins.FramePlugin;
   import com.greensock.plugins.GlowFilterPlugin;
   import com.greensock.plugins.HexColorsPlugin;
   import com.greensock.plugins.RemoveTintPlugin;
   import com.greensock.plugins.RoundPropsPlugin;
   import com.greensock.plugins.ShortRotationPlugin;
   import com.greensock.plugins.TintPlugin;
   import com.greensock.plugins.TweenPlugin;
   import com.greensock.plugins.VisiblePlugin;
   import com.greensock.plugins.VolumePlugin;
   import config.achievements.§!$L§;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.client.WipeProfile;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   
   use namespace gestouch_internal;
   
   public class §8"6§ extends §@& §
   {
      
      private var example:TextField;
      
      protected var code:TextField;
      
      public function §8"6§()
      {
         super(§6#A§.§!&6§(§+"'§.§""q§));
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,§0$N§.WIPE_PROFILE_TITLE2);
         §<#§("enter_code.codeLabel",§0$N§.WIPE_PROFILE_CODE_LABEL,§"-§.§+$m§);
         this.example = §'%s§("enter_code.example");
         §&$9§.§>&F§(this.example,§"-§.§+$m§,§0$N§.WIPE_PROFILE_EXAMPLE_LABEL);
         this.code = §'%s§("enter_code.code");
         this.code.maxChars = 4;
         this.code.restrict = "0123456789";
         var _loc1_:String = Social.settings.§!"?§();
         §`"R§("msg",§0%§.format(§0$N§.WIPE_PROFILE_SMS_MSG,{"social_settings_link":_loc1_}));
         §>!-§.setText(§0$N§.BUTTON_SEND,§"-§.§+$m§);
         §!S§.setText(§0$N§.BUTTON_CANCEL,§"-§.§+$m§);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.code.stage.focus = this.code;
         this.code.setTextFormat(new TextFormat(null,null,null,true));
      }
      
      override protected function okAction() : void
      {
         var _loc1_:WipeProfile = null;
         var _loc2_:§,#W§ = null;
         super.okAction();
         if(this.code.text)
         {
            §%%w§.§##$§(WipeProfileResult,this.§=$e§);
            _loc1_ = new WipeProfile();
            _loc1_.confirmCode = this.code.text;
            §%%w§.§,U§(_loc1_);
            §&#F§(true);
         }
         else
         {
            _loc2_ = new §,#W§(§0$N§.TITLE_ATTENTION,§0$N§.WIPE_PROFILE_ENTER_SMS_CODE,§,#W§.§6!m§,this.§5"n§);
            _loc2_.show();
         }
      }
      
      private function §5"n§() : void
      {
         this.show();
      }
      
      private function §=$e§(param1:§9$v§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§,#W§ = null;
         §&#F§(false);
         §%%w§.§-"j§(WipeProfileResult,this.§=$e§);
         var _loc4_:int = WipeProfileResult(param1.message).result;
         switch(_loc4_)
         {
            case ShopResult.SUCCESS:
               §8"%§.§["$§.§6&H§();
               §8"%§.§7#,§.§9&!§();
               _loc2_ = §0$N§.WIPE_PROFILE_SUCCESS;
               _loc3_ = new §,#W§(§0$N§.TITLE_ATTENTION,_loc2_,§,#W§.§0!V§);
               break;
            case ShopResult.ERROR:
               _loc2_ = "WipeProfileResult(e.message).result == ShopResult.ERROR";
               _loc3_ = new §,#W§(§0$N§.TITLE_ERROR,_loc2_,§,#W§.§6!m§);
               break;
            case ShopResult.MIN_REQUIREMENTS_ERROR:
               _loc2_ = §0$N§.ERROR_HACKING_ATTEMPT;
               _loc3_ = new §,#W§(§0$N§.TITLE_ERROR,_loc2_,§,#W§.§6!m§);
               break;
            case ShopResult.NOT_ENOUGH_MONEY:
               _loc2_ = §0$N§.ERROR_NOT_ENOUGH_MONEY;
               _loc3_ = new §,#W§(§0$N§.TITLE_ATTENTION,_loc2_,§,#W§.§6!m§);
               break;
            case ShopResult.CONFIRM_FAILURE:
               _loc2_ = §0$N§.WIPE_PROFILE_ENTER_NOT_SMS_CODE;
               _loc3_ = new §,#W§(§0$N§.TITLE_ATTENTION,_loc2_,§,#W§.§6!m§);
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

