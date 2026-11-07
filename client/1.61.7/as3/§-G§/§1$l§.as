package §-G§
{
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §-%B§.*;
   import §-@§.§5"4§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §2"L§.§^$y§;
   import §2#8§.§6"a§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §>!_§.§8#b§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!O§.§1#i§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.ui.Keyboard;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.GetJoinClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.response.GetJoinClansMainResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §1$l§ extends §1#g§
   {
      
      private var searchContent:DisplayObjectContainer;
      
      private var §"l§:DisplayObjectContainer;
      
      private var §4#B§:DisplayObjectContainer;
      
      private var §[!f§:MovieClip;
      
      private var scrollPane:§>S§;
      
      private var nameInput:TextField;
      
      private var §#!^§:String = "";
      
      private var searchBtn:§?%>§;
      
      public function §1$l§()
      {
         super(§6#A§.§!&6§(§+"'§.§>%F§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.searchContent = getChildByName("searchContent") as DisplayObjectContainer;
         this.§"l§ = this.searchContent.getChildByName("display") as DisplayObjectContainer;
         this.§4#B§ = this.§"l§.getChildByName("content") as DisplayObjectContainer;
         this.§[!f§ = §'$a§("search");
         this.§[!f§.x = this.§[!f§.y = 0;
         this.§4#B§.addChild(this.§[!f§);
         this.scrollPane = new §>S§(this.§"l§);
         var _loc2_:TextField = this.§[!f§.getChildByName("nameStatic") as TextField;
         §&$9§.§>&F§(_loc2_,§"-§.§+$m§,§0$N§.CLAN_NAME);
         this.nameInput = this.§[!f§.getChildByName("nameInput") as TextField;
         this.nameInput.restrict = §@C§.§'%Z§();
         this.nameInput.maxChars = §@C§.§+#d§;
         this.nameInput.text = "";
         this.§%#x§(true);
         this.searchBtn = §!&5§.§7#[§(this.§[!f§.getChildByName("searchBtn"));
         this.searchBtn.setText(§0$N§.SEARCH_BTN,§"-§.§+$m§);
         this.searchBtn.§[!u§(this.§7!h§);
         this.§ "l§(false);
         this.§;#N§();
      }
      
      private function §7!h§(param1:MouseEvent) : void
      {
         if(this.nameInput.text == "")
         {
            this.§;#N§();
         }
         else if(this.§6$]§(this.nameInput.text))
         {
            this.search();
         }
      }
      
      private function §6$]§(param1:String) : Boolean
      {
         if(param1 != "" && param1 != this.§#!^§)
         {
            if(§=%_§.§7$u§(param1,§1%"§.§]$<§(this.§%#x§,this,[true],true)))
            {
               this.§%#x§(false);
               return true;
            }
            this.§%#x§(false);
            return false;
         }
         return false;
      }
      
      private function search() : void
      {
         §8"%§.§!&I§.common.§=%7§(this.nameInput.text,this.§'!§);
         this.§#!^§ = this.nameInput.text;
         this.§ "l§(true);
      }
      
      private function §;#N§() : void
      {
         this.§ "l§(true);
         §8"%§.§!&I§.common.§2!l§(this.§'!§);
      }
      
      private function §'!§(param1:Vector.<ClanTO>) : void
      {
         var _loc5_:ClanTO = null;
         var _loc6_:§8#b§ = null;
         if(this.scrollPane.scrollV > 0)
         {
            this.scrollPane.scrollV = 0;
         }
         this.§4#B§.removeChildren();
         this.§4#B§.addChild(this.§[!f§);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = int(param1.length);
         while(_loc3_ < _loc4_)
         {
            _loc5_ = param1[_loc3_];
            if(!(_loc5_.isBlocked() || _loc5_.size >= § G§.getLevel(_loc5_.level).capacity))
            {
               _loc6_ = new §8#b§();
               _loc6_.update(_loc5_);
               this.§4#B§.addChild(_loc6_.getContainer());
               _loc2_++;
               §4"0§.§^%T§(_loc6_,2);
               §`o§.§1$T§(_loc6_.getContainer(),this.§4#B§,0);
            }
            _loc3_++;
         }
         this.scrollPane.update();
         this.§ "l§(false);
      }
      
      private function § "l§(param1:Boolean) : void
      {
         this.searchBtn.setDisabled(param1);
         this.§%#x§(!param1);
         §&#F§(param1);
      }
      
      private function §%#x§(param1:Boolean) : void
      {
         if(param1)
         {
            if(!this.nameInput.hasEventListener(KeyboardEvent.KEY_DOWN))
            {
               this.nameInput.addEventListener(KeyboardEvent.KEY_DOWN,this.§@""§);
            }
            this.nameInput.type = TextFieldType.INPUT;
         }
         else
         {
            if(this.nameInput.hasEventListener(KeyboardEvent.KEY_DOWN))
            {
               this.nameInput.removeEventListener(KeyboardEvent.KEY_DOWN,this.§@""§);
            }
            this.nameInput.type = TextFieldType.DYNAMIC;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.scrollPane.§]%E§();
      }
      
      override public function deactivate() : void
      {
         this.scrollPane.§@%i§();
         super.deactivate();
      }
      
      private function §@""§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER && this.§6$]§(this.nameInput.text))
         {
            this.search();
         }
      }
   }
}

