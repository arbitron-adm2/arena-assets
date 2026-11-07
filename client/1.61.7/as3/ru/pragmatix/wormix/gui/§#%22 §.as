package ru.pragmatix.wormix.gui
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§@x§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §2#H§.§#$A§;
   import §2#H§.§,#V§;
   import §2#W§.§ #,§;
   import §3%?§.§=E§;
   import §4%_§.§6#W§;
   import §4'§.§^"p§;
   import §4^§.§4!w§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §9"^§.UserParamsMenu;
   import §<!W§.*;
   import §<$2§.§<%>§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%'§.§<"G§;
   import §[%§.Boar;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.ReplaceQuestTask;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import vk.§,#n§;
   
   public class §#" § extends §4#_§
   {
      
      private var §4$@§:UserParamsMenu;
      
      public var §`!X§:Boolean = false;
      
      private var icon:SimpleButton;
      
      private var hint:String;
      
      public function §#" §(param1:DisplayObject, param2:String)
      {
         super(param1);
         this.icon = SimpleButton(param1);
         this.icon.addEventListener(MouseEvent.CLICK,this.§`$w§);
         this.hint = param2;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §-%m§ = §`!v§.§3"[§;
      }
      
      private function §`$w§(param1:MouseEvent) : void
      {
         this.§'"t§.show();
      }
      
      public function update() : void
      {
         if(this.§4$@§)
         {
            this.§4$@§.update();
         }
         if(this.§`!X§)
         {
            this.icon.removeEventListener(MouseEvent.CLICK,this.§`$w§);
         }
         else
         {
            this.icon.addEventListener(MouseEvent.CLICK,this.§`$w§);
         }
      }
      
      public function get §'"t§() : UserParamsMenu
      {
         if(!this.§4$@§)
         {
            this.§4$@§ = new UserParamsMenu();
         }
         return this.§4$@§;
      }
      
      public function §%%S§(param1:Boolean) : void
      {
         var _loc2_:String = param1 ? §+"'§.§3%y§ : §+"'§.§]!H§;
         setQtip(this.hint,§;#^§.§[!K§,_loc2_);
      }
   }
}

