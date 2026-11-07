package §8$V§
{
   import §#k§.§9$v§;
   import §&%X§.§5F§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §4$d§
   {
      
      private static const COOKIE_NAME_REFER_BONUSES:String = "COOKIE_NAME_REFER_BONUSES";
      
      private var §1$;§:Vector.<String> = new Vector.<String>(0);
      
      private var §^g§:Object;
      
      public function §4$d§()
      {
         super();
         this.§^g§ = Cookie.getValue(COOKIE_NAME_REFER_BONUSES,{});
      }
      
      public function clear() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.§^g§)
         {
            if(Boolean(this.§^g§[_loc1_]) && §0#2§.§[&>§(this.§^g§[_loc1_]) > §0#2§.§>!U§)
            {
               delete this.§^g§[_loc1_];
            }
         }
      }
      
      private function save() : void
      {
         Cookie.setValue(COOKIE_NAME_REFER_BONUSES,this.§^g§);
      }
      
      public function §&%k§(param1:String) : void
      {
         this.§^g§[param1] = §0#2§.§@&6§();
         this.clear();
         this.save();
      }
      
      public function §+'§(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         _loc2_ = param1.split(" ");
         var _loc3_:String = _loc2_[0];
         var _loc4_:String = _loc2_.length > 1 ? _loc2_[1] : "";
         if(!_loc4_ && !this.§^g§[_loc3_] && this.§1$;§.indexOf(_loc3_) == -1)
         {
            this.§1$;§.push(_loc3_);
            return true;
         }
         return false;
      }
      
      public function §<%i§() : Vector.<String>
      {
         return this.§1$;§;
      }
      
      public function get §8&B§() : Boolean
      {
         return this.§1$;§.length > 0;
      }
   }
}

