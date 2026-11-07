package §]$&§
{
   import § &5§.§=#P§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'$Z§.§2#f§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §3#T§.§;#Q§;
   import §4f§.§-&§;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3$%§
   {
      
      private var §9%<§:SimpleButton;
      
      private var option:§1e§;
      
      private var §^#Z§:MovieClip;
      
      private var §1!N§:Boolean;
      
      private var §4%G§:Boolean;
      
      public function §3$%§()
      {
         super();
      }
      
      public function init(param1:SimpleButton, param2:§1e§, param3:String) : void
      {
         var bonus:String = null;
         var button:SimpleButton = param1;
         var option:§1e§ = param2;
         var nameCurrency:String = param3;
         this.option = option;
         this.§9%<§ = button;
         this.§>%h§("count_txt",§"-§.§6"j§,option.count.toString());
         if(option.bonus != 0)
         {
            bonus = "+" + option.bonus;
         }
         else
         {
            bonus = " ";
         }
         this.§>%h§("bonus_txt",§"-§.§6"j§,bonus);
         this.§>%h§("price_text",§"-§.§+$m§,this.§6$h§(option,nameCurrency));
         if((this.§9%<§.downState as DisplayObjectContainer).getChildByName("label_text"))
         {
            this.§>%h§("label_text",§"-§.§+$m§,§0$N§.§%! §("BANK_BIG_DANGER"));
         }
         this.§9%<§.addEventListener(MouseEvent.CLICK,this.§2K§);
         this.§9%<§.addEventListener(MouseEvent.MOUSE_OUT,this.§6"x§);
         this.§^#Z§ = (this.§9%<§.upState as DisplayObjectContainer).getChildByName("clipAnimation") as MovieClip;
         if(this.§^#Z§)
         {
            this.§^#Z§.stop();
            if(!this.§4%G§)
            {
               this.§4%G§ = true;
               this.§^#Z§.addFrameScript(0,function(... rest):void
               {
                  §^#Z§.stop();
               });
            }
         }
      }
      
      protected function §6$h§(param1:§1e§, param2:String) : String
      {
         return param1.price + param2;
      }
      
      private function §>%h§(param1:String, param2:TextFormat, param3:String) : void
      {
         §&$9§.§>&F§((this.§9%<§.downState as DisplayObjectContainer).getChildByName(param1) as TextField,param2,param3);
         §&$9§.§>&F§((this.§9%<§.upState as DisplayObjectContainer).getChildByName(param1) as TextField,param2,param3);
         §&$9§.§>&F§((this.§9%<§.overState as DisplayObjectContainer).getChildByName(param1) as TextField,param2,param3);
      }
      
      protected function §2K§(param1:Event) : void
      {
         §8"%§.§^%W§.§[#l§();
         Social.§-%=§.callPayController(this.option);
      }
      
      public function destroy() : void
      {
         if(this.§^#Z§)
         {
            this.§^#Z§.removeEventListener(Event.ENTER_FRAME,this.§5#[§);
            this.§^#Z§.stop();
         }
         this.§9%<§.removeEventListener(MouseEvent.CLICK,this.§2K§);
         this.§9%<§ = null;
         this.option = null;
      }
      
      public function getButton() : SimpleButton
      {
         return this.§9%<§;
      }
      
      public function highlightAnimate(param1:Boolean) : void
      {
         if(this.§^#Z§)
         {
            this.§1!N§ = param1;
            if(this.§1!N§)
            {
               this.§^#Z§.addEventListener(Event.ENTER_FRAME,this.§5#[§);
               this.§^#Z§.gotoAndPlay(1);
            }
            else
            {
               this.§^#Z§.removeEventListener(Event.ENTER_FRAME,this.§5#[§);
               this.§^#Z§.gotoAndStop(0);
            }
         }
      }
      
      private function §5#[§(param1:Event) : void
      {
         if(this.§1!N§ && !this.§^#Z§.isPlaying)
         {
            this.§^#Z§.gotoAndPlay(1);
         }
      }
      
      protected function §6"x§(param1:Event) : void
      {
         if(Boolean(this.§^#Z§) && !this.§1!N§)
         {
            this.§^#Z§.gotoAndStop(0);
         }
      }
   }
}

