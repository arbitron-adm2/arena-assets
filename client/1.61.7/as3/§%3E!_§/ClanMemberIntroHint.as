package §>!_§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#P§.§`o§;
   import §&#h§.§5f§;
   import §+$=§.§6#A§;
   import §0%[§.§""n§;
   import §0&F§.§!!c§;
   import §0&F§.SelectObjectEvent;
   import §1!J§.§"t§;
   import §2!-§.DamageEvent;
   import §2#W§.PvpChestBox;
   import §2>§.*;
   import §3#a§.§-#M§;
   import §4u§.§;$H§;
   import §6",§.§[%w§;
   import §8#o§.§1@§;
   import §;&2§.§!#W§;
   import §<!W§.§;#A§;
   import §@!N§.§2"e§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[%§.*;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class ClanMemberIntroHint extends §;$H§
   {
      
      private var §0%t§:int;
      
      public function ClanMemberIntroHint()
      {
         super(§6#A§.§!&6§(§+"'§.§1%D§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         panel = §'$a§("back");
         §'%s§("inviter").text = §0$N§.§%! §("INFO_INVITER");
         §'%s§("intro").text = §0$N§.§%! §("INFO_INTRO_DATE");
         var _loc2_:TextField = §'%s§("yesterday");
         _loc2_.text = §0$N§.§%! §("INFO_YESTERDAY_RATE");
         _loc2_.autoSize = TextFieldAutoSize.LEFT;
         var _loc3_:TextField = §'%s§("week");
         _loc3_.text = §0$N§.§%! §("INFO_WEEK_RATE");
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         this.§0%t§ = Math.max(_loc3_.width,_loc2_.width) + 80;
         panel.width = this.§0%t§ + 10;
      }
      
      override public function §&k§() : DisplayObject
      {
         return container;
      }
      
      public function initHint(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc6_:String = null;
         var _loc7_:DisplayObject = null;
         §'%s§("inviterText").text = param1;
         §'%s§("introText").text = param2;
         §'%s§("yesterdayValue").htmlText = "<b>" + (param3 != 0 ? (param3 > 0 ? "+ " : "- ") : "") + §2"e§.§5%t§(Math.abs(param3)) + "</b>";
         §'%s§("weekValue").htmlText = "<b>" + (param4 != 0 ? (param4 > 0 ? "+ " : "- ") : "") + §2"e§.§5%t§(Math.abs(param4)) + "</b>";
         var _loc5_:Array = ["inviterText","introText","yesterdayValue","weekValue"];
         for each(_loc6_ in _loc5_)
         {
            _loc7_ = getChildByName(_loc6_);
            _loc7_.x = this.§0%t§ - _loc7_.width;
         }
      }
   }
}

