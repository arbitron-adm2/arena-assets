package § &5§
{
   import § !P§.§9%Z§;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §'!Z§.§2!H§;
   import §+%S§.§2&>§;
   import §2#H§.§,"R§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7$t§.§^%%§;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §[$<§.§>"9§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import config.achievements.§!$L§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.SyncInvestedAwardPointsResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&!W§
   {
      
      private var §?$U§:BitmapData;
      
      private var §@"%§:Boolean = false;
      
      private var §[#;§:BitmapData;
      
      public var §"%w§:int = 0;
      
      public var §;"^§:int = 0;
      
      public function §&!W§(param1:BitmapData, param2:BitmapData, param3:Boolean)
      {
         super();
         this.§[#;§ = param1;
         this.§?$U§ = param2;
         this.§@"%§ = param3;
         this.§"%w§ = param1.width;
         this.§;"^§ = param1.height;
      }
      
      public function §8"W§(param1:MovieClip, param2:int, param3:int, param4:Boolean = false) : void
      {
         param1.x = param2;
         param1.y = param3;
         if(!param4)
         {
            this.§[#;§.draw(param1,param1.transform.matrix);
         }
         else
         {
            this.§?$U§.draw(param1,param1.transform.matrix);
            this.§@"%§ = true;
         }
      }
      
      public function setPixel(param1:int, param2:int, param3:uint) : void
      {
         this.§[#;§.setPixel32(param1,param2,param3);
      }
      
      public function §>w§(param1:int, param2:int) : uint
      {
         var _loc3_:uint = 0;
         if(this.§@"%§)
         {
            _loc3_ = this.§?$U§.getPixel(param1,param2);
         }
         if(_loc3_ == 0)
         {
            _loc3_ = this.§[#;§.getPixel(param1,param2);
         }
         return _loc3_;
      }
      
      public function hitTest(param1:int, param2:int) : Boolean
      {
         if(param1 < 0 || param2 < 0 || param1 > this.§[#;§.width || param2 > this.§[#;§.height || param1 > this.§"%w§ || param2 > this.§;"^§)
         {
            return false;
         }
         return this.§[#;§.getPixel(param1,param2) != 0 || this.§@"%§ && this.§?$U§.getPixel(param1,param2) != 0;
      }
      
      public function §1R§(param1:int, param2:int) : Boolean
      {
         if(!this.§@"%§ || param1 < 0 || param2 < 0 || param1 > this.§[#;§.width || param2 > this.§[#;§.height || param1 > this.§"%w§ || param2 > this.§;"^§)
         {
            return false;
         }
         return this.§?$U§.getPixel(param1,param2) != 0;
      }
      
      public function §;#]§(param1:int) : void
      {
         var _loc2_:Rectangle = new Rectangle(0,0,this.§"%w§,this.§;"^§ - param1);
         var _loc3_:Point = new Point(0,param1);
         this.§[#;§.copyPixels(this.§[#;§,_loc2_,_loc3_);
         this.§?$U§.copyPixels(this.§?$U§,_loc2_,_loc3_);
      }
      
      public function dispose() : void
      {
         this.§[#;§.dispose();
         this.§?$U§.dispose();
      }
   }
}

