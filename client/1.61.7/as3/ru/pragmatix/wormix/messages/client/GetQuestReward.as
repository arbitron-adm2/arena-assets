package ru.pragmatix.wormix.messages.client
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § &5§.§@N§;
   import §!$D§.§2$^§;
   import §+$=§.§1§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §3"_§.§?#w§;
   import §4'§.§4$&§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<!W§.*;
   import §="z§.§9%1§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.plugins.*;
   import config.§;"I§;
   import config.§`!a§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class GetQuestReward
   {
      
      public var questId:int;
      
      public var rewardId:int;
      
      public function GetQuestReward(param1:uint = 0, param2:uint = 0)
      {
         super();
         this.questId = param1;
         this.rewardId = param2;
      }
      
      public function toString() : String
      {
         return "GetQuestReward { " + "questId=" + this.questId + ", reward=" + this.rewardId + " }";
      }
   }
}

