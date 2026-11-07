package §&!@§
{
   import § $q§.*;
   import §!$D§.§2$^§;
   import §!$Z§.§6=§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-"N§.§+#R§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2#x§.*;
   import §3"_§.*;
   import §4'§.§^"p§;
   import §5!,§.§?!P§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §5%S§.§>&-§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §9![§.§^§;
   import §<"?§.§6"d§;
   import §<%E§.§,$2§;
   import §<%c§.§-! §;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§6a§;
   import §=#g§.*;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §>"l§.§?$O§;
   import §?#g§.§-!k§;
   import §?$7§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§;%v§;
   import §@"x§.*;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §5"`§ extends §6"d§
   {
      
      public static const §"&9§:§&$2§ = new §&$2§(4000);
      
      public static const §4%k§:§&$2§ = new §&$2§(3);
      
      public static const KILL_GUARDIAN_EVENT:String = "KILL_GUARDIAN_EVENT";
      
      public static const §]"y§:uint = 1;
      
      public static const §9"]§:uint = 2;
      
      public function §5"`§()
      {
         super(75);
      }
      
      override public function getId() : int
      {
         return §+#N§.§]%v§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §'!I§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[§#$J§(2426,845),§#$J§(987,1017),§#$J§(273,325),§#$J§(1337,290)],[§#$J§(1979,942),§#$J§(974,639)],[§#$J§(478,634),§#$J§(1411,942)],[§#$J§(1646,776),§#$J§(1781,316)]];
         §§push(§'!I§(§6%D§[0]));
         var _temp_6:* = new <Point>[§#$J§(401,1030),§#$J§(579,566),§#$J§(810,853),§#$J§(1128,1020),§#$J§(1691,381),§#$J§(1758,797),§#$J§(2070,1011),§#$J§(2314,681)];
         §§pop().areaPositions = new <Point>[§#$J§(401,1030),§#$J§(579,566),§#$J§(810,853),§#$J§(1128,1020),§#$J§(1691,381),§#$J§(1758,797),§#$J§(2070,1011),§#$J§(2314,681)];
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         var _loc3_:§2R§ = null;
         var _loc4_:§2R§ = null;
         if(param1.code == §]"y§)
         {
            if(param1.value > 0)
            {
               _loc2_ = §]%!§(BossAchieves.GUARDIANS_ALARM);
               if(_loc2_.available)
               {
                  _loc2_.§#"!§();
                  §5X§(_loc2_);
               }
               _loc3_ = §]%!§(BossAchieves.GUARDIANS_CATACLYSM);
               if(_loc3_.available)
               {
                  §=$I§(_loc3_,§"&9§.value,param1.value);
               }
            }
         }
         else if(param1.code == §9"]§)
         {
            _loc4_ = §]%!§(BossAchieves.GUARDIANS_TELEPORT);
            if(_loc4_.available)
            {
               §=$I§(_loc4_,§4%k§.value);
            }
         }
      }
      
      override public function activateAchievs(param1:int, param2:Boolean) : void
      {
         super.activateAchievs(param1,param2);
         §'!I§(§6%D§[0]).isFirstRubyTry = isFirstRubyTry;
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.GUARDIANS_ALARM).§,%,§();
      }
   }
}

