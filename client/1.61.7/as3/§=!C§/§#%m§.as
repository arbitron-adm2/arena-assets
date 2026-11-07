package §=!C§
{
   import § &5§.§0&$§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §-"Q§.§2!@§;
   import §-%B§.*;
   import §-@§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#V§.§-#U§;
   import §2#V§.§=$A§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%u§.§4"h§;
   import §<%E§.§,$2§;
   import §<K§.RatingTabAllTime;
   import §=!p§.§7#E§;
   import §=&!§.§]$d§;
   import §?$K§.§!"t§;
   import §?$K§.§##§;
   import §?$K§.§3#j§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!i§.*;
   import §@<§.§+%]§;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §#%m§
   {
      
      private var chat:§2!@§;
      
      public function §#%m§(param1:§2!@§)
      {
         super();
         this.chat = param1;
         var _loc2_:IEventDispatcher = §8"%§.§!&I§.getEventDispatcher();
         _loc2_.addEventListener(§-#U§.§+6§,this.§5"Z§);
         _loc2_.addEventListener(§-#U§.§-R§,this.§[$e§);
         _loc2_.addEventListener(§-#U§.§?!y§,this.§[$e§);
         _loc2_.addEventListener(§-#U§.§4%m§,this.§,%7§);
         _loc2_.addEventListener(§-#U§.§]#H§,this.§[$e§);
      }
      
      private function §,%7§(param1:Event) : void
      {
         this.chat.§-7§.§"&0§();
         this.chat.§-7§.§2#d§();
      }
      
      private function §5"Z§(param1:§=$A§) : void
      {
         var _loc2_:ClanChatMessageTO = param1.message;
         this.chat.§-7§.§"&0§();
      }
      
      private function §[$e§(param1:Event) : void
      {
         this.chat.§-7§.§2#d§();
      }
   }
}

