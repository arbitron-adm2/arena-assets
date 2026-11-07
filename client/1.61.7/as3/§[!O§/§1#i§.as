package §[!O§
{
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §4%_§.§3§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §;"9§.§;"c§;
   import §<%k§.§`!v§;
   import §?#g§.§&"P§;
   import §@!i§.§!m§;
   import §@#K§.§3&2§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.StartBattle;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §1#i§ extends Event
   {
      
      public static const ACTION_PACKET:String = "ACTION_PACKET";
      
      public var firstFrame:uint;
      
      public var lastFrame:uint;
      
      public var bulk:§@&D§;
      
      public function §1#i§(param1:uint, param2:uint, param3:§@&D§, param4:Boolean = false, param5:Boolean = false)
      {
         super(ACTION_PACKET,param4,param5);
         this.firstFrame = param1;
         this.lastFrame = param2;
         this.bulk = param3;
      }
      
      override public function clone() : Event
      {
         return new §1#i§(this.firstFrame,this.lastFrame,this.bulk,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("FrameTimerEvent","type","bubbles","cancelable","eventPhase","firstFrame","lastFrame","actionsByFrame");
      }
   }
}

