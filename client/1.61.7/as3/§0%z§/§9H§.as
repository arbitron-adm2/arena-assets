package §0%z§
{
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §2#s§.*;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.model.user.§!>§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class §9H§ extends §,$@§
   {
      
      private var §-i§:§?$E§;
      
      public function §9H§(param1:§6$3§)
      {
         super(param1,0);
      }
      
      override protected function §5!h§(param1:§6$3§) : void
      {
         var _loc2_:DisplayObject = §'$a§("achievIcon");
         _removeChild(_loc2_);
         this.§-i§ = new §?$E§(param1,false);
         this.§-i§.x = _loc2_.x + _loc2_.getRect(_loc2_).x;
         this.§-i§.y = _loc2_.y + _loc2_.getRect(_loc2_).y;
         addChild(this.§-i§);
      }
      
      override protected function §9%C§(param1:§6$3§) : void
      {
         var _loc2_:Boolean = §'%u§(param1).isTotal;
         var _loc3_:String = param1.levels[0].name;
         §9#S§.text = _loc2_ ? _loc3_ : §0%§.format(§0$N§.ACHIEV_LEVELUP_TITLE,{"name":_loc3_});
         § %S§.text = param1.§]G§(0);
         if(_loc2_)
         {
            back[2].visible = true;
         }
      }
      
      override protected function §>!M§(param1:MouseEvent = null) : void
      {
         Social.§!g§.§3!S§(§-"O§,0,this.§-i§.getContainer() as MovieClip);
         §0!j§(param1);
      }
   }
}

