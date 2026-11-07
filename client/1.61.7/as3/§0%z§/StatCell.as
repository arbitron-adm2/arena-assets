package §0%z§
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+%S§.§2&>§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §4#2§.§,$8§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §>"l§.§#!Y§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class StatCell extends §"&=§
   {
      
      private var title:TextField;
      
      private var points:TextField;
      
      public function StatCell(param1:MovieClip)
      {
         super(param1);
         this.title = §'%s§("title");
         this.points = §'%s§("points");
      }
      
      public function setData(param1:Object) : void
      {
         this.title.text = param1.name;
         id = param1.id;
      }
      
      public function §,%&§(param1:uint = 0) : void
      {
         this.points.text = param1.toString();
      }
   }
}

