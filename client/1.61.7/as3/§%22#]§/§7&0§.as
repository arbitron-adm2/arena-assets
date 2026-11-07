package §"#]§
{
   import §&"c§.§!!q§;
   import §'&"§.§,&3§;
   import §'&"§.§8$D§;
   import §'&"§.§=!x§;
   import §'&"§.TutorialCard;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7"Q§.§`$t§;
   import §=&!§.§<$!§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   
   public class §7&0§ extends §`$t§
   {
      
      public static const §?#d§:Point = new Point(93,188);
      
      private const §'X§:int = 163;
      
      private var §&%T§:Array = [];
      
      private var § %O§:TutorialCard;
      
      private var §#l§:§8$D§;
      
      public function §7&0§(param1:DisplayObjectContainer)
      {
         super(param1);
         §&$9§.§>&F§(§'%s§("description"),§"-§.§+$m§,§0$N§.§%! §("MISSIONS_DESCRIPTION"));
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§"&=§ = null;
         var _loc3_:String = param1.name;
         var _loc4_:DisplayObjectContainer = DisplayObjectContainer(param1);
         if(_loc3_.indexOf("missionCard") != -1)
         {
            _loc2_ = new §,&3§(_loc4_);
            this.§&%T§.push(_loc2_);
         }
         else if(_loc3_.indexOf("hotSeatCard") != -1)
         {
            _loc2_ = new §=!x§(_loc4_);
         }
         else if(_loc3_.indexOf("zombieRisingCard") != -1)
         {
            _loc2_ = new §8$D§(_loc4_);
            this.§#l§ = _loc2_ as §8$D§;
         }
         this.§&%T§.sortOn("x",Array.NUMERIC);
         return _loc2_;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=#h§ = §0$N§.MISSION_BTN;
         §7%c§ = false;
      }
      
      public function update() : void
      {
         var _loc1_:§8%6§ = null;
         var _loc3_:Array = null;
         var _loc4_:§,&3§ = null;
         var _loc5_:§<$!§ = null;
         §&#F§(false);
         if(§8"%§.§"&"§)
         {
            if(this.§ %O§)
            {
               removeChild(this.§ %O§);
               this.§ %O§.destroy();
               this.§ %O§ = null;
            }
            _loc3_ = §8"%§.§"&"§.§0#M§();
            if(_loc3_.length > 0)
            {
               _loc1_ = _loc3_[0];
               this.§ %O§ = new TutorialCard();
               this.§ %O§.§5"h§(_loc1_);
               addChild(this.§ %O§);
               this.§ %O§.x = §?#d§.x;
               this.§ %O§.y = §?#d§.y;
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§&%T§.length)
         {
            _loc4_ = this.§&%T§[_loc2_];
            if(_loc2_ == 0)
            {
               _loc5_ = §<$!§.EASY;
            }
            else if(_loc2_ == 1)
            {
               _loc5_ = §<$!§.MEDIUM;
            }
            else if(_loc2_ == 2)
            {
               _loc5_ = §<$!§.HARD;
            }
            _loc4_.§3l§(_loc5_);
            if(_loc1_)
            {
               if(_loc2_ == this.§&%T§.length - 1)
               {
                  _loc4_.setVisible(false);
               }
               else
               {
                  this.§@&7§(_loc4_,_loc2_ + 1);
               }
            }
            else
            {
               _loc4_.setVisible(true);
               _loc4_.update();
               this.§@&7§(_loc4_,_loc2_);
            }
            _loc2_++;
         }
         this.§#l§.update();
      }
      
      private function §@&7§(param1:§"&=§, param2:uint) : void
      {
         param1.x = §?#d§.x + this.§'X§ * param2;
      }
   }
}

