package §>">§
{
   import § !P§.*;
   import §!$d§.§<$c§;
   import §"%H§.§'%u§;
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §0%[§.*;
   import §0&F§.§0$_§;
   import §65§.§5#A§;
   import §8#<§.§!#^§;
   import §<!^§.§["l§;
   import §=&!§.§&$a§;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §@&+§ extends §<!p§
   {
      
      private var paramSetEx:§5$n§;
      
      public function §@&+§(param1:§+%]§, param2:int, param3:int, param4:§5$n§)
      {
         super(param1,param2,param3,param4);
         §1"-§.§;%k§(this,§;n§.§7q§,7,2);
      }
      
      public function setParamSetEx(param1:§5$n§) : void
      {
         this.paramSetEx = param1;
      }
      
      override public function explode() : void
      {
         var _loc2_:§["l§ = null;
         var _loc1_:int = -1;
         while(_loc1_ <= 1)
         {
            if(_loc1_ != 0)
            {
               _loc2_ = new §["l§(owner,x,y,-Math.PI / 2 + _loc1_ * Math.PI / 6,8,this.paramSetEx);
            }
            _loc1_++;
         }
         super.explode();
      }
   }
}

