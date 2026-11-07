package §6_§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §=!p§.§1e§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §]$&§.§2&2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §#"+§ extends §2&2§
   {
      
      public function §#"+§()
      {
         super();
      }
      
      override public function init(param1:SimpleButton, param2:§1e§, param3:String) : void
      {
         var count:String;
         var price:String;
         var bonus:String = null;
         var button:SimpleButton = param1;
         var option:§1e§ = param2;
         var nameCurrency:String = param3;
         this.option = option;
         §9%<§ = button;
         count = String(option.count);
         this.§`"+§("count_txt",§"-§.§6"j§,count);
         if(option.bonus != 0)
         {
            bonus = "+" + option.bonus;
         }
         else
         {
            bonus = " ";
         }
         this.§`"+§("bonus_txt",§"-§.§6"j§,bonus);
         price = option.price + " " + nameCurrency;
         this.§`"+§("price_text",§"-§.§+$m§,price);
         §9%<§.addEventListener(MouseEvent.CLICK,§2K§);
         §9%<§.addEventListener(MouseEvent.MOUSE_OUT,§6"x§);
         §^#Z§ = (§9%<§.upState as DisplayObjectContainer).getChildByName("clipAnimation") as MovieClip;
         if(§^#Z§)
         {
            §^#Z§.stop();
            if(!§4%G§)
            {
               §4%G§ = true;
               §^#Z§.addFrameScript(0,function(... rest):void
               {
                  §^#Z§.stop();
               });
            }
         }
      }
      
      protected function §`"+§(param1:String, param2:TextFormat, param3:String) : void
      {
         §&$9§.§>&F§((§9%<§.downState as DisplayObjectContainer).getChildByName(param1) as TextField,param2,param3);
         §&$9§.§>&F§((§9%<§.upState as DisplayObjectContainer).getChildByName(param1) as TextField,param2,param3);
         §&$9§.§>&F§((§9%<§.overState as DisplayObjectContainer).getChildByName(param1) as TextField,param2,param3);
      }
   }
}

