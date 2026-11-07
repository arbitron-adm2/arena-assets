package §6#Z§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §#k§.§9$v§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §-"N§.*;
   import §0"L§.*;
   import §2#s§.§7"N§;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §4$b§.§6!G§;
   import §7$t§.§=?§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §=7§.§?%4§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   use namespace gestouch_internal;
   
   public class §4#V§
   {
      
      public static const §&"k§:int = 100;
      
      private static const §1"f§:§&$2§ = new §&$2§(10000);
      
      private static const §=##§:Number = 0.15;
      
      private var §`;§:Number;
      
      private var §2p§:Number;
      
      public function §4#V§(param1:Number)
      {
         super();
         this.§`;§ = param1 > §=##§ ? §=##§ : param1;
         this.§2p§ = param1 / §1"f§.value;
      }
      
      final protected function §>?§(param1:int, param2:int, param3:uint) : Boolean
      {
         var _loc5_:Boolean = false;
         if(param3 > 400)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"damage radius " + param3));
         }
         var _loc4_:Boolean = Application.scene.height - Application.scene.§#%0§() - §&"k§ > param2;
         if((_loc4_) && !§>#9§.point(param1,param2,true))
         {
            return Math.random() < this.§2p§ * param3 * param3;
         }
         return false;
      }
   }
}

