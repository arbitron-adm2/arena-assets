package §`"p§
{
   import §"$+§.§@C§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §0%[§.§1%"§;
   import §=!C§.ChatMessageSeparator;
   import §="z§.§-O§;
   import §=$#§.§[#-§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §20§ extends §1#g§
   {
      
      protected var §""-§:int;
      
      protected var chat:MovieClip;
      
      protected var §][§:TextField;
      
      protected var §;=§:§?%>§;
      
      protected var § q§:§`&-§;
      
      protected var §5q§:Sprite;
      
      protected var §+#w§:Boolean = true;
      
      protected var §+%V§:int = 0;
      
      protected var §3"J§:int = 0;
      
      protected var §9%s§:int = 100;
      
      protected var messages:Vector.<§`&-§>;
      
      protected var §4%L§:Boolean = true;
      
      protected var §]!G§:Function;
      
      protected var scrollPane:§>S§;
      
      protected var content:DisplayObjectContainer;
      
      protected var §[!<§:DisplayObject;
      
      protected var §!$§:MovieClip;
      
      private var isSendingDelay:Boolean;
      
      private var §@#Z§:Boolean = true;
      
      public function §20§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§+t§();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§4%L§ = false;
         this.§2#d§();
         this.scrollPane.§]%E§();
         Application.instance.stage.focus = this.§][§;
      }
      
      override public function deactivate() : void
      {
         Application.instance.stage.focus = null;
         this.scrollPane.§@%i§();
         super.deactivate();
         this.§4%L§ = true;
      }
      
      public function §2#d§() : void
      {
      }
      
      public function §=%C§(param1:Function) : void
      {
         this.§]!G§ = param1;
      }
      
      public function §#$t§(param1:int, param2:int) : void
      {
         this.§[!<§.width = this.§5q§.width = param1;
         this.§[!<§.height = this.§5q§.height = param2 - this.§""-§;
         this.§ q§.y = this.§""-§ + Math.min(0,this.§5q§.height - this.§ q§.height);
         this.§]&5§();
      }
      
      public function §"&0§() : void
      {
         this.§'%H§();
         if(this.§+#w§)
         {
            this.§+#w§ = false;
            this.§+%V§ = this.§3"J§;
         }
         if(!this.§4%L§)
         {
            this.§!"T§();
         }
         if(this.§]!G§ != null && this.§>%+§())
         {
            this.§]!G§(this.§3"J§ - this.§+%V§);
         }
      }
      
      protected function §>%+§() : Boolean
      {
         return true;
      }
      
      protected function §+t§() : void
      {
         this.scrollPane = new §>S§(§'$a§("chat.display"));
         this.content = this.scrollPane.§'$a§("content");
         this.§[!<§ = this.scrollPane.getChildByName("content_mask");
         this.scrollPane.addEventListener(Event.CHANGE,this.§>"i§);
         this.§!$§ = this.scrollPane.§'$a§("scrollbar");
         this.chat = §'$a§("chat");
         this.§][§ = this.chat.messageInput;
         this.§][§.text = "";
         this.§][§.maxChars = §[#-§.§'$[§;
         this.§][§.addEventListener(KeyboardEvent.KEY_DOWN,this.§^x§);
         this.§;=§ = §!&5§.§7#[§(this.chat.getChildByName("sendMessageBtn"));
         this.§;=§.§[!u§(this.§,U§);
         this.§ q§ = new §`&-§(this.chat.getChildByName("messages") as Sprite);
         this.§""-§ = this.§ q§.y;
         this.§5q§ = this.chat.getChildByName("messages_mask") as Sprite;
         this.§ q§.getContainer().mask = this.§5q§;
         this.messages = new Vector.<§`&-§>(0);
         this.content.addChild(this.§ q§.getContainer());
      }
      
      protected function §'%H§() : void
      {
      }
      
      protected function §9#o§() : void
      {
         this.messages.length = 0;
         this.§+%V§ = this.§3"J§ = 0;
      }
      
      private function §>"i§(param1:Event) : void
      {
         this.§@#Z§ = this.scrollPane.scrollV == this.scrollPane.maxScrollV;
      }
      
      protected function §!"T§() : void
      {
         var _loc2_:§`&-§ = null;
         var _loc3_:ChatMessageSeparator = null;
         this.content.removeChildren();
         if(this.messages.length > this.§9%s§)
         {
            this.messages.splice(1,this.messages.length - this.§9%s§);
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.messages.length)
         {
            _loc2_ = this.§%! §(_loc1_);
            if(_loc2_)
            {
               if(this.content.height > 0)
               {
                  _loc3_ = new ChatMessageSeparator();
                  §`o§.§1$T§(_loc3_.getContainer(),this.content,-this.content.y - 4);
                  this.content.addChild(_loc3_.getContainer());
               }
               _loc2_.x = 4;
               §`o§.§1$T§(_loc2_.getContainer(),this.content,-this.content.y);
               this.content.addChild(_loc2_.getContainer());
               §4"0§.§^%T§(_loc2_,5);
            }
            _loc1_++;
         }
         this.§+%V§ = this.§3"J§;
         this.§]&5§();
      }
      
      protected function §]&5§() : void
      {
         this.scrollPane.update();
         this.§!$§.visible = false;
         if(this.§@#Z§)
         {
            this.scrollPane.scrollV = this.scrollPane.maxScrollV;
         }
      }
      
      protected function §%! §(param1:int) : §`&-§
      {
         return this.messages[param1];
      }
      
      protected function §,U§(param1:Event = null) : void
      {
         if(this.§][§.text)
         {
            this.§][§.text = this.§][§.text.replace(§7&5§.§%$u§,"");
         }
         if(this.§][§.text)
         {
            this.§][§.text = §8"%§.§2#<§.§'#X§(this.§][§.text);
         }
         if(this.§][§.text)
         {
            this.§][§.text = §2"e§.§"%i§(this.§][§.text);
         }
         if(this.§][§.text)
         {
            this.§][§.text = §2"e§.§=#$§(this.§][§.text);
         }
         this.§]&5§();
      }
      
      protected function §^x§(param1:KeyboardEvent) : void
      {
         var e:KeyboardEvent = param1;
         if(!this.isSendingDelay && e.charCode == Keyboard.ENTER)
         {
            this.isSendingDelay = true;
            this.§@#Z§ = true;
            this.§,U§();
            e.stopImmediatePropagation();
            §1%"§.delay(function():void
            {
               isSendingDelay = false;
            },this,§@C§.§"%[§);
         }
      }
   }
}

