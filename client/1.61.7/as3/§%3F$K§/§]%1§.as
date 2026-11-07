package §?$K§
{
   import § #k§.*;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §#"V§.§8"@§;
   import §#5§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §4!!§.§76§;
   import §4f§.§-&§;
   import §6%2§.§#"B§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §8#<§.*;
   import §;!Z§.*;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=&6§.*;
   import §=7§.§?%4§;
   import §?>§.§0!7§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import com.greensock.events.LoaderEvent;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]%1§ extends §3#j§
   {
      
      public static const NAME:String = "PVP_WATER_PROTECTION_BUFF";
      
      private static const §'#v§:uint = 100;
      
      private var §4%u§:§&$2§ = new §&$2§();
      
      public function §]%1§(param1:uint = 100)
      {
         super(false,NAME);
         this.§4%u§.value = param1;
      }
      
      override protected function onSink(param1:Event) : void
      {
         super.onSink(param1);
         if(Boolean(unit) && !unit.disposed)
         {
            §'"$§.§]#I§(null,unit.x,unit.y,unit,1 * this.§4%u§.value,0,0,true,true);
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §]%1§(this.§4%u§.value));
      }
   }
}

