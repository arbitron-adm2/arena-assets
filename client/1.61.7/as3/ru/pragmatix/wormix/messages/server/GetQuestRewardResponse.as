package ru.pragmatix.wormix.messages.server
{
   import § $q§.*;
   import § &5§.§%$O§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!K§.§&#Q§;
   import §#",§.*;
   import §##j§.§!%&§;
   import §##j§.§'"%§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.§"Z§;
   import §2o§.§]#@§;
   import §3#a§.§-#M§;
   import §4#`§.§]$c§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<"?§.§6"d§;
   import §<"?§.§@&#§;
   import §<%E§.§,$2§;
   import §<%c§.§]"C§;
   import §<%k§.§`!v§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §?$7§.§!§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§<!9§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import com.adobe.images.PNGEncoder;
   import flash.display.BitmapData;
   import flash.display.StageQuality;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   use namespace gestouch_internal;
   
   public class GetQuestRewardResponse
   {
      
      public var resultEnum:int;
      
      public var questId:int;
      
      public var rewardId:int;
      
      public var reward:Array;
      
      public var sessionKey:String;
      
      public var isSecure:Boolean;
      
      public function GetQuestRewardResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         return "GetQuestProgressResult { " + "result=" + this.resultEnum + ", reward=" + this.reward + ",questId=" + this.questId + ",rewardId=" + this.rewardId + ",isSecure=" + this.isSecure + " }";
      }
   }
}

