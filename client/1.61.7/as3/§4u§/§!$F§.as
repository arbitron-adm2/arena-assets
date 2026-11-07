package §4u§
{
   import §'!Z§.§2!H§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §7!B§.*;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §?#g§.§&"P§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#o§.§[&7§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!$F§ extends §;$H§
   {
      
      protected static const §8"m§:TextFormat = new TextFormat("Arial",12,null,true);
      
      protected var §^"o§:TextField;
      
      protected var §[&1§:TextField;
      
      protected var §4&D§:TextField;
      
      public function §!$F§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.§4&D§ = TextField(getChildByName("itemName"));
         this.§^"o§ = TextField(getChildByName("description"));
         this.§[&1§ = TextField(getChildByName("note"));
      }
      
      public function initHint(param1:§&!e§) : void
      {
         this.§4&D§.autoSize = TextFieldAutoSize.LEFT;
         this.§4&D§.text = param1.§7%z§();
         this.§4&D§.setTextFormat(§8"m§);
         §8$<§ = this.§4&D§.y + this.§4&D§.height;
      }
   }
}

