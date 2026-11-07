package §+%S§
{
   import §#P§.§`o§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §65§.§%%o§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.JoinToChatResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7%f§ extends §%%o§
   {
      
      public static const NAME:String = "BOOMERANG_DEBUFF";
      
      private var effectClip:MovieClip;
      
      public function §7%f§()
      {
         super(NAME,1,0);
      }
      
      override protected function §5#F§() : void
      {
         this.effectClip = §6#A§.§!&6§(§1"-§.BOOMERANG_DEBUFF);
         unit.§#"%§(this.effectClip,0,0,false);
         if(unit.attributes.hp.§@#@§() == 0)
         {
            unit.buffs.§6C§(NAME);
         }
      }
      
      override protected function §0&"§() : void
      {
         unit.§'$§(this.effectClip);
         this.effectClip = null;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §7%f§());
      }
   }
}

