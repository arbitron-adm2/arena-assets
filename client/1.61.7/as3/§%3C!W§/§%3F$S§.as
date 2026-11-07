package §<!W§
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §##j§.§'"%§;
   import §##j§.§7,§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2"v§.§@G§;
   import §3#T§.§5!M§;
   import §4%_§.§6#W§;
   import §6"'§.§&"3§;
   import §6"'§.§=$@§;
   import §65§.§`"C§;
   import §7$1§.§;$n§;
   import §7$t§.*;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§&!P§;
   import §;!J§.*;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §@!i§.§!m§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import vk.*;
   
   public class §?$S§ extends §`"C§
   {
      
      public static const §'$,§:§&$2§ = new §&$2§(12);
      
      private static const §+#Z§:§&$2§ = new §&$2§(4);
      
      public static const NAME:String = "DRAGON_EMBERS_BUFF";
      
      private var §^#x§:Vector.<§6#W§> = new Vector.<§6#W§>(0);
      
      private var §#a§:§&$2§ = new §&$2§(0);
      
      private var §3!h§:Boolean;
      
      public function §?$S§()
      {
         super(NAME,-1);
      }
      
      override protected function §5#F§() : void
      {
         unit.addEventListener(§0%v§.UNIT_ACTIVATION,this.§9!!§);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
      }
      
      private function §9!!§(param1:Event = null) : void
      {
         if(!this.§3!h§)
         {
            this.§3!h§ = true;
            Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         }
      }
      
      override protected function §0&"§() : void
      {
         unit.removeEventListener(§0%v§.UNIT_ACTIVATION,this.§9!!§);
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         this.§^#x§.length = 0;
      }
      
      private function §@%D§(param1:Event) : void
      {
         this.§#a§.value = 0;
         this.§^#x§.length = 0;
         if(§8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            this.§9!!§();
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(this.§^#x§.length > 0)
         {
            §@%;§.play(§`!v§.§+"#§);
         }
         if(this.§3!h§)
         {
            this.§3!h§ = false;
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         if(Boolean(unit && !unit.disposed && unit.crawling != 0) && Boolean(this.§#a§.value++ >= §+#Z§.value) && !Application.scene.§@$I§.§=%d§())
         {
            this.§7;§();
         }
      }
      
      private function §7;§() : void
      {
         if(this.§^#x§.length >= §'$,§.value)
         {
            this.§^#x§[0].§6"h§();
            this.§^#x§.splice(0,1);
         }
         var _loc1_:uint = 20;
         var _loc2_:Number = unit.x + 5 * unit.direction;
         var _loc3_:Number = unit.y + §<H§.§-#C§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc1_)
         {
            if(§>#9§.point(_loc2_,_loc4_))
            {
               this.§^#x§.push(new §6#W§(unit,_loc2_,_loc4_ - 1));
               break;
            }
            _loc4_++;
         }
         this.§#a§.value = 0;
      }
   }
}

