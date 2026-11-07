package §&§
{
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §+%S§.§]&§;
   import §0%[§.§0%§;
   import §4!K§.§^%A§;
   import §4!x§.§@& §;
   import §4%_§.§3§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §;"9§.§;"c§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?#g§.§&"P§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@#K§.§3&2§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextFieldType;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §0"v§ extends §,%C§
   {
      
      public function §0"v§()
      {
         super(§6#A§.§!&6§(§+"'§.§?"]§));
         countTxt.type = TextFieldType.INPUT;
         countTxt.restrict = "0123456789";
         countTxt.maxChars = 3;
         countTxt.addEventListener(Event.CHANGE,this.§3!W§);
         countTxt.selectable = true;
      }
      
      override public function open(param1:§&!e§, param2:uint, param3:uint) : void
      {
         super.open(param1,param2,param3);
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,param1.§7%z§());
         countTxt.stage.focus = countTxt;
      }
      
      override protected function §7%I§(param1:Event) : void
      {
         if(parseInt(countTxt.text) <= 1)
         {
            countTxt.text = §4&5§.§`$J§.toString();
            this.setCount(parseInt(countTxt.text));
         }
         else
         {
            super.§7%I§(param1);
         }
      }
      
      override protected function §!J§(param1:Event) : void
      {
         if(parseInt(countTxt.text) == §4&5§.§`$J§)
         {
            countTxt.text = String(1);
            this.setCount(parseInt(countTxt.text));
         }
         else
         {
            super.§!J§(param1);
         }
      }
      
      override protected function setCount(param1:int) : void
      {
         §&$9§.§>&F§(countTxt,§"-§.§6"j§,param1.toString());
         §'!`§(item.§4$n§() * param1,item.getRealPrice() * param1);
      }
      
      private function §3!W§(param1:Event = null) : void
      {
         if(!countTxt.text)
         {
            countTxt.text = String(1);
         }
         var _loc2_:int = Math.max(1,Math.min(parseInt(countTxt.text),§4&5§.§`$J§));
         this.setCount(_loc2_);
      }
   }
}

