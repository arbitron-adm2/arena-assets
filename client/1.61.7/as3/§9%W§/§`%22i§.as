package §9%W§
{
   import § %f§.Parasite;
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§]&§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §4!!§.§6$V§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@!i§.§5&4§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`"i§
   {
      
      private var frames:§&$2§ = new §&$2§(0);
      
      private var §`$f§:Number;
      
      public var §=&C§:§&$2§;
      
      public var §<"a§:§&$2§;
      
      private var unit:§+%]§;
      
      private var §6!e§:§!7§;
      
      public function §`"i§(param1:§+%]§, param2:§!7§)
      {
         super();
         this.unit = param1;
         this.§6!e§ = param2;
      }
      
      public static function §9!e§(param1:§+%]§) : Boolean
      {
         return Boolean(param1) && param1.buffs.hasBuff(§]&§.NAME) && !§]&§.§4$c§(param1.weapon);
      }
      
      public function §4%@§() : void
      {
         var _loc1_:§]&§ = §]&§(this.unit.buffs.getBuff(§]&§.NAME));
         if(!_loc1_)
         {
            return;
         }
         this.start(_loc1_.delay,_loc1_.period,_loc1_.angle);
      }
      
      public function start(param1:uint, param2:uint, param3:Number) : void
      {
         this.§`$f§ = param3;
         this.§=&C§ = new §&$2§(param2);
         this.§<"a§ = new §&$2§(param1);
         Application.scene.addEventListener(§0%v§.FRAME,this.§ `§);
      }
      
      public function deactivate() : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.§ `§);
         this.unit = null;
      }
      
      protected function § `§(param1:Event) : void
      {
         if(this.§6!e§.isActive())
         {
            ++this.frames.value;
            this.§6!e§.§7$d§();
            if(this.frames.value >= this.§<"a§.value && this.frames.value % this.§=&C§.value == 0)
            {
               this.§6!e§.angle += §-q§.§4&8§() * this.§`$f§;
               if(this.§6!e§.angle < 0)
               {
                  this.§6!e§.§5"?§();
               }
               else
               {
                  this.§6!e§.§8#F§();
               }
               this.§6!e§.§'"`§();
            }
         }
      }
      
      public function set angleFluct(param1:Number) : void
      {
         this.§`$f§ = param1;
      }
   }
}

