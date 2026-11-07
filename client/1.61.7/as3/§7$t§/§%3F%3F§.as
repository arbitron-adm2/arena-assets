package §7$t§
{
   import § !8§.§`!d§;
   import § #m§.§[&H§;
   import § &5§.§=#P§;
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-8§.§3!x§;
   import §-@§.§0"e§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1!J§.§@#%§;
   import §1#0§.§;4§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2#s§.*;
   import §2#x§.*;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §3#T§.§5!M§;
   import §4$b§.*;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §4u§.§[%u§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §8#a§.ShopMenu;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §;&2§.§!#W§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=;§.§>%>§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §@!N§.§-!Y§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]$v§.§`0§;
   import §]^§.§-$T§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§!n§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §^4§.§@#J§;
   import §`%&§.§,%§;
   import §`%&§.§,L§;
   import com.greensock.loading.LoaderStatus;
   import config.§28§;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §??§ implements §!n§
   {
      
      private var id:§&$2§ = new §&$2§(0);
      
      private var weight:§&$2§ = new §&$2§(0);
      
      protected var name:String = "";
      
      protected var description:String = "";
      
      protected var note:String = "";
      
      private var price:§'$2§;
      
      protected var sellPrice:uint = 0;
      
      private var §-& §:uint;
      
      protected var requiredFriends:uint;
      
      protected var requiredLevel:uint = 1;
      
      protected var requiredScenario:uint = 0;
      
      protected var hideInShop:Boolean = false;
      
      protected var state:§^"p§ = §^"p§.NONE;
      
      protected var §3!u§:int = 0;
      
      public function §??§()
      {
         super();
      }
      
      public function initFromConfig(param1:Object) : void
      {
         if(param1.price >= 0 || param1.realprice >= 0)
         {
            this.§8&;§(param1.price,param1.realprice);
         }
         if(param1.sellPrice)
         {
            this.sellPrice = param1.sellPrice;
         }
         if(!this.§-& §)
         {
            if(param1.comparePrice)
            {
               this.§-& § = param1.comparePrice;
            }
            else if(Boolean(param1.price) && param1.price != §5&4§.§9!b§)
            {
               this.§-& § = param1.price;
            }
            else if(Boolean(param1.realprice) && param1.realprice != §5&4§.§0#E§)
            {
               this.§-& § = param1.realprice * §5&4§.§^$,§.ingamePrice;
            }
         }
      }
      
      public function §##m§() : §^"p§
      {
         return this.state;
      }
      
      public function setState(param1:§^"p§, param2:int = 0) : void
      {
         this.state = param1;
         this.§3!u§ = param2;
      }
      
      public function §,!H§() : int
      {
         return this.§3!u§;
      }
      
      public function getHideInShop() : Boolean
      {
         return this.hideInShop;
      }
      
      public function §%!U§(param1:Boolean) : void
      {
         this.hideInShop = param1;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function § %0§(param1:String) : void
      {
         this.name = param1;
      }
      
      public function §]G§() : String
      {
         return this.description;
      }
      
      public function §&!U§(param1:String) : void
      {
         this.description = param1;
      }
      
      public function §,X§() : uint
      {
         return this.requiredLevel;
      }
      
      public function §6$O§(param1:uint) : void
      {
         this.requiredLevel = param1;
      }
      
      public function §4$n§() : uint
      {
         return this.price.ingamePrice;
      }
      
      public function §8&;§(param1:uint, param2:uint) : void
      {
         this.price = new §'$2§(param1,param2);
      }
      
      public function §3#H§(param1:§'$2§) : void
      {
         this.price = param1;
      }
      
      public function getRealPrice() : uint
      {
         return this.price.realPrice;
      }
      
      public function §%"]§() : §'$2§
      {
         return this.price;
      }
      
      public function §-1§() : uint
      {
         return this.sellPrice;
      }
      
      public function §"$i§(param1:uint) : void
      {
         this.requiredFriends = param1;
      }
      
      public function § %D§() : uint
      {
         return this.requiredFriends;
      }
      
      public function §&&@§() : Boolean
      {
         return this.requiredFriends ? true : false;
      }
      
      public function §[!c§(param1:uint) : void
      {
         this.requiredScenario = param1;
      }
      
      public function §`%n§() : uint
      {
         return this.requiredScenario;
      }
      
      public function getId() : int
      {
         return this.id.value;
      }
      
      public function §-!W§(param1:int) : void
      {
         this.id.value = param1;
      }
      
      public function equals(param1:§??§) : Boolean
      {
         return param1 ? this.id.value == param1.getId() : false;
      }
      
      public function §9#p§() : int
      {
         return this.weight.value;
      }
      
      public function §9p§(param1:int) : void
      {
         this.weight.value = param1;
      }
      
      public function §#6§() : String
      {
         return this.note;
      }
      
      public function § # §(param1:String) : void
      {
         this.note = param1;
      }
      
      public function get §?$+§() : uint
      {
         return this.§-& §;
      }
      
      public function set §?$+§(param1:uint) : void
      {
         this.§-& § = param1;
      }
      
      public function §%"5§(param1:§??§) : void
      {
         param1.id.value = this.id.value;
         param1.weight.value = this.weight.value;
         param1.name = this.name;
         param1.description = this.description;
         param1.note = this.note;
         param1.price = this.price;
         param1.sellPrice = this.sellPrice;
         param1.§-& § = this.§-& §;
         param1.requiredFriends = this.requiredFriends;
         param1.requiredLevel = this.requiredLevel;
         param1.requiredScenario = this.requiredScenario;
         param1.hideInShop = this.hideInShop;
         param1.state = this.state;
         param1.§3!u§ = this.§3!u§;
      }
   }
}

