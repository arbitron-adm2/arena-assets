package §9![§
{
   import §"!C§.*;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!K§.*;
   import §4f§.§-&§;
   import §6$z§.BonusTrait;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §?#g§.§&"P§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   
   public class §3"L§ extends BonusTrait
   {
      
      public function §3"L§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         owner.physParams.§3&I§ = false;
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.physParams.§3&I§ = true;
      }
   }
}

