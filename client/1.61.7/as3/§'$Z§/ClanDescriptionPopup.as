package §'$Z§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §+$=§.§6#A§;
   import §4!x§.§@& §;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§7"U§;
   import §@!i§.§"-§;
   import §@"!§.§ %@§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`,§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   
   public class ClanDescriptionPopup extends §@& §
   {
      
      private var clan:ClanTO;
      
      private var titleLabel:TextField;
      
      private var description:§`,§;
      
      private var closeBtn:§?%>§;
      
      public function ClanDescriptionPopup(param1:ClanTO)
      {
         this.clan = param1;
         super(§6#A§.§!&6§(§+"'§.§1l§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.titleLabel = §'%s§("title");
         §&$9§.§>&F§(this.titleLabel,§"-§.§+$m§,this.clan.name);
         var _loc2_:TextField = §'%s§("description");
         §&$9§.§>&F§(_loc2_,§"-§.§+$m§,this.clan.clanDescription);
         this.description = new §`,§(_loc2_,getChildByName("scroll") as DisplayObjectContainer);
         this.description.setText(this.clan.clanDescription);
         this.description.§,!x§(§7"U§.§>$A§(this.clan.clanDescription));
         this.description.§4" §(§"-§.§+$m§,true);
         this.description.pageSize = 5;
         this.closeBtn = §!&5§.§7#[§(getChildByName("closeBtn"));
         this.closeBtn.§[!u§(§0!j§);
      }
   }
}

