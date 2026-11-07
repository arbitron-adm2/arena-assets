package §65§
{
   import § !P§.*;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#k§.§-#S§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.§0&I§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §-%B§.§-"o§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2#x§.*;
   import §7!B§.§&"T§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%J§.§!!`§;
   import §=!C§.§0"l§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import §`"p§.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`"C§
   {
      
      public static const §-"^§:int = -1;
      
      public static const §7"#§:int = 1;
      
      protected var name:String;
      
      public var sourceItemId:int = 0;
      
      protected var duration:§&$2§;
      
      protected var value:§&$2§;
      
      protected var counter:§&$2§;
      
      protected var §&%M§:Boolean;
      
      protected var unit:§+%]§;
      
      public function §`"C§(param1:String, param2:int, param3:int = 1)
      {
         super();
         this.name = param1;
         this.duration = new §&$2§(param2);
         this.value = new §&$2§(param3);
         this.counter = new §&$2§(0);
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function §8!t§() : int
      {
         return this.duration.value;
      }
      
      public function getValue() : int
      {
         return this.value.value;
      }
      
      public function §&h§() : Boolean
      {
         return this.§&%M§;
      }
      
      public function reset() : void
      {
         this.counter.value = 0;
      }
      
      public function place(param1:§+%]§) : void
      {
         this.unit = param1;
         this.counter.value = 0;
         this.§5#F§();
      }
      
      public function addValue(param1:int) : void
      {
         this.value.value += param1;
      }
      
      public function §7%?§(param1:int) : void
      {
         this.duration.value += param1;
      }
      
      public function §8#z§() : int
      {
         return this.duration.value - this.counter.value;
      }
      
      public function clear() : void
      {
         if(!this.§&%M§)
         {
            this.§0&"§();
            this.§&%M§ = true;
            this.unit = null;
         }
      }
      
      protected function §5#F§() : void
      {
      }
      
      protected function §0&"§() : void
      {
      }
      
      public function §+"k§(param1:§+%]§) : void
      {
      }
   }
}

