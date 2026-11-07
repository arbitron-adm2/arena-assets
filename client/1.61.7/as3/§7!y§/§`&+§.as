package §7!y§
{
   import § $q§.§-%f§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §&x§.*;
   import §'!Z§.§1"-§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §2#i§.§+%z§;
   import §6"'§.§&"3§;
   import §6$z§.BonusStat;
   import §7"Q§.§0$L§;
   import §7$1§.StickyMine;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!"G§;
   import §;!J§.§8!a§;
   import §<$2§.§+$9§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^!]§.MineActivateEvent;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^4§.§@#J§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`&+§ extends BonusStat
   {
      
      private static const §`%x§:Number = 5;
      
      private static const §5%y§:Number = 0.1;
      
      public function §`&+§()
      {
         super();
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         this.§#!A§();
      }
      
      override public function subtract(param1:int) : void
      {
         super.subtract(param1);
         this.§#!A§();
      }
      
      private function §#!A§() : void
      {
         var _loc1_:Number = Math.min(§`%x§,§5%y§ * getValue());
         owner.§&"u§(_loc1_);
      }
   }
}

