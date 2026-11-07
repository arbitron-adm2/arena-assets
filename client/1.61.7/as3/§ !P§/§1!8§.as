package § !P§
{
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §"%H§.§6$3§;
   import §0%[§.§1%"§;
   import §0%z§.§,$@§;
   import §0%z§.§9H§;
   import §4!x§.§@& §;
   import §7$t§.§&!e§;
   import §<$q§.§"%r§;
   import com.greensock.TweenLite;
   import com.greensock.easing.Expo;
   import com.greensock.events.LoaderEvent;
   import config.achievements.*;
   import flash.events.Event;
   
   public class §1!8§
   {
      
      private var messages:Array = [];
      
      private const §,#o§:uint = 4;
      
      private const §?$r§:Array = [700,850,1000,1150];
      
      private const § #0§:Array = [105,236,369,700];
      
      private const §@"=§:int = 1;
      
      public function §1!8§()
      {
         super();
      }
      
      public function §>"Q§(param1:§6$3§, param2:int = -1) : void
      {
         var msg:§@& § = null;
         var rec:§6$3§ = param1;
         var levelIndex:int = param2;
         if(rec is §1! §)
         {
            msg = new §,$@§(rec,levelIndex);
         }
         else if(rec is §'%u§)
         {
            msg = new §9H§(rec);
         }
         this.messages.push(msg);
         msg.addEventListener(Event.CLOSE,this.§="[§);
         §1%"§.delay(function():void
         {
            msg.hide();
            msg.destroy();
            §""W§(msg);
         },null,7000 + this.messages.length * 1000);
      }
      
      private function §="[§(param1:Event) : void
      {
         var _loc2_:§@& § = §@& §(param1.target);
         this.§""W§(_loc2_);
      }
      
      private function §""W§(param1:§@& §) : void
      {
         param1.removeEventListener(Event.CLOSE,this.§="[§);
         var _loc2_:int = this.messages.indexOf(param1);
         if(_loc2_ != -1)
         {
            TweenLite.killTweensOf(this.messages[_loc2_],{
               "y":this.messages[_loc2_].y,
               "ease":Expo.easeOut
            });
            this.messages[_loc2_] = null;
            this.messages.splice(_loc2_,1);
         }
         this.update();
      }
      
      private function length() : int
      {
         return this.messages.length;
      }
      
      public function update() : void
      {
         var _loc1_:int = this.length() < this.§,#o§ ? this.length() : int(this.§,#o§);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            if(this.messages[_loc2_])
            {
               if(!this.messages[_loc2_].isShown())
               {
                  this.messages[_loc2_].y = this.§?$r§[_loc2_];
                  this.messages[_loc2_].show();
                  TweenLite.to(this.messages[_loc2_],this.§@"=§,{
                     "y":this.§ #0§[_loc2_],
                     "ease":Expo.easeOut
                  });
               }
            }
            _loc2_++;
         }
      }
   }
}

