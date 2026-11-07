package §+%S§
{
   import §!!i§.§@&&§;
   import §#",§.§?§;
   import §##y§.§9§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1&-§.§>%`§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class KamikazeBuff extends §>%`§
   {
      
      public static const NAME:String = "KAMIKAZE";
      
      public function KamikazeBuff(param1:§5$n§)
      {
         super(NAME,param1);
      }
      
      override protected function §5#F§() : void
      {
         super.§5#F§();
         Application.scene.addEventListener(§0%v§.UNIT_DEACTIVATION,this.trigger);
      }
      
      override protected function §0&"§() : void
      {
         super.§0&"§();
         if(!§&%M§)
         {
            Application.scene.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.trigger);
         }
      }
      
      protected function trigger(param1:Event) : void
      {
         if(!§&%M§ && !unit.disposed && §8"%§.§?!W§.§4"m§.activeSquad == unit.squad)
         {
            apply();
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new KamikazeBuff(paramSet));
      }
   }
}

