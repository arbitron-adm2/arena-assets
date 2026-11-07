package §]$&§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'&"§.§,&3§;
   import §'&"§.§8$D§;
   import §'&"§.§=!x§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §2#s§.§7"N§;
   import §3#a§.§<#_§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §=!p§.§1e§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§<$!§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.§;"I§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpRetryCommandRequestServer;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §2&2§
   {
      
      protected var §9%<§:SimpleButton;
      
      protected var option:§1e§;
      
      protected var §^#Z§:MovieClip;
      
      protected var §1!N§:Boolean;
      
      protected var §4%G§:Boolean;
      
      public function §2&2§()
      {
         super();
      }
      
      public function init(param1:SimpleButton, param2:§1e§, param3:String) : void
      {
         var count:String;
         var price:String;
         var bonus:String = null;
         var button:SimpleButton = param1;
         var option:§1e§ = param2;
         var currencyText:String = param3;
         var pricePlaceholder:String = "{price}";
         if(currencyText.indexOf(pricePlaceholder) == -1)
         {
            currencyText = "{price} " + currencyText;
         }
         this.option = option;
         this.§9%<§ = button;
         count = String(option.count);
         this.§>%h§(2,§"-§.§6"j§,count);
         if(option.bonus != 0)
         {
            bonus = "+" + option.bonus;
         }
         else
         {
            bonus = " ";
         }
         this.§>%h§(3,§"-§.§6"j§,bonus);
         price = currencyText.replace(pricePlaceholder,option.price);
         this.§>%h§(4,§"-§.§+$m§,price);
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
      
      protected function §>%h§(param1:uint, param2:TextFormat, param3:String) : void
      {
         §&$9§.§>&F§((this.§9%<§.downState as DisplayObjectContainer).getChildAt(param1) as TextField,param2,param3);
         §&$9§.§>&F§((this.§9%<§.upState as DisplayObjectContainer).getChildAt(param1) as TextField,param2,param3);
         §&$9§.§>&F§((this.§9%<§.overState as DisplayObjectContainer).getChildAt(param1) as TextField,param2,param3);
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

