package § &5§
{
   import § %f§.§;$y§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#!5§.*;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§-#S§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §+#P§.§]!E§;
   import §+%S§.§?3§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §1#p§.§2=§;
   import §2"L§.*;
   import §2#x§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.display.GradientType;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.SpreadMethod;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.core.GestureState;
   import org.gestouch.events.GestureEvent;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Water extends MovieClip
   {
      
      private static const log:§&`§ = new §&`§(Water);
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private var §<$V§:Sprite;
      
      private var §&%y§:Sprite;
      
      private var §@&8§:Sprite;
      
      private var §0&5§:Sprite;
      
      private var summ:int = -10;
      
      private var move:Number = 0;
      
      private var §6"-§:int;
      
      private var §[!x§:Array = [];
      
      private var §;!"§:int;
      
      private var §`!x§:Number;
      
      private var §'$]§:Array = [2045289,4081559];
      
      private var §&"O§:Array = [1,0.6];
      
      private var §7%v§:Array = [40,255];
      
      private var §5!@§:Array = [2045289,5463733];
      
      private var §3$H§:Array = [0.4,0.5];
      
      private var §^&#§:Array = [55,255];
      
      private var §2"u§:Matrix;
      
      private var §=r§:String;
      
      private var §#"q§:Boolean;
      
      public function Water(param1:§9$Z§)
      {
         super();
         this.§;!"§ = param1.§5"w§;
         this.§6"-§ = 100;
         this.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.mouseEnabled = false;
         this.mouseChildren = false;
         if(param1.water.height != null && param1.water.x != null && param1.water.y != null)
         {
            this.x = param1.water.x;
            this.y = param1.water.y + param1.indentHeight;
            this.height = param1.water.height;
         }
         else
         {
            log.error("Not enough parameters for water creation (check MapRecord.water.(height|x|y))");
         }
         if(Boolean(param1.water.color) && Boolean(param1.water.secondaryColor))
         {
            this.§&&§(param1.water.color,param1.water.secondaryColor);
         }
      }
      
      private function §6"x§(param1:MouseEvent = null) : void
      {
         TweenLite.to(this,0.6,{"alpha":1});
         this.§#"q§ = false;
      }
      
      private function §-$l§(param1:MouseEvent = null) : void
      {
         TweenLite.to(this,0.6,{"alpha":0.5});
         this.§#"q§ = true;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.§2%Q§();
         this.addEventListener(Event.ENTER_FRAME,this.§4!k§);
      }
      
      private function §2%Q§() : void
      {
         this.§2"u§ = new Matrix();
         this.§&%y§ = new Sprite();
         this.§@&8§ = new Sprite();
         addChild(this.§&%y§);
         addChild(this.§@&8§);
         this.§&%y§.y = 100;
         this.§&%y§.x = 0;
         this.§@&8§.x = 0;
         this.§@&8§.y = 100;
         this.§-U§(this.§&%y§);
         this.§-U§(this.§@&8§);
      }
      
      public function destroy() : void
      {
         var _loc1_:§6!'§ = null;
         this.removeEventListener(Event.ENTER_FRAME,this.§4!k§);
         for each(_loc1_ in this.§[!x§)
         {
            _loc1_.destroy();
         }
         this.§[!x§ = null;
         this.§@!m§();
      }
      
      private function §@!m§() : void
      {
         removeChild(this.§&%y§);
         removeChild(this.§@&8§);
         this.§2"u§ = null;
      }
      
      private function §4!k§(param1:Event) : void
      {
         if(§8"%§.§&S§.§@u§())
         {
            this.§1%^§(this.§@&8§,"front");
            this.§1%^§(this.§&%y§,"back");
            if(!this.§&%y§.visible)
            {
               this.§&%y§.visible = true;
            }
         }
         else if(this.§&%y§.visible)
         {
            this.§&%y§.visible = false;
         }
         if(this.y < Application.scene.mouseY && !this.§#"q§)
         {
            this.§-$l§();
         }
         else if(this.y > Application.scene.mouseY && this.§#"q§)
         {
            this.§6"x§();
         }
      }
      
      public function §&&§(param1:int, param2:int) : void
      {
         this.§=#n§(param1,param2);
         this.§&&+§(param1,param2);
      }
      
      public function §&&+§(param1:int, param2:int) : void
      {
         this.§'$]§ = [param1,param2];
      }
      
      public function §=#n§(param1:int, param2:int) : void
      {
         this.§5!@§ = [param1,param2];
      }
      
      public function §]!1§(param1:Number, param2:Number) : void
      {
         this.§&"O§ = [param1,param2];
      }
      
      public function §6"Z§(param1:Number, param2:Number) : void
      {
         this.§3$H§ = [param1,param2];
      }
      
      public function §6"b§(param1:Array) : void
      {
         this.§7%v§ = param1;
      }
      
      public function §,%W§(param1:Array) : void
      {
         this.§^&#§ = param1;
      }
      
      private function §>$e§(param1:Number, param2:Sprite) : void
      {
         var _loc5_:§6!'§ = null;
         var _loc3_:uint = Math.floor(this.§;!"§ / param1);
         var _loc4_:uint = 1;
         while(_loc4_ <= _loc3_)
         {
            _loc5_ = new §6!'§();
            param2.addChild(_loc5_.clip);
            _loc5_.clip.x = _loc4_ * param1;
            _loc5_.clip.y = this.§`!x§ + 12;
            this.§[!x§.push(_loc5_);
            _loc4_++;
         }
      }
      
      private function §2!'§(param1:Sprite) : void
      {
         this.§0&5§ = new Sprite();
         this.§0&5§.name = "mask";
         this.§0&5§.y = param1.y;
         this.§0&5§.graphics.beginFill(0);
         this.§0&5§.graphics.lineStyle(0,9223423,1,true);
         param1.graphics.lineStyle(4.5,9223423,1,true);
         this.§0&5§.graphics.moveTo(0,10);
         if(param1 == this.§@&8§)
         {
            this.§<%n§(this.§0&5§,"front");
         }
         else if(param1 == this.§&%y§)
         {
            this.§<%n§(this.§0&5§,"back");
         }
         this.§&Q§(this.§0&5§);
         addChild(this.§0&5§);
         param1.mask = this.§0&5§;
      }
      
      private function §1%^§(param1:Sprite, param2:String = "") : void
      {
         var _loc3_:Sprite = param1.mask as Sprite;
         _loc3_.graphics.clear();
         _loc3_.graphics.beginFill(0);
         _loc3_.graphics.lineStyle(0,9223423,1,true);
         _loc3_.graphics.moveTo(0,10);
         if(§8"%§.§&S§.§@u§())
         {
            this.§<%n§(_loc3_,param2);
         }
         this.§&Q§(_loc3_);
         addChild(_loc3_);
         param1.mask = _loc3_;
         this.§>#d§(param1,param2);
      }
      
      private function §<%n§(param1:Sprite, param2:String) : void
      {
         var _loc3_:uint = 25;
         var _loc4_:Number = this.§;!"§ / _loc3_;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0.3;
         var _loc10_:Number = 3.5;
         var _loc11_:uint = 0;
         while(_loc11_ < _loc3_ + 1)
         {
            _loc5_ = _loc4_ * _loc11_;
            if(param2 == "front")
            {
               _loc6_ = Math.sin(_loc8_ / Math.sin(_loc10_ / 4)) * _loc10_ * 1.2 * Math.sin(this.move);
               this.move += 0.003;
               param1.graphics.lineTo(_loc5_,_loc6_);
            }
            else if(param2 == "back")
            {
               _loc7_ = Math.sin(_loc9_ / 1.5) * _loc10_ * Math.cos(this.move);
               param1.graphics.lineTo(_loc5_,_loc7_);
            }
            _loc10_ -= 0.015;
            _loc10_ = Math.cos(_loc10_) * 2.94;
            _loc8_ -= 0.4444;
            _loc9_ += _loc8_ / 5;
            _loc11_++;
         }
      }
      
      private function §>#d§(param1:Sprite, param2:String = "") : void
      {
         var _loc3_:Sprite = param1.getChildByName("stroke") as Sprite;
         _loc3_.graphics.clear();
         _loc3_.graphics.lineStyle(4,16777215,0.5,true);
         this.§<%n§(_loc3_,param2);
      }
      
      private function §&Q§(param1:Sprite) : void
      {
         param1.graphics.lineTo(this.§;!"§,this.§`!x§);
         param1.graphics.lineTo(0,this.§`!x§);
         param1.graphics.lineTo(0,0);
         param1.graphics.endFill();
      }
      
      private function §-U§(param1:Sprite) : void
      {
         this.§2"u§.createGradientBox(this.§;!"§,this.§`!x§,-PI_HALF,0,0);
         this.§=r§ = SpreadMethod.PAD;
         if(param1 == this.§@&8§)
         {
            if(§8"%§.§&S§.§@u§())
            {
               this.§>$e§(this.§6"-§,this.§@&8§);
            }
            param1.graphics.beginGradientFill(GradientType.LINEAR,this.§'$]§,this.§&"O§,this.§7%v§,this.§2"u§,this.§=r§);
            param1.graphics.drawRect(0,this.summ,this.§;!"§,this.§`!x§);
         }
         else if(param1 == this.§&%y§)
         {
            param1.graphics.beginGradientFill(GradientType.LINEAR,this.§5!@§,this.§3$H§,this.§^&#§,this.§2"u§,this.§=r§);
            param1.y = this.§@&8§.y - 10;
            param1.graphics.drawRect(0,this.summ,this.§;!"§,this.§`!x§ + 10);
         }
         param1.graphics.endFill();
         this.§2!'§(param1);
         if(param1.getChildByName("stroke") == null)
         {
            this.§<$V§ = new Sprite();
            this.§<$V§.name = "stroke";
            param1.addChild(this.§<$V§);
         }
      }
      
      public function §1!W§(param1:int) : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.§4!k§);
         this.§`!x§ += param1;
         this.§@!m§();
         this.§2%Q§();
         this.addEventListener(Event.ENTER_FRAME,this.§4!k§);
      }
      
      override public function get width() : Number
      {
         return this.§;!"§;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§`!x§ = param1;
      }
      
      override public function get height() : Number
      {
         return this.§`!x§;
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = param1;
      }
      
      override public function get x() : Number
      {
         return super.x;
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = param1 - 100;
      }
      
      override public function get y() : Number
      {
         return super.y + 100 + this.summ;
      }
   }
}

