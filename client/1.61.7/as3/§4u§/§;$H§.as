package §4u§
{
   import § #m§.§?A§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'%[§.§#&B§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §2"L§.§##l§;
   import §2"L§.§^$y§;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §8$V§.*;
   import §?$L§.§&$9§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §[!`§.VoidZone;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §;$H§ extends §`&-§ implements §?A§
   {
      
      protected var §8$<§:Number = 0;
      
      protected var panel:MovieClip;
      
      public function §;$H§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.panel = MovieClip(getChildByName("panel"));
      }
      
      public function §&k§() : DisplayObject
      {
         return this.panel;
      }
      
      protected function §8$Q§() : void
      {
         this.panel.height = this.§8$<§ + 10;
      }
      
      public function §`b§(param1:Boolean, param2:String, param3:String, param4:String = "", param5:String = "") : void
      {
         var _loc7_:TextField = null;
         var _loc6_:TextField = §'%s§(param3);
         _loc6_.text = param2;
         _loc6_.visible = param1;
         _loc6_.y = this.§8$<§;
         if(param4 != "" && param5 != "")
         {
            _loc7_ = §&$9§.§<#§(this,param4,param5);
            _loc7_.visible = param1;
            _loc7_.y = this.§8$<§;
         }
         else
         {
            _loc6_.autoSize = TextFieldAutoSize.LEFT;
         }
         if(param1)
         {
            this.§8$<§ = _loc6_.y + _loc6_.height;
         }
      }
   }
}

