package §+%S§
{
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §65§.§%%o§;
   import §<%k§.§`!v§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §[$<§.§>$o§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import org.gestouch.extensions.native.NativeDisplayListAdapter;
   import org.gestouch.extensions.native.NativeTouchHitTester;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §"#E§ extends §%%o§
   {
      
      public static const NAME:String = "STATS_REDUCTION_DEBUFF";
      
      public static const §%!y§:int = 3;
      
      private var §42§:§&$2§ = new §&$2§(0);
      
      private var §0!A§:§&$2§ = new §&$2§(0);
      
      private var effectClip:MovieClip;
      
      private var §?#B§:Boolean = false;
      
      public function §"#E§(param1:int, param2:int = 3)
      {
         super(NAME,param2,param1);
      }
      
      override protected function §5#F§() : void
      {
         if(!this.§?#B§)
         {
            this.§?#B§ = true;
            if(Boolean(unit) && !unit.disposed)
            {
               this.effectClip = §6#A§.§!&6§(§1"-§.§9$i§);
               unit.§#"%§(this.effectClip,0,0,false);
            }
         }
         this.§42§.value = 0 < unit.attributes.armor.value ? getValue() : 0;
         this.§0!A§.value = 0 < unit.attributes.attack.value ? getValue() : 0;
         unit.attributes.armor.§7K§(-this.§42§.value);
         unit.attributes.attack.§7K§(-this.§0!A§.value);
         if(unit.buffs.hasBuff(§;!4§.NAME))
         {
         }
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            if(this.effectClip)
            {
               unit.§'$§(this.effectClip);
            }
            this.effectClip = null;
            this.§?#B§ = false;
         }
         unit.attributes.armor.§7K§(this.§42§.value);
         unit.attributes.attack.§7K§(this.§0!A§.value);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §"#E§(getValue(),§8#z§()));
      }
   }
}

