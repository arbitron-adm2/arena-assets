package §@!i§
{
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §+#P§.§]!E§;
   import §,"`§.§;8§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §6%2§.§'"Y§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8#<§.§!#^§;
   import §@<§.§+%]§;
   import §]$v§.§0"[§;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2l§
   {
      
      private var §4#r§:Array = [];
      
      private var §%#o§:Array = [];
      
      public function §2l§()
      {
         super();
      }
      
      public function §&!N§(param1:String, param2:Object, param3:Object = null) : void
      {
         this.§,u§(param1,param2,param3,§!m§.§,!Z§);
      }
      
      public function §,"S§(param1:String, param2:Object, param3:Object = null, param4:Boolean = false) : void
      {
         this.setValue(param1,param2,param3,§!m§.§,!Z§,param4);
      }
      
      public function §,u§(param1:String, param2:Object, param3:Object = null, param4:Function = null) : void
      {
         this.setValue(param1,param2,param3,param4,true);
      }
      
      public function setValue(param1:String, param2:Object, param3:Object = null, param4:Function = null, param5:Boolean = false) : void
      {
         var _loc6_:String = param3 != null && param2 == param3 ? "" : (param4 != null ? param4(param1,param2) : String(param2));
         var _loc7_:int = this.§4#r§.indexOf(param1);
         if(_loc7_ == -1)
         {
            this.§4#r§.push(param1);
            this.§%#o§.push(_loc6_);
         }
         else if(param5 && !_loc6_)
         {
            this.§4#r§.splice(_loc7_,1);
            this.§%#o§.splice(_loc7_,1);
         }
         else
         {
            this.§%#o§[_loc7_] = _loc6_;
         }
      }
      
      public function getValue(param1:String, param2:Object = null, param3:Function = null) : Object
      {
         var _loc4_:int = this.§4#r§.indexOf(param1);
         if(_loc4_ == -1)
         {
            return param2;
         }
         var _loc5_:String = this.§%#o§[_loc4_];
         return param3 != null ? param3(param1,_loc5_) : _loc5_;
      }
      
      public function isEmpty() : Boolean
      {
         return this.§4#r§.length == 0;
      }
      
      public function §4!G§() : Boolean
      {
         return this.§4#r§.length > 0;
      }
      
      public function getCount() : int
      {
         return this.§4#r§.length;
      }
      
      public function clear() : void
      {
         this.§4#r§.length = this.§%#o§.length = 0;
      }
      
      public function get §&!>§() : Array
      {
         return this.§4#r§;
      }
      
      public function get values() : Array
      {
         return this.§%#o§;
      }
   }
}

