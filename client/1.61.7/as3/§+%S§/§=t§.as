package §+%S§
{
   import § %f§.Parasite;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §65§.§=&9§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §=t§ extends §=&9§
   {
      
      public static const NAME:String = "GAS";
      
      public static const § &G§:uint = 1;
      
      public static const §!$k§:int = 1;
      
      private var §&J§:int;
      
      public function §=t§(param1:int = 0)
      {
         super(NAME,§ &G§,§!$k§);
         this.§&J§ = param1;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §=t§());
      }
      
      public function get §'I§() : int
      {
         return this.§&J§;
      }
   }
}

