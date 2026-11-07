package §&"R§
{
   import § $q§.§3U§;
   import §!!i§.§@&&§;
   import §##y§.§9§;
   import §#%!§.*;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §0&F§.§0%v§;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §4%_§.§6#W§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?>§.§'!=§;
   import §@!N§.§""L§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`&7§ extends §"&=§
   {
      
      private var icon:§3U§;
      
      public function §`&7§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
         this.icon = new §3U§(getChildByName("icon"),true);
         this.icon.§1&!§(0.95);
         MovieClip(getContainer()).buttonMode = true;
      }
      
      override public function setItem(param1:Object) : void
      {
         super.setItem(param1);
         this.icon.setItem(param1 ? BackpackItem(param1).getRecord() : null);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         super.setDisabled(param1);
         this.icon.getContainer().alpha = param1 ? 0.5 : 1;
         §;b§(!param1);
      }
      
      override protected function §#%S§(param1:MouseEvent) : void
      {
         if(!§@&&§.isMe())
         {
            return;
         }
         super.§#%S§(param1);
         var _loc2_:§&!e§ = BackpackItem(getItem()).getRecord();
      }
   }
}

