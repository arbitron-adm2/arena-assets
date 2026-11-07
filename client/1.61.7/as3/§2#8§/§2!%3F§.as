package §2#8§
{
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§,#;§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0!§.§6#z§;
   import §0%[§.*;
   import §0&F§.UpgradeEvent;
   import §2!-§.HpChangeEvent;
   import §2"v§.§@G§;
   import §4&F§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §8!Y§.§`#Q§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%k§.*;
   import §<%k§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §2!?§ extends §#$w§ implements §0$L§
   {
      
      private var §0%B§:int;
      
      private var §8!z§:int;
      
      private var selected:Boolean;
      
      private var selectable:Boolean;
      
      private var §"%E§:Boolean;
      
      public function §2!?§(param1:SimpleButton, param2:UserProfile = null)
      {
         super(param1,param2);
      }
      
      public function setItem(param1:Object) : void
      {
         var _loc2_:UserProfile = param1 as UserProfile;
         this.profile = _loc2_;
         §!!&§(simpleButton.upState,_loc2_);
         §!!&§(simpleButton.overState,_loc2_);
         §!!&§(simpleButton.downState,_loc2_);
      }
      
      public function getItem() : Object
      {
         return profile;
      }
      
      public function setSelected(param1:Boolean) : void
      {
         this.selected = param1;
      }
      
      public function §`%D§() : Boolean
      {
         return this.selected;
      }
      
      public function §;b§(param1:Boolean) : void
      {
         this.selectable = param1;
      }
      
      public function §,$K§() : Boolean
      {
         return this.selectable;
      }
      
      public function §>!V§(param1:Boolean) : void
      {
         this.§"%E§ = param1;
      }
      
      public function §#&-§() : Boolean
      {
         return this.§"%E§;
      }
      
      public function §?#y§(param1:uint) : void
      {
         this.§8!z§ = param1;
      }
      
      public function getCellIndex() : uint
      {
         return this.§8!z§;
      }
      
      public function §^3§(param1:uint) : void
      {
         this.§0%B§ = param1;
      }
      
      public function §^"r§() : uint
      {
         return this.§0%B§;
      }
   }
}

