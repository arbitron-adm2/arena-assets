package §+$&§
{
   import §"!C§.*;
   import §"$+§.§@C§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §&#h§.§-"F§;
   import §-@§.*;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §3#T§.Helicopter;
   import §4$b§.§6!G§;
   import §5!9§.§6$,§;
   import §7!n§.*;
   import §7$t§.§&!e§;
   import §<%E§.§,$2§;
   import §@!N§.§4"0§;
   import com.greensock.loading.*;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §@#t§ extends §1#g§
   {
      
      public function §@#t§(param1:DisplayObjectContainer = null)
      {
         param1.parent.removeChild(param1);
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         super.§@"o§(param1);
         var _loc2_:TextField = TextField(getChildByName("header"));
         _loc2_.text = §0$N§.CANT_CREATE_CLAN;
         var _loc3_:TextField = TextField(getChildByName("description"));
         _loc4_ = §0%§.format(§0$N§.§%! §(this.§"!e§() ? "CREATE_CLAN_LEVEL_REQ_GREEN" : "CREATE_CLAN_LEVEL_REQ_RED"),{"level":§@C§.§^#6§.toString()});
         _loc5_ = §0%§.format(§0$N§.§%! §(this.§[%O§() ? "CREATE_CLAN_RATING_REQ_GREEN" : "CREATE_CLAN_RATING_REQ_RED"),{"rating":§@C§.§6$"§.toString()});
         var _loc6_:String = §0%§.format(§0$N§.CANT_CREATE_CLAN_DESC,{
            "level":_loc4_,
            "rating":_loc5_
         });
         _loc3_.htmlText = _loc6_;
      }
      
      public function §"!e§() : Boolean
      {
         return Application.userProfile.getLevel() >= §@C§.§^#6§;
      }
      
      public function §[%O§() : Boolean
      {
         return Application.userProfile.getRating() >= §@C§.§6$"§;
      }
   }
}

