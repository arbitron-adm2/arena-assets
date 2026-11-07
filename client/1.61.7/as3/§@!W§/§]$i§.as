package §@!W§
{
   import § "L§.§`#r§;
   import § #m§.§;#^§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%# §.§@a§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§##B§;
   import §+%S§.§2&>§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2#8§.§6"a§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §?#g§.§-!k§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$P§.§8%R§;
   import §[%§.*;
   import §^!]§.TeleportEvent;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]$i§ extends §`&-§
   {
      
      protected var btnOn:§?%>§;
      
      protected var btnOff:§?%>§;
      
      protected var §[V§:Boolean;
      
      public function §]$i§(param1:DisplayObjectContainer, param2:String = "btnOn", param3:String = "btnOff")
      {
         super(param1);
         this.btnOn = §!&5§.§7#[§(getChildByName(param2));
         this.btnOn.§[!u§(this.§'$9§);
         this.btnOff = §!&5§.§7#[§(getChildByName(param3));
         this.btnOff.§[!u§(this.§'$9§);
         MovieClip(param1).buttonMode = true;
         this.update();
      }
      
      override public function setQtip(param1:String, param2:§;#^§ = null, param3:String = null, param4:TextFormat = null) : void
      {
         this.btnOff.setQtip(param1,param2,param3,param4);
         this.btnOn.setQtip(param1,param2,param3,param4);
      }
      
      protected function §'$9§(param1:Event) : void
      {
         this.§[V§ = !this.§[V§;
         this.update();
      }
      
      public function update() : void
      {
         this.btnOn.setVisible(this.§[V§);
         this.btnOff.setVisible(!this.§[V§);
      }
      
      public function §`!n§(param1:Boolean) : void
      {
         this.§[V§ = param1;
         this.update();
      }
      
      public function get §@%b§() : Boolean
      {
         return this.§[V§;
      }
   }
}

