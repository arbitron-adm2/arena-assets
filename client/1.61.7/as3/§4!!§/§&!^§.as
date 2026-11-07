package §4!!§
{
   import §!K§.§"%$§;
   import §"$+§.*;
   import §##y§.§9§;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0!§.§9"u§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §3#T§.*;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §7!B§.§6#I§;
   import §7!B§.§`s§;
   import §7"Q§.§0$L§;
   import §7$t§.§^%%§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §>$q§.*;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.events.TweenEvent;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class §&!^§ extends §6#I§
   {
      
      public var target:Point;
      
      protected var ammoSpeed:uint;
      
      public function §&!^§(param1:§+%]§, param2:int, param3:int, param4:Boolean, param5:Point, param6:uint, param7:uint, param8:uint)
      {
         super(param1,param2,param3,param4,1000);
         §-"e§ = false;
         this.target = param5;
         this.ammoSpeed = param8;
         initialize(new Point(param2,param3));
         this.§0$J§(param6,param7);
         §`4§ = §]$S§;
         physParams.ignoresTerrain = true;
         physParams.§5N§ = §9%1§.§@%h§;
         Application.scene.§@$I§.§1$+§(this);
         this.§>"n§();
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.§5N§ = §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
         §7%[§(physicModel).checkEnemiesOnStart();
      }
      
      protected function §0$J§(param1:uint, param2:uint) : void
      {
         §1"-§.attachTrail(this,4,6,param1,param2,1);
      }
      
      protected function §>"n§() : void
      {
         var _loc1_:Number = Math.atan2(this.target.y - y,this.target.x - x);
         §^"F§(_loc1_,this.ammoSpeed);
         new §`s§(this.target.x,this.target.y,20,this,this.clear);
      }
      
      protected function clear() : void
      {
         disposed = true;
      }
   }
}

