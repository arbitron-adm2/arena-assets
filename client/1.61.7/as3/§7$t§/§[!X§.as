package §7$t§
{
   import § &5§.§=#P§;
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §"%H§.*;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §+"m§.§3#[§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§^$y§;
   import §3#T§.§;#Q§;
   import §4#2§.§,%g§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §6"'§.§>"V§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §?!E§.*;
   import §@!N§.§2"e§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §[$<§.§;"E§;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[!X§ extends §=?§
   {
      
      private var hat:int;
      
      private var artifact:int;
      
      private var hats:Vector.<int>;
      
      private var artifacts:Vector.<int>;
      
      private var races:Vector.<int>;
      
      private var §1#L§:uint;
      
      private var §7%a§:String;
      
      private var §+% §:String;
      
      private var §1& §:Boolean;
      
      private var §>!0§:Boolean;
      
      private var §6!B§:Boolean;
      
      public function §[!X§()
      {
         super(§]$q§.ITEMSSET);
         this.hats = new Vector.<int>(0);
         this.artifacts = new Vector.<int>(0);
         this.races = new Vector.<int>(0);
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super.initFromConfig(param1);
         this.hat = param1.hat;
         this.artifact = param1.artifact;
         if(param1.hats)
         {
            for each(_loc2_ in param1.hats)
            {
               this.hats.push(_loc2_);
            }
         }
         if(param1.artifacts)
         {
            for each(_loc3_ in param1.artifacts)
            {
               this.artifacts.push(_loc3_);
            }
         }
         if(param1.races)
         {
            for each(_loc4_ in param1.races)
            {
               this.races.push(_loc4_);
            }
         }
         if(param1.isForRevived)
         {
            this.§1& § = param1.isForRevived;
         }
         if(param1.isHidden)
         {
            this.§>!0§ = param1.isHidden;
         }
         if(param1.isAnti)
         {
            this.§6!B§ = param1.isAnti;
         }
         this.§1#L§ = §#&>§.§>#L§(this.§6!B§);
         this.§7%a§ = §#&>§.§?#+§(this.§6!B§);
         this.§+% § = this.§7%a§ + " - " + §7%z§();
      }
      
      public function §2u§() : int
      {
         return this.hat;
      }
      
      public function §+!b§() : int
      {
         return this.artifact;
      }
      
      public function §7#F§() : Vector.<int>
      {
         return this.hats;
      }
      
      public function §0$^§() : Vector.<int>
      {
         return this.artifacts;
      }
      
      public function §;$F§() : Vector.<int>
      {
         return this.races;
      }
      
      public function §!$P§(param1:int) : Boolean
      {
         return this.races.length == 0 || this.races.indexOf(param1) > -1;
      }
      
      public function §'!y§() : Boolean
      {
         return this.races.length > 0;
      }
      
      public function §7$-§() : Boolean
      {
         return this.hat == -1;
      }
      
      public function §+&E§() : Boolean
      {
         return this.artifact == -1;
      }
      
      public function get §+e§() : uint
      {
         return this.§1#L§;
      }
      
      public function get §+&B§() : String
      {
         return this.§7%a§;
      }
      
      public function get §0F§() : String
      {
         return this.§+% §;
      }
      
      public function get isForRevived() : Boolean
      {
         return this.§1& §;
      }
      
      public function get isHidden() : Boolean
      {
         return this.§>!0§;
      }
      
      public function get isAnti() : Boolean
      {
         return this.§6!B§;
      }
   }
}

