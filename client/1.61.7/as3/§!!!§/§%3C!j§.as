package §!!!§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §&&6§.*;
   import §'!Z§.§2!%§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.§-!6§;
   import §2!-§.DamageEvent;
   import §2#H§.§!%C§;
   import §2#H§.§"j§;
   import §2#H§.§<§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §8$V§.§]!i§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §?$K§.§`""§;
   import §?>§.§]!V§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@"s§.§#&3§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenMax;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §<!j§ extends §%$5§
   {
      
      public function §<!j§()
      {
         super();
      }
      
      override public function open(param1:§`!d§) : void
      {
         super.open(param1);
         §#7§(§0$N§.RACE_SELECT_BUY_MESSAGE);
         §8&;§(§5&4§.§#!@§);
         var _loc2_:TextField = §'%s§("message");
         var _loc3_:MovieClip = §'$a§("backPanel");
         _loc2_.width = _loc3_.width;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         §3#1§("message",§0$N§.FREE_RACE_LEFT_MESSAGE + " " + §]!i§.§6$§);
         §`o§.§^#c§(_loc2_,_loc3_);
      }
   }
}

