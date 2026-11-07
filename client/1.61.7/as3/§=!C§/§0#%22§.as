package §=!C§
{
   import § !8§.§`!d§;
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§,!<§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&!?§.§"_§;
   import §&#h§.§-"F§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.§^$[§;
   import §,"v§.§9%d§;
   import §-G§.*;
   import §0!§.§8$Y§;
   import §0"L§.*;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §1&-§.§'$y§;
   import §1&-§.§6"`§;
   import §3#a§.§[&A§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §<%E§.§,$2§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §="z§.§9%1§;
   import §=#y§.*;
   import §>!_§.§'#m§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §`#x§.§"$r§;
   import api.com.odnoklassniki.net.*;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.data.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§5"a§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §0#"§ extends §74§
   {
      
      private var text:String;
      
      public function §0#"§(param1:ChatMessage)
      {
         this._msg = param1;
         this.text = §8$H§() + " " + §5"a§.§!%a§(_msg);
         super(§6#A§.§!&6§(§+"'§.§1"8§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         super.§@"o§(param1);
         textField = getChildByName("text") as TextField;
         textField.htmlText = this.text;
         textField.height = textField.textHeight + 10;
         if(this.§+"N§())
         {
            _loc2_ = §6#A§.§!&6§(§+"'§.§#!R§);
            _loc3_ = §6#A§.§!&6§(§+"'§.§7%T§);
            _loc2_.x = -5;
            _loc2_.y = -3;
            _loc2_.width = _loc3_.width;
            _loc2_.height = textField.height;
            §?!C§(_loc2_);
            §#!`§().setChildIndex(_loc2_,0);
         }
      }
      
      public function §+"N§() : Boolean
      {
         return _msg.action == ChatMessage.ADMIN_PINNED;
      }
      
      public function isEmpty() : Boolean
      {
         return this.text == null || this.text.length == 0;
      }
      
      public function clone() : §0#"§
      {
         return new §0#"§(_msg.clone());
      }
   }
}

