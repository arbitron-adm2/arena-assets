package §@!i§
{
   import § !P§.§9%Z§;
   import § &5§.§=#P§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §'!Z§.§2!H§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §@!N§.§""L§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §8%6§
   {
      
      private var id:int;
      
      private var name:String;
      
      protected var award:§1%z§;
      
      private var §6$b§:Class;
      
      private var description:String;
      
      public function §8%6§(param1:int, param2:String, param3:Class, param4:String, param5:§1%z§)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.award = param5;
         this.§6$b§ = param3;
         this.description = param4;
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function §2!T§() : §1%z§
      {
         return this.award;
      }
      
      public function getClass() : Class
      {
         return this.§6$b§;
      }
      
      public function §]G§() : String
      {
         return this.description;
      }
   }
}

