package §-@§
{
   import § !8§.§`!d§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§,#;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+$=§.§9"%§;
   import §+$=§.§;!d§;
   import §+5§.§^$[§;
   import §-8§.§3!x§;
   import §0!§.§8$Y§;
   import §0!Y§.§ !k§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §1&-§.§6"`§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §8!Y§.§`#Q§;
   import §9%k§.*;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   
   public class §7$S§ extends EventDispatcher
   {
      
      public static const §1$5§:uint = 5;
      
      public function §7$S§()
      {
         super();
      }
      
      public function §0#M§() : Array
      {
         var _loc2_:int = 0;
         var _loc1_:uint = uint(Application.userProfile.getLevel());
         if(_loc1_ <= §1$5§)
         {
            _loc2_ = §6&'§.getInstance().§^&§;
            if(_loc1_ == 1 && Application.userProfile.§[!s§() == 0 && _loc2_ == 0)
            {
               return [§6&'§.§-$7§[0],null,null];
            }
            if(_loc2_ == 0)
            {
               return [§6&'§.§-$7§[1]];
            }
            if(_loc2_ < 0 && _loc2_ > §6&'§.§-$7§[§6&'§.§-$7§.length - 1].getId())
            {
               return [§6&'§.§-$7§[Math.abs(_loc2_)]];
            }
         }
         return [];
      }
      
      public function §2!G§() : void
      {
         §6#A§.§0M§("learningMissionObjects",function():void
         {
            Application.loginfo("tutorial resource loaded");
            dispatchEvent(new Event(Event.COMPLETE,true));
            if(Application.userProfile.getLevel() == 1 && Application.userProfile.§[!s§() == 0 && §6&'§.getInstance().§^&§ == 0)
            {
               §,#W§.§[#r§(§0$N§.TITLE_WELCOME,§0$N§.ENTER_TUTORIAL_QUESTION,§,#W§.§`$x§,function():void
               {
                  §8"%§.§?!W§.§'!p§(§6&'§.§-$7§[0]);
               },function():void
               {
                  §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.TUTORIAL_AVAILABLES);
               });
            }
         },function(param1:§9"%§):void
         {
            Application.loginfo("tutorial resource load failed");
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,true));
         });
      }
   }
}

