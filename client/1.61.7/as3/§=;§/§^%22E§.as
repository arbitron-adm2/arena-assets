package §=;§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §1"r§.§4!u§;
   import §2!-§.DamageEvent;
   import §3"_§.*;
   import §3#a§.*;
   import §4!!§.§'$V§;
   import §4$b§.§2m§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^"E§ extends §-#8§
   {
      
      private static const §9"Q§:String = "CraftBox";
      
      private var §#"a§:int;
      
      public function §^"E§(param1:Point, param2:int = -1)
      {
         super(param1.x,param1.y,§9"Q§,§0$N§.CRAFT_CRATE);
         this.§#"a§ = param2;
         §4#3§ = false;
         §5!?§(0,-10);
         §+%;§();
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§0#0§ = §<#`§.NONE;
      }
      
      public function setCraftItemId(param1:int) : void
      {
         this.§#"a§ = param1;
      }
      
      override protected function §-%+§(param1:§+%]§) : Boolean
      {
         return !param1.squad.isAi();
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         if(this.§#"a§ == -1)
         {
            return;
         }
         super.§0$j§(param1);
         §8"%§.§?!W§.§4"m§.§-[§(param1,this.§#"a§);
         §1"-§.§3#=§(§1@§.§`$M§(this.§#"a§).getMenuIcon(),x,y,40);
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         setSpeedXY(speedX,-10);
         stable = false;
      }
   }
}

