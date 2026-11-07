package §&$Y§
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§=#?§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§5#E§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §4!x§.§@& §;
   import §5"J§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §]7§.§0!v§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import config.achievements.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6[§ extends §@& §
   {
      
      private var nextBtn:§?%>§;
      
      private var prevBtn:§?%>§;
      
      protected var §?&§:uint;
      
      protected var page:uint;
      
      protected var §&n§:String;
      
      public function §6[§(param1:uint, param2:Date)
      {
         super(§6#A§.§!&6§(§+"'§.§5!W§));
         this.§?&§ = param1;
         this.§&n§ = §5#E§.§^"@§(param2,§5#E§.§!$o§);
         this.nextBtn = §!&5§.§7#[§(getChildByName("next"));
         this.nextBtn.§[!u§(this.§0"f§);
         this.prevBtn = §!&5§.§7#[§(getChildByName("prev"));
         this.prevBtn.§[!u§(this.§"#[§);
         this.page = param1 - 1;
         this.nextBtn.setVisible(param1 > 1);
         this.prevBtn.setVisible(param1 > 1);
         this.update();
      }
      
      protected function §"#[§(param1:Event) : void
      {
         ++this.page;
         if(this.page < 0)
         {
            this.page = this.§?&§ - 1;
         }
         this.update();
      }
      
      protected function §0"f§(param1:Event) : void
      {
         --this.page;
         if(this.page == this.§?&§)
         {
            this.page = 0;
         }
         this.update();
      }
      
      private function update() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?&§)
         {
            getChildByName("page" + _loc1_).visible = _loc1_ == this.page;
            _loc1_++;
         }
         this.nextBtn.setDisabled(this.page == 0);
         this.prevBtn.setDisabled(this.page == this.§?&§ - 1);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
         §%%R§ = §`!v§.§^""§;
         §<"b§ = true;
      }
   }
}

