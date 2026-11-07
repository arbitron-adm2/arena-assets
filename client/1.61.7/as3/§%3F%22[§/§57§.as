package §?"[§
{
   import § !P§.*;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §&$Y§.§2$4§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§9#x§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[$P§.§8%R§;
   import §^!]§.WeaponShootEvent;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.system.Capabilities;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §57§ extends §2$4§
   {
      
      public function §57§(param1:§1#+§)
      {
         super(param1);
      }
      
      override public function §&"J§(param1:§2"B§) : String
      {
         return "";
      }
      
      override public function §-"U§() : String
      {
         return §8"%§.§[f§.§0#C§() + "";
      }
      
      override public function §1"@§() : Boolean
      {
         return true;
      }
      
      override public function §!"?§() : String
      {
         return §8"%§.§[f§.§0#C§() + "/settings";
      }
      
      override public function §"!5§() : Boolean
      {
         return true;
      }
      
      override public function §8!?§() : Boolean
      {
         return true;
      }
      
      override public function §;`§() : uint
      {
         if(Capabilities.screenResolutionY <= 800)
         {
            return 640;
         }
         return super.§;`§();
      }
      
      override public function §#$I§() : Date
      {
         return new Date(2015,2);
      }
      
      override public function §9!@§() : Date
      {
         return new Date(2015,1,1,0,0);
      }
      
      override public function §2$@§() : Boolean
      {
         return false;
      }
   }
}

