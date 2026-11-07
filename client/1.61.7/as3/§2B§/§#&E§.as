package §2B§
{
   import §"$+§.*;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §+%S§.§[&;§;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §8$V§.*;
   import §@!i§.§!m§;
   import §[%'§.§<"G§;
   import §]$v§.*;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.messages.server.PumpReactionRatesResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §#&E§
   {
      
      private static const list:Vector.<§#&E§> = new Vector.<§#&E§>(0);
      
      public static const §-!l§:§#&E§ = new §#&E§(0,"battleToken",§0$N§.BATTLE_TOKENS,§0$N§.BATTLE_TOKENS_TEXT + "\n" + §0%§.format(§0$N§.FREE_BATTLE_TOKENS,{"br":"\n"}));
      
      public static const §^5§:§#&E§ = new §#&E§(1,"wagerToken",§0$N§.WAGER_TOKENS,§0$N§.WAGER_TOKENS_TEXT + "\n" + §0$N§.ALL_TOKENS_EXPIRE + "\n" + §0%§.format(§0$N§.ONE_TOKEN_RESTORE,{"token":§0$N§.WAGER_TOKEN.toLowerCase()}));
      
      public static const §#E§:§#&E§ = new §#&E§(2,"bossToken",§0$N§.BOSS_TOKENS,§0$N§.BOSS_TOKENS_TEXT + "\n" + §0$N§.ALL_TOKENS_EXPIRE + "\n" + §0%§.format(§0$N§.ONE_TOKEN_RESTORE,{"token":§0$N§.BOSS_TOKEN.toLowerCase()}));
      
      public static const §1!L§:§#&E§ = new §#&E§(3,"superBossToken",§0$N§.SUPERBOSS_TOKENS,§0$N§.SUPERBOSS_TOKENS_TEXT + "\n" + §0$N§.ALL_TOKENS_EXPIRE + "\n" + §0%§.format(§0$N§.ONE_TOKEN_RESTORE,{"token":§0$N§.SUPERBOSS_TOKEN.toLowerCase()}));
      
      public static const §9"#§:§#&E§ = new §#&E§(4,"gladiatorToken",§0$N§.GLADIATOR_TOKENS,§0$N§.GLADIATOR_TOKENS_TEXT);
      
      private var §9!4§:int;
      
      private var §4"4§:String;
      
      private var §@m§:String;
      
      private var §>#0§:String;
      
      public function §#&E§(param1:int, param2:String, param3:String, param4:String)
      {
         super();
         this.§9!4§ = param1;
         this.§4"4§ = param2;
         this.§@m§ = param3;
         this.§>#0§ = param4;
         list.push(this);
      }
      
      public function get id() : int
      {
         return this.§9!4§;
      }
      
      public function get name() : String
      {
         return this.§4"4§;
      }
      
      public function get §@!1§() : String
      {
         return this.§@m§;
      }
      
      public function get text() : String
      {
         return this.§>#0§;
      }
   }
}

