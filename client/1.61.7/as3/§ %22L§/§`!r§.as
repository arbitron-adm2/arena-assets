package § "L§
{
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §%"1§.§=#?§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §+%S§.§2!I§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2B§.§8"n§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §]$&§.§2&2§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §`!r§ extends §2%0§
   {
      
      protected var §2$u§:Point;
      
      protected var §+%e§:Point;
      
      public function §`!r§(param1:int, param2:int, param3:Point, param4:Point, param5:int = 0)
      {
         var _loc6_:MovieClip = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super(param1,param2,param5);
         this.§2$u§ = param3;
         this.§+%e§ = param4;
         stable = true;
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.START_TURN_SWITCHING,this.§1n§);
         if(Boolean(Application.instance.§#&7§() && §8"%§.§&S§.§'`§()) && Boolean(param3) && Boolean(param4))
         {
            _loc6_ = new MovieClip();
            _loc7_ = param4.x - param3.x;
            _loc8_ = param4.y - param3.y;
            _loc6_.graphics.beginFill(this is RocketTurret ? 16776960 : 16711680,0.2);
            _loc6_.graphics.drawRect(0,0,_loc7_,_loc8_);
            _loc6_.graphics.endFill();
            _loc6_.name = "trigger";
            _loc6_.x = param3.x;
            _loc6_.y = param3.y;
            Application.scene.addChild(_loc6_);
         }
      }
      
      override public function §!!>§() : void
      {
         this.§3K§();
         super.§!!>§();
      }
      
      protected function §3K§() : void
      {
      }
      
      protected function §@%D§(param1:Event) : void
      {
         target = §8"%§.§?!W§.§4"m§.activeUnit;
      }
      
      protected function §1n§(param1:Event) : void
      {
         target = null;
      }
      
      protected function get §9u§() : Number
      {
         return §-q§.§7%8§(head.rotation);
      }
      
      protected function get checkTargets() : Boolean
      {
         return §<H§.§%$Q§(this.§2$u§.x,this.§2$u§.y,this.§+%e§.x,this.§+%e§.y,new <§&"T§>[target]).length > 0;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.START_TURN_SWITCHING,this.§1n§);
      }
   }
}

