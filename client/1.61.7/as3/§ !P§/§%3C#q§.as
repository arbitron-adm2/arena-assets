package § !P§
{
   import § m§.§9!^§;
   import §&"c§.§5$n§;
   import §9"-§.§?!s§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import config.achievements.BossAchieves;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §<#q§
   {
      
      public var § $k§:Number;
      
      private var §1!E§:Array = [];
      
      private var §%#o§:Array = [];
      
      private var §6&D§:Array = [];
      
      public function §<#q§()
      {
         super();
         this.§ $k§ = new Date().time;
      }
      
      public static function §5#!§(param1:Array, param2:Array, param3:Array) : §<#q§
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:§<#q§ = new §<#q§();
         if(param1.length == param2.length && param1.length > 0)
         {
            _loc5_ = 0;
            _loc6_ = int(param1.length);
            while(_loc5_ < _loc6_)
            {
               _loc4_.§?l§(param1[_loc5_],param2[_loc5_]);
               _loc5_++;
            }
         }
         _loc4_.§<&"§(param3);
         return _loc4_;
      }
      
      public function §4Q§(param1:uint, param2:uint = 1) : void
      {
         if(param2 > 0)
         {
            this.§?l§(param1,this.valueOf(param1) + param2);
         }
      }
      
      public function §?l§(param1:uint, param2:int) : void
      {
         var _loc3_:int = this.§1!E§.indexOf(param1);
         if(_loc3_ != -1)
         {
            this.§%#o§[_loc3_] = param2;
         }
         else
         {
            this.§1!E§.push(param1);
            this.§%#o§.push(param2);
         }
      }
      
      private function §<&"§(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(BossAchieves.§"#&§);
         while(_loc2_ < _loc3_)
         {
            this.§6&D§[_loc2_] = false;
            _loc2_++;
         }
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.length);
         while(_loc4_ < _loc5_)
         {
            this.§6&D§[int(param1[_loc4_])] = true;
            _loc4_++;
         }
      }
      
      public function §7%J§(param1:int) : Boolean
      {
         return this.§6&D§[param1];
      }
      
      public function §<$,§(param1:int) : Array
      {
         this.§6&D§[param1] = true;
         return this.§6&D§;
      }
      
      public function valueOf(param1:uint) : int
      {
         var _loc2_:int = this.§1!E§.indexOf(param1);
         return _loc2_ != -1 ? int(this.§%#o§[_loc2_]) : 0;
      }
      
      public function get ids() : Array
      {
         return this.§1!E§.concat();
      }
      
      public function get values() : Array
      {
         return this.§%#o§.concat();
      }
      
      public function get count() : uint
      {
         return this.§1!E§.length;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         var _loc2_:int = 0;
         var _loc3_:int = int(this.ids.length);
         while(_loc2_ < _loc3_)
         {
            _loc1_ += (_loc2_ != 0 ? "," : "") + "(" + this.ids[_loc2_] + " -> " + this.values[_loc2_] + ")";
            _loc2_++;
         }
         return _loc1_;
      }
   }
}

