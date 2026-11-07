package §]^§
{
   import §!#g§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§^$`§;
   import §#"V§.§8"@§;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §%#u§.*;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §+%S§.§@#s§;
   import §,$J§.§0%G§;
   import §0%[§.§^"5§;
   import §2#i§.§+%z§;
   import §3#T§.AtomBomb;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§9#x§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@8§.§%Z§;
   import §@8§.§5%>§;
   import §^"y§.§!n§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.LowerRankInClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.LowerRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §5" § implements §!n§
   {
      
      private var id:uint;
      
      private var name:String;
      
      private var script:Class;
      
      private var race:Race;
      
      private var skinId:uint = 0;
      
      private var hatId:int = 0;
      
      private var artifactId:int = 0;
      
      public function §5" §()
      {
         super();
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function initFromConfig(param1:Object) : void
      {
         this.id = param1.id;
         this.name = param1.name;
         this.script = param1.script;
         this.race = param1.race;
         if(param1.skinId)
         {
            this.skinId = param1.skinId;
         }
         if(Boolean(param1.hatId) && param1.hatId > §0%G§.§;9§)
         {
            this.hatId = param1.hatId;
         }
         if(Boolean(param1.artifactId) && param1.artifactId > §8"j§.§;9§)
         {
            this.artifactId = param1.artifactId;
         }
      }
      
      public function §=&=§() : Class
      {
         return this.script;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function getRace() : Race
      {
         return this.race;
      }
      
      public function §9K§() : uint
      {
         return this.skinId;
      }
      
      public function §"!?§() : uint
      {
         return this.hatId;
      }
      
      public function §8!u§() : uint
      {
         return this.artifactId;
      }
   }
}

