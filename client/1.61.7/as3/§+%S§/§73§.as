package §+%S§
{
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §#!5§.§>S§;
   import §##y§.§9§;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §2"L§.§^$y§;
   import §65§.§%%o§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §73§ extends §%%o§
   {
      
      public static const NAME:String = "REDUCTION_ARMOR_DEBUFF";
      
      public static const §%!y§:int = 1;
      
      private var §@#w§:§&$2§ = new §&$2§(0);
      
      private var effectClip:MovieClip;
      
      private var §?#B§:Boolean = false;
      
      public function §73§(param1:int, param2:int = 1)
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
         this.§@#w§.value = getValue();
         unit.attributes.armor.§5#l§(-this.§@#w§.value);
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
         unit.attributes.armor.§5#l§(this.§@#w§.value);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §73§(getValue(),§8#z§()));
      }
   }
}

