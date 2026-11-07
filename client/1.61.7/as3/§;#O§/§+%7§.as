package §;#O§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §8#<§.§!#^§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?#g§.Race;
   import §?$K§.§=z§;
   import §@!i§.§!m§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextFieldType;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.client.ReorderGroup;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §+%7§ implements §!n§
   {
      
      private const §%">§:String = "MERC_NAME_";
      
      private var id:int = 0;
      
      private var level:int;
      
      private var requiredLevel:int;
      
      private var name:String;
      
      private var attack:int;
      
      private var armor:int;
      
      private var race:Race;
      
      private var hatId:uint = 0;
      
      private var artifactId:uint = 0;
      
      private var ingamePrice:uint;
      
      private var realPrice:uint;
      
      private var §3!I§:Boolean;
      
      private var §?$>§:Boolean;
      
      public function §+%7§()
      {
         super();
      }
      
      public static function §-%W§(param1:Object) : §+%7§
      {
         var _loc2_:§+%7§ = new §+%7§();
         _loc2_.initFromConfig(param1);
         return _loc2_;
      }
      
      public function initFromConfig(param1:Object) : void
      {
         if(param1.id)
         {
            this.id = param1.id;
         }
         if(param1.level)
         {
            this.level = param1.level;
         }
         this.requiredLevel = param1.requiredLevel ? int(param1.requiredLevel) : this.level;
         this.name = param1.name ? §0$N§.§<N§(param1.name) : §0$N§.§<N§(this.§%">§ + Math.abs(this.id));
         if(param1.attack)
         {
            this.attack = param1.attack;
         }
         if(param1.armor)
         {
            this.armor = param1.armor;
         }
         this.race = param1.hasOwnProperty("race") ? Race.valueOf(param1.race) : Race.§+#T§;
         if(param1.hatId)
         {
            this.hatId = param1.hatId;
         }
         if(param1.artifactId)
         {
            this.artifactId = param1.artifactId;
         }
         if(param1.price)
         {
            this.ingamePrice = param1.price;
         }
         if(param1.realPrice)
         {
            this.realPrice = param1.realPrice;
         }
         if(param1.isNew)
         {
            this.§3!I§ = true;
         }
         this.§?$>§ = param1.isNotFittable ? false : true;
      }
      
      public function toString() : String
      {
         return "MercRecord:{" + "id=" + this.id + ",level=" + this.level + ",requiredLevel=" + this.requiredLevel + ",attack=" + this.attack + ",armor=" + this.armor + ",race=" + (this.race ? this.race.§]!D§().§7%z§() : "-") + ",hatId=" + this.hatId + ",artifactId=" + this.artifactId + ",ingamePrice=" + this.ingamePrice + ",realPrice=" + this.realPrice + ",isNew=" + this.§3!I§ + ",isFittable=" + this.§?$>§ + ",name=" + this.name + "}";
      }
      
      public function §>#q§() : UserProfile
      {
         var _loc1_:UserProfile = UserProfile.§'#3§(this.name,this.level,this.race,§<!9§.§["q§(this.level),this.armor,this.attack,this.hatId,this.artifactId);
         _loc1_.setIds(this.id,"");
         _loc1_.§2!§(this.name);
         return _loc1_;
      }
      
      public function §;%6§(param1:BackpackItem) : Boolean
      {
         return this.hatId == param1.getId() || this.artifactId == param1.getId();
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function getLevel() : int
      {
         return this.level;
      }
      
      public function §,X§() : int
      {
         return this.requiredLevel;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function §+"^§() : int
      {
         return this.attack;
      }
      
      public function §]%Q§() : int
      {
         return this.armor;
      }
      
      public function getRace() : Race
      {
         return this.race;
      }
      
      public function §"!?§() : uint
      {
         return this.hatId;
      }
      
      public function §8!u§() : uint
      {
         return this.artifactId;
      }
      
      public function §4$n§() : uint
      {
         return this.ingamePrice;
      }
      
      public function getRealPrice() : uint
      {
         return this.realPrice;
      }
      
      public function get isNew() : Boolean
      {
         return this.§3!I§;
      }
      
      public function get §[$j§() : Boolean
      {
         return this.§?$>§;
      }
   }
}

