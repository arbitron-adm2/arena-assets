package ru.pragmatix.wormix.gui.menu.rating
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §4f§.§-&§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §?#g§.§&"P§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   
   public class §&m§ extends §`&-§
   {
      
      private var upIcon:MovieClip;
      
      private var §?"Q§:TextField;
      
      private var downIcon:MovieClip;
      
      private var §<!l§:TextField;
      
      private var §+%4§:MovieClip;
      
      public function §&m§(param1:DisplayObject = null)
      {
         super(param1);
         §#!`§().mouseChildren = false;
         this.upIcon = §'$a§("upIcon");
         this.§?"Q§ = §'%s§("upValue");
         this.downIcon = §'$a§("downIcon");
         this.§<!l§ = §'%s§("downValue");
         this.§+%4§ = §'$a§("equals");
         setQtip(§0$N§.§%! §("PREV_SEASON_DELTA_QTIP"),§;#^§.DEFAULT,§+"'§.§3%y§);
      }
      
      public function § %=§() : void
      {
         this.§5§(false);
         this.§`"6§(false);
         this.§[$@§(false);
      }
      
      public function §?#,§(param1:int) : void
      {
         this.§ %=§();
         if(param1 > 0)
         {
            this.§5§(true,param1);
         }
         else if(param1 < 0)
         {
            this.§`"6§(true,param1);
         }
         else if(param1 == 0)
         {
            this.§[$@§(true);
         }
      }
      
      private function §5§(param1:Boolean, param2:int = 0) : void
      {
         this.upIcon.visible = param1;
         this.§?"Q§.visible = param1;
         §&$9§.§>&F§(this.§?"Q§,§"-§.§6"j§,String(param2));
      }
      
      private function §`"6§(param1:Boolean, param2:int = 0) : void
      {
         this.downIcon.visible = param1;
         this.§<!l§.visible = param1;
         §&$9§.§>&F§(this.§<!l§,§"-§.§6"j§,String(Math.abs(param2)));
      }
      
      private function §[$@§(param1:Boolean) : void
      {
         this.§+%4§.visible = param1;
      }
   }
}

