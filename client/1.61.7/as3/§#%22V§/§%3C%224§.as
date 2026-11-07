package §#"V§
{
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%"§.§[!^§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §7!B§.§&"T§;
   import §7$t§.§2"y§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §<!^§.§["l§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=&!§.§<$Z§;
   import §=1§.*;
   import §?!E§.*;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §<"4§ extends §`&-§ implements §?%>§
   {
      
      private var button:§0%9§;
      
      private var §!p§:Boolean;
      
      public function §<"4§(param1:MovieClip)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         var _loc2_:SimpleButton = getChildByName("btn") as SimpleButton;
         if(_loc2_)
         {
            this.button = new §0%9§(_loc2_);
         }
         else
         {
            MovieClip(param1).buttonMode = true;
         }
         §0A§(MouseEvent.CLICK,this.§'$9§);
         if(!this.button)
         {
            §@$j§ = § "N§.§,M§;
            §-%m§ = § "N§.§=%b§;
         }
      }
      
      public function §[!u§(param1:Function, param2:int = 0) : void
      {
         addEventListener(MouseEvent.CLICK,param1,false,param2);
      }
      
      public function removeHandler(param1:Function) : void
      {
         removeEventListener(MouseEvent.CLICK,param1);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         if(!this.§!p§)
         {
            MovieClip(container).mouseEnabled = !param1;
            MovieClip(container).enabled = !param1;
            §#!`§().mouseChildren = !param1;
         }
         super.setDisabled(param1);
      }
      
      private function §'$9§(param1:MouseEvent) : void
      {
         if(disabled && this.§!p§)
         {
            return;
         }
         dispatchEvent(param1);
      }
      
      override public function destroy() : void
      {
         if(this.button)
         {
            this.button.destroy();
         }
         super.destroy();
      }
      
      public function setText(param1:String, param2:TextFormat = null, param3:String = "text") : void
      {
         var _loc4_:TextField = null;
         if(this.button)
         {
            this.button.setText(param1,param2,param3);
         }
         if(§?Q§)
         {
            _loc4_ = TextField(§`o§.getChildByName(§?Q§ as DisplayObjectContainer,param3));
            if(param2)
            {
               §&$9§.§>&F§(_loc4_,param2);
            }
            _loc4_.text = param1;
         }
      }
      
      public function get simpleButton() : SimpleButton
      {
         return this.button.simpleButton;
      }
      
      public function get §-!A§() : Boolean
      {
         return this.§!p§;
      }
      
      public function set §-!A§(param1:Boolean) : void
      {
         this.§!p§ = param1;
      }
   }
}

