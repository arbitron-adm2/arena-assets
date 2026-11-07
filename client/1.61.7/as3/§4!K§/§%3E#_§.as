package §4!K§
{
   import § !P§.*;
   import §#"V§.§8"@§;
   import §##j§.*;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+5§.§8$W§;
   import §2#V§.§-#U§;
   import §3#T§.Meteor;
   import §5"J§.§"&B§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import com.inreflected.ui.touchScroll.VelocityCalculator;
   import config.§^"2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §>#_§ extends §^%A§
   {
      
      private static const §5"#§:String = "DangerBorder";
      
      private var §%#J§:Boolean;
      
      private var §@!`§:MovieClip;
      
      private var §""M§:MovieClip;
      
      private var x1:int;
      
      private var y1:int;
      
      private var x2:int;
      
      private var y2:int;
      
      public function §>#_§(param1:int, param2:int, param3:int, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function §^%,§(param1:int, param2:int, param3:int) : void
      {
         this.§%#J§ = §8"%§.randomSeed.§6#;§();
         this.§@!`§ = §6#A§.§!&6§(§5"#§);
         this.§""M§ = §6#A§.§!&6§(§5"#§);
         if(this.§%#J§)
         {
            this.§@!`§.height = this.§""M§.height = param2 * 2;
            this.§@!`§.scaleX = this.§""M§.scaleX = this.§""M§.scaleY * 0.5;
            this.§""M§.rotation = 180;
            this.§""M§.x = this.§""M§.width - param1;
            this.§@!`§.x = param1 - this.§@!`§.width;
         }
         else
         {
            this.§@!`§.height = this.§""M§.height = param1 * 2;
            this.§@!`§.scaleX = this.§""M§.scaleX = this.§""M§.scaleY * 0.25;
            this.§""M§.rotation = -90;
            this.§@!`§.rotation = 90;
            this.§""M§.y = this.§""M§.height - param2;
            this.§@!`§.y = param2 - this.§@!`§.height;
         }
         clip = new MovieClip();
         clip.addChild(this.§@!`§);
         clip.addChild(this.§""M§);
         this.§2%z§(param1,param2);
      }
      
      override protected function §5"F§(param1:int) : void
      {
         radius = this.§%#J§ ? int(this.§@!`§.x) : int(this.§@!`§.y);
      }
      
      private function §2%z§(param1:int, param2:int) : void
      {
         this.x1 = this.§%#J§ ? int(param1 + this.§""M§.x + §<H§.§@% §) : 0;
         this.y1 = this.§%#J§ ? 0 : int(param2 + this.§""M§.y + §<H§.§-#C§);
         this.x2 = this.§%#J§ ? int(param1 + this.§@!`§.x - §<H§.§@% §) : int(this.§@!`§.width);
         this.y2 = this.§%#J§ ? int(this.§""M§.height) : int(param2 + this.§@!`§.y - §<H§.§-#C§);
      }
      
      override protected function §]#<§() : void
      {
         if(this.§%#J§)
         {
            this.§""M§.x += §-u§;
         }
         else
         {
            this.§""M§.y += §-u§;
         }
         if(this.§%#J§)
         {
            this.§@!`§.x -= §-u§;
         }
         else
         {
            this.§@!`§.y -= §-u§;
         }
         if(§6!#§ < §;#v§)
         {
            if(this.§%#J§)
            {
               x += §9$V§;
            }
            else
            {
               y += §]5§;
            }
         }
         this.§2%z§(x,y);
      }
      
      override protected function §]%+§() : void
      {
         §8"%§.§?!W§.§>$y§("turn=" + §8"%§.§?!W§.§4"m§.§,j§() + " radius=" + radius + " reduce=" + §-u§ + " reduce3=" + reduce3Value + " reduce2=" + reduce2Value + " x=" + x + " y=" + y + " shiftX=" + §9$V§ + " shiftY=" + §]5§ + " slowReduce=" + §%r§);
      }
      
      override public function §#%J§(param1:Vector.<§+%]§> = null) : Vector.<§+%]§>
      {
         var _loc5_:§&"T§ = null;
         var _loc6_:§+%]§ = null;
         if(!param1)
         {
            param1 = Application.scene.§@$I§.§;%a§.§1!n§();
         }
         var _loc2_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         if(param1)
         {
            for each(_loc6_ in param1)
            {
               _loc2_.push(_loc6_);
            }
         }
         var _loc3_:Vector.<§&"T§> = §<H§.§%$Q§(this.x1,this.y1,this.x2,this.y2,_loc2_);
         var _loc4_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc5_ in _loc3_)
         {
            _loc4_.push(_loc5_);
         }
         return _loc4_;
      }
   }
}

