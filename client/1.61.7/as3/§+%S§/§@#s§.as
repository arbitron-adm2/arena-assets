package §+%S§
{
   import § !8§.§`!d§;
   import §1#p§.§"Z§;
   import §1&-§.§4!s§;
   import §4#2§.§^S§;
   import §5!9§.§6$,§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8$V§.*;
   import §=7§.*;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §@#s§ extends §`"C§
   {
      
      public static const NAME:String = "ANTITOXIN_BUFF";
      
      private var heal:int;
      
      private var §>$v§:uint;
      
      private var §!$"§:§'%V§;
      
      private var §%&B§:§4!s§;
      
      private var §>J§:Boolean;
      
      public function §@#s§(param1:int, param2:int, param3:Boolean = false)
      {
         this.heal = param1;
         this.§>$v§ = param2;
         this.§>J§ = param3;
         super(NAME,-1,0);
      }
      
      override protected function §5#F§() : void
      {
         if(this.§>$v§ == 0)
         {
            return;
         }
         this.§!$"§ = new §'%V§(this.§>$v§,this.§>J§);
         unit.buffs.replace(this.§!$"§);
         if(this.heal)
         {
            this.§%&B§ = new §4!s§(this.heal,this.§>$v§,true,false,this.§>J§);
            unit.buffs.replace(this.§%&B§);
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         var _loc2_:Boolean = this.§%&B§ && !this.§%&B§.§&h§() && Boolean(this.§!$"§) && !this.§!$"§.§&h§();
         param1.buffs.place(new §@#s§(this.heal,this.§!$"§ ? this.§!$"§.§8#z§() : 0,true));
      }
   }
}

