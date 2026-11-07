package §5!9§
{
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §0%[§.§^"5§;
   import §1#p§.§"Z§;
   import §4#2§.§2&@§;
   import §4#2§.§^S§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §="z§.*;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'$C§ extends §`&-§
   {
      
      private var §,$T§:§[!>§;
      
      private var §2%-§:§2&@§;
      
      private var battleBackpackPanel:§^S§;
      
      public function §'$C§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      public function §,&@§() : void
      {
         this.battleBackpackPanel.§,&@§();
         this.§2%-§.§,&@§();
      }
      
      public function §7%D§() : void
      {
         this.battleBackpackPanel.§7%D§();
         this.§2%-§.§7%D§();
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         this.§2%-§.§3%,§(param1);
         this.battleBackpackPanel.§3%,§(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.battleBackpackPanel = new §^S§(§'$a§("battleBackpackPanel"));
         this.§2%-§ = new §2&@§(§'$a§("backpackPanel"));
         this.§,$T§ = new §[!>§(this.§2%-§,this.battleBackpackPanel);
         §&$9§.§>&F§(TextField(this.battleBackpackPanel.getChildByName("title")),§"-§.§+$m§,§0$N§.BATTLE_BACKPACK_TITLE);
         §&$9§.§>&F§(TextField(this.§2%-§.getChildByName("titleBackpack")),§"-§.§+$m§,§0$N§.STORAGE_TITLE);
      }
      
      public function update() : void
      {
         this.§2%-§.§<"X§();
         this.battleBackpackPanel.§<"X§();
      }
      
      public function §@%U§(param1:int) : void
      {
         this.battleBackpackPanel.§4"w§(param1);
      }
      
      public function §!&@§() : int
      {
         return this.battleBackpackPanel.§>7§();
      }
   }
}

