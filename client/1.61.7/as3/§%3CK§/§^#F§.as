package §<K§
{
   import § #m§.§;#^§;
   import § %f§.Puppet;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+u§.§'n§;
   import §0%[§.§0%§;
   import §1A§.*;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §;!J§.§8!a§;
   import §<!W§.§#&#§;
   import §<!W§.§>&@§;
   import §<$2§.§+$9§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?"[§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$P§.§[!0§;
   import §]$v§.*;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.§`!a§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^#F§ extends §0&'§
   {
      
      protected var §+"G§:uint = 10;
      
      protected var scrollPane:§>S§;
      
      protected var loader:§7%0§;
      
      protected var §%d§:§`&-§;
      
      protected var §<$k§:int = 0;
      
      protected var §3$Q§:Boolean;
      
      protected var divider:MovieClip;
      
      protected var §<"S§:Boolean;
      
      protected var §<#s§:int;
      
      public function §^#F§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.scrollPane.§]%E§();
      }
      
      override public function deactivate() : void
      {
         this.scrollPane.§@%i§();
         super.deactivate();
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         if(Boolean(loading) && Boolean(loading.text))
         {
            §&$9§.§>&F§(loading.text,§"-§.§+$m§,§0"-§.LOADING);
         }
      }
      
      protected function §2%d§(param1:GetRatingResult) : GetRatingResult
      {
         var _loc4_:RatingProfileStructure = null;
         var _loc2_:int = 0;
         var _loc3_:int = int(param1.userProfileStructures.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1.userProfileStructures[_loc2_];
            if(_loc4_.dailyRating <= 0)
            {
               param1.userProfileStructures = param1.userProfileStructures.slice(0,_loc2_);
               break;
            }
            _loc2_++;
         }
         return param1;
      }
      
      protected function §^$x§(param1:§+$9§) : void
      {
         var _loc4_:§0$L§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = int(cells.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = §0$L§(cells[_loc2_]);
            if(UserProfile(_loc4_.getItem()).getId() == Application.userProfile.getId())
            {
               param1.setIndexNumber(_loc2_);
               return;
            }
            _loc2_++;
         }
         if(Application.userProfile.§=$E§() == 0)
         {
            param1.setIndexNumber(-1);
         }
         else
         {
            param1.setIndexNumber(Application.userProfile.§=$E§());
         }
      }
      
      protected function setProfiles(param1:Array) : void
      {
         this.scrollPane.setDisabled(cells.length <= this.§+"G§);
      }
      
      protected function §?%c§() : void
      {
      }
      
      protected function §'&9§(param1:int) : void
      {
         var _loc2_:TextField = null;
         var _loc3_:TextField = null;
         var _loc4_:DisplayObject = null;
         this.divider = §6#A§.§!&6§(§+"'§.§0#-§);
         _loc2_ = this.divider.getChildByName("text") as TextField;
         _loc3_ = this.divider.getChildByName("count") as TextField;
         _loc4_ = this.divider.getChildByName("ratingIcon");
         var _loc5_:DisplayObject = this.divider.getChildByName("dividerBack");
         _loc2_.autoSize = TextFieldAutoSize.LEFT;
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         §7&5§.§>&<§(_loc2_,§0$N§.§%! §("MIN_RATING"));
         §7&5§.§?$k§(_loc3_,§2"e§.§5%t§(param1));
         var _loc6_:int = _loc2_.width + _loc3_.width + _loc4_.width;
         _loc2_.x = (_loc5_.width - _loc6_) * 0.5 - 5;
         §`o§.§4%4§(_loc3_,_loc2_,5);
         §`o§.§4%4§(_loc4_,_loc3_,5);
      }
   }
}

