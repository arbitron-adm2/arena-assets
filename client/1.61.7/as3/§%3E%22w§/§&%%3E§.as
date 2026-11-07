package §>"w§
{
   import § m§.§9!^§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§,!<§;
   import §"%H§.§`"w§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+%S§.§ !!§;
   import §-G§.*;
   import §0"L§.§+# §;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#o§.§-#d§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §3#T§.§]!6§;
   import §3#a§.*;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §9"-§.§?!s§;
   import §;!Z§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=!p§.§!"9§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §="z§.§-O§;
   import §=7§.§?%4§;
   import §>!_§.§'#m§;
   import §@!N§.§""L§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §&%>§
   {
      
      protected var §'!t§:§#$L§;
      
      protected var §'"A§:§`#Z§;
      
      protected var §%#h§:§&%0§;
      
      protected var §5$V§:String;
      
      protected var log:§&`§ = new §&`§(§&%>§);
      
      protected var context:§%"'§;
      
      public function §&%>§(param1:§%"'§, param2:§1#+§, param3:String)
      {
         super();
         this.§5$V§ = param3;
         this.context = param1;
         this.§'!t§ = param2 as §#$L§;
         this.§'"A§ = param2 as §`#Z§;
         this.§%#h§ = param2 as §&%0§;
      }
      
      protected function notify(param1:§!"9§, param2:String, param3:Object = null, param4:String = null, param5:Function = null) : void
      {
         if(this.§%#h§)
         {
            this.§%#h§.notify(param1,§0%§.format(param2,param3),param5,this.§5$V§ + param4);
         }
      }
      
      protected function postActivity(param1:String, param2:Object = null, param3:String = null, param4:String = null) : void
      {
         if(this.§'!t§)
         {
            this.§'!t§.§-%r§(§0%§.format(param1,param2),this.§5$V§ + param3,param4);
         }
      }
      
      protected function §!#Z§(param1:String, param2:Object = null, param3:String = null, param4:Function = null) : void
      {
         if(this.§'"A§)
         {
            this.§<#e§(null,param1,param2,param3,param4);
         }
      }
      
      private function §<#e§(param1:String, param2:String, param3:Object = null, param4:String = null, param5:Function = null) : void
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Function = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:LoaderMax = null;
         if(this.§'"A§)
         {
            _loc6_ = this.context.§]!f§() + this.§5$V§ + param4;
            _loc7_ = this.context.§?"3§() + this.§5$V§ + param4;
            _loc8_ = §1%"§.§]$<§(this.§>%T§,this,[§0%§.format(param2,param3),param1,param4,param5]);
            _loc9_ = {
               "name":"mainLoad",
               "onProgress":this.§8%N§,
               "onComplete":_loc8_,
               "onError":this.errorHandler
            };
            _loc10_ = {
               "name":param4,
               "container":this,
               "alpha":0,
               "scaleMode":"proportionalInside",
               "alternateURL":_loc7_
            };
            _loc11_ = new LoaderMax(_loc9_);
            _loc11_.append(new ImageLoader(_loc6_,_loc10_));
            _loc11_.load();
         }
      }
      
      private function §>%T§(param1:String, param2:String, param3:String, param4:Function = null) : void
      {
         var _loc5_:DisplayObject = LoaderMax.getContent(param3).rawContent;
         this.§5"0§(param1,param2,_loc5_,param4);
         LoaderCore(LoaderMax.getLoader(param3)).dispose(true);
      }
      
      private function §8%N§(param1:LoaderEvent) : void
      {
      }
      
      private function errorHandler(param1:LoaderEvent) : void
      {
         this.log.error("error occured with " + param1.target + ": " + param1.text);
      }
      
      protected function §5"0§(param1:String, param2:String, param3:DisplayObject, param4:Function = null) : void
      {
         this.§'"A§.§^#U§(param1,param2,param3,param4);
      }
   }
}

