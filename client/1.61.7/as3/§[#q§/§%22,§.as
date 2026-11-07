package §[#q§
{
   import § !P§.§<#q§;
   import § "L§.*;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"!P§.§]%n§;
   import §"$+§.§@C§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§[N§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §%Q§.§<&A§;
   import §&"R§.*;
   import §&#h§.§,#;§;
   import §&#h§.§-"F§;
   import §&$Y§.§6[§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§9"u§;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#0§.§;4§;
   import §1#p§.§"Z§;
   import §2"L§.§##l§;
   import §2#x§.§[#Z§;
   import §2#x§.§]s§;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4!K§.*;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §;#O§.§+%7§;
   import §<!W§.§?#L§;
   import §<"?§.§3>§;
   import §<"?§.§6$c§;
   import §<"?§.§7!@§;
   import §<"?§.§@&#§;
   import §<$2§.§##<§;
   import §<$q§.§6%b§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §="z§.§9%1§;
   import §=$#§.*;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?$L§.§ "N§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§&#Z§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@"x§.*;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import §^4§.§]"8§;
   import §^4§.§^"Y§;
   import §`$T§.§[!S§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import com.greensock.loading.core.*;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.extensions.native.*;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.§##Z§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §",§ extends §##Z§
   {
      
      private var controller:§]s§;
      
      public function §",§(param1:§%"'§, param2:§]s§)
      {
         var context:§%"'§ = param1;
         var controller:§]s§ = param2;
         super(context,§8"%§.§[f§,new §]%n§());
         this.controller = controller;
         §#$K§(controller).addEventListener(§#$K§.EVENT_POST_SUCCESS,function(param1:Event):void
         {
            log.info("event " + (param1 ? param1 : "-"),"VK");
            §8"%§.§@1§.increase([§!$L§.§5$'§],[1]);
         });
      }
      
      override protected function §!#Z§(param1:String, param2:Object = null, param3:String = null, param4:Function = null) : void
      {
         var msg:String = param1;
         var params:Object = param2;
         var icon:String = param3;
         var callback:Function = param4;
         §8"%§.§^%W§.§[#l§();
         super.§!#Z§(msg,params,icon,function(param1:§,$2§):void
         {
            log.info("postOnWall callback " + param1 + (param1 ? " " + param1.§""h§ + " " + param1.success : "-"),§[#Z§.NAME);
         });
      }
      
      override protected function postActivity(param1:String, param2:Object = null, param3:String = null, param4:String = null) : void
      {
         var msg:String = param1;
         var params:Object = param2;
         var icon:String = param3;
         var link:String = param4;
         if(§'!t§)
         {
            §8"%§.§^%W§.§[#l§();
            §'!t§.§-%r§(§0%§.format(msg,params),§5$V§ + icon,link,null,function(param1:§,$2§):void
            {
               log.info("postActivity callback " + param1 + (param1 ? " " + param1.§""h§ + " " + param1.success : "-"),§[#Z§.NAME);
            });
         }
      }
      
      override protected function §"#i§(param1:String, param2:§;#_§) : void
      {
      }
      
      override protected function §="s§() : void
      {
         §,&-§(§0$O§.missionComplete,§0%b§.§8"U§,§0$O§.missionComplete,§6#A§.§!&6§(§+"'§.§1$z§),null,this.§1&2§,null);
      }
      
      protected function §1&2§() : void
      {
         var _loc1_:MovieClip = null;
         _loc1_ = §6#A§.§!&6§(§+"'§.§1$z§);
         var _loc2_:BitmapData = §##l§.§<%`§(_loc1_,_loc1_.width,_loc1_.height);
         log.info(" uploadMissionVictoryPicture " + _loc1_ + " " + _loc2_);
         var _loc3_:§6&-§ = new §6&-§(this.controller,this.§@q§);
         _loc3_.savePhoto(_loc2_,_loc3_.§3#I§(),_loc3_.§%&>§);
      }
      
      protected function §@q§(param1:Boolean = false, param2:§,$2§ = null) : void
      {
         log.info(" postMissionVictoryPicture: doPostBigPicture=" + param1 + " response=" + param2);
      }
      
      override public function §+"p§(param1:§8%6§, param2:§8%6§, param3:§<$Z§, param4:UserProfile = null) : void
      {
         var _loc6_:String = null;
         var _loc5_:DisplayObject = §&#Z§.§4#6§(new <int>[param1.getId(),param2.getId()]);
         if(param3.equals(§<$Z§.§+%I§))
         {
            _loc6_ = param4 ? §0$O§.§-$V§ : §0$O§.§<§;
         }
         else
         {
            _loc6_ = param4 ? §0%b§.§5"-§ : §0%b§.§#"M§;
         }
         var _loc7_:String = §4! §.§<&-§(Application.userProfile);
         var _loc8_:String = param4 ? §4! §.§<&-§(param4) : "";
         var _loc9_:Object = {
            "userName":_loc7_,
            "friendName":_loc8_,
            "bossName":param2.§7%z§(),
            "bossName2":param1.§7%z§()
         };
         §8"%§.§^%W§.§[#l§();
         if(§'"A§)
         {
            §'"A§.§^#U§(§0%§.format(_loc6_,_loc9_),§0$N§.GAME_NAME,_loc5_);
         }
      }
      
      override public function §1'§() : void
      {
         §%$V§(§0%§.format(§0%b§.§!$T§,§3#y§()),§0%b§.§8"U§,§0%b§.§>!>§,§3#y§(),§0!H§());
      }
      
      override public function §`"e§() : void
      {
         §%$V§(§0%§.format(§0%b§.§>z§,§3#y§()),§0%b§.§8"U§,§0%b§.createClan,§3#y§(),§0!H§());
      }
      
      override public function §`#`§() : void
      {
         §%$V§(§0%§.format(§0%b§.§-#<§,§3#y§()),§0%b§.§8"U§,§0%b§.§#$S§,§3#y§(),§0!H§());
      }
      
      override public function §,t§() : void
      {
         §%$V§(§0%§.format(§0%b§.§,=§,§3#y§()),§0%b§.§8"U§,§0%b§.§#&§,§3#y§(),§0!H§());
      }
   }
}

