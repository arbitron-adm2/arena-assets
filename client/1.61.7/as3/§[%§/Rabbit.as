package §[%§
{
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §'T§.§!$C§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §1A§.*;
   import §2#i§.§9##§;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7$t§.§;#_§;
   import §<!W§.§>&@§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[$P§.§[!0§;
   import §]$v§.§1>§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§`!a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.structures.*;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Rabbit extends §+%]§
   {
      
      public static const §+"z§:§&$2§ = new §&$2§(6);
      
      public static const §'#^§:§&$2§ = new §&$2§(984);
      
      public static const §@%,§:§&$2§ = new §&$2§(15);
      
      private static const §5d§:Number = 0.5;
      
      private var §##"§:§[!0§;
      
      private var §<F§:int;
      
      public function Rabbit(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         attributes.jump = this.§##"§ = new §[!0§(this,attributes.jump);
         attributes.jump.§4!D§(1);
         this.§##"§.§`?§(6);
         if(param1.getRace().§%§(§`!a§.§4!W§).getLevel() <= param1.getLevel())
         {
            buffs.place(new §>&@§());
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         this.§##"§.addJumpsPowerBonus(this.§<F§);
      }
      
      public function addJumpsPowerBonus(param1:int) : void
      {
         if(this.§##"§)
         {
            this.§##"§.addJumpsPowerBonus(param1);
         }
         else
         {
            Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
            this.§<F§ = param1;
         }
      }
      
      public function §8%B§() : Boolean
      {
         return true;
      }
      
      public function §%!h§() : void
      {
      }
   }
}

