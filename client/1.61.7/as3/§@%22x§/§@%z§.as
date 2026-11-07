package §@"x§
{
   import § #m§.§;#^§;
   import § %f§.Parasite;
   import §!!!§.*;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§="_§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §4!x§.§@& §;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§2l§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`%&§.§5$1§;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§"!g§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §@%z§ extends §@& §
   {
      
      protected var store:§2l§;
      
      protected var resetBtn:§?%>§;
      
      public function §@%z§(param1:String)
      {
         super(§6#A§.§!&6§(param1));
         this.store = new §2l§();
         this.resetBtn = §!&5§.§7#[§(getChildByName("resetBtn"));
         this.resetBtn.setText(§0$N§.BUTTON_RESET,§"-§.§+$m§);
         this.resetBtn.§[!u§(this.§]$§);
      }
      
      public static function §+$6§(param1:§`&-§, param2:String, param3:Function) : Sprite
      {
         var _loc4_:Sprite = §3!3§.§-"9§(param1.§'%s§(param2),null,true,true,true,true,true,false,true,param3);
         §=%E§(_loc4_);
         return _loc4_;
      }
      
      public static function §=%E§(param1:Sprite) : §4#_§
      {
         var _loc2_:§4#_§ = new §4#_§(param1);
         _loc2_.setQtip(§0$N§.DOUBLE_CLICK_RESET_SETTINGS_GROUP,§;#^§.DEFAULT,§+"'§.§9%>§);
         return _loc2_;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=#h§ = §0$N§.SAVE_BTN;
         §=%1§ = §5!r§.§<![§;
         §<"b§ = false;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.store.clear();
         §>!-§.setDisabled(true);
         this.resetBtn.setDisabled(this.isDefault);
         super.show(param1);
      }
      
      protected function §]$§(param1:Event) : void
      {
      }
      
      protected function get isDefault() : Boolean
      {
         return false;
      }
   }
}

