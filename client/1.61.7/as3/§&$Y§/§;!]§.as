package §&$Y§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §0&F§.§0%v§;
   import §02§.§<!v§;
   import §2"L§.§^$y§;
   import §2#H§.§?#S§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §5$]§.§3& §;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §9"-§.§?!s§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.*;
   import §@!W§.§8!S§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §;!]§ extends §@& §
   {
      
      protected var price:§8!S§;
      
      protected var realPriceBtn:§?%>§;
      
      protected var msg:TextField;
      
      protected var label:TextField;
      
      protected var §+! §:TextFormat = new TextFormat();
      
      public function §;!]§()
      {
         super(§6#A§.§!&6§(§+"'§.§-`§));
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,§0$N§.TITLE_ATTENTION);
         this.msg = §'%s§("msg");
         this.msg.autoSize = TextFieldAutoSize.CENTER;
         §&$9§.§>&F§(this.msg,§"-§.§+$m§,§0$N§.TRANSFER_PROFILE_MSG);
         this.realPriceBtn = §!&5§.§7#[§(getChildByName("buyRealBtn"));
         this.realPriceBtn.setText(§0$N§.BUTTON_NEW_PROFILE,§"-§.§+$m§);
         §!S§.setText(§0$N§.BUTTON_CANCEL,§"-§.§+$m§);
      }
      
      protected function §1#"§() : void
      {
         var _loc1_:URLRequest = new URLRequest(Social.settings.§!"?§());
         navigateToURL(_loc1_,"_blank");
         hide();
      }
      
      override protected function §%&9§() : void
      {
         §<"b§ = false;
         super.§%&9§();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.realPriceBtn.destroy();
      }
   }
}

