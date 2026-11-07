package §+%o§
{
   import § !P§.§9%Z§;
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §0&F§.§0$_§;
   import flash.display.MovieClip;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §?!#§ extends §`&-§
   {
      
      private var achievements:Array;
      
      private var §?#a§:uint;
      
      private var numChildren:uint;
      
      public function §?!#§()
      {
         super(§6#A§.§!&6§(§+"'§.§&!w§));
      }
      
      public function init(param1:§0$_§) : void
      {
         var _loc3_:MovieClip = null;
         this.numChildren = (getContainer() as MovieClip).numChildren;
         this.achievements = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.numChildren)
         {
            _loc3_ = MovieClip(§#!`§().getChildByName("achievement_" + _loc2_));
            this.achievements[_loc2_] = new §]!`§(_loc3_);
            _loc2_++;
         }
         §8"%§.§@1§.addEventListener(§0$_§.NAME,this.update);
         this.update(param1);
      }
      
      public function update(param1:§0$_§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Array = §9%Z§.§7%V§(param1.records,2);
         this.§?#a§ = _loc2_.length;
         _loc3_ = 0;
         while(_loc3_ < this.§?#a§)
         {
            §]!`§(this.achievements[_loc3_]).update(_loc2_[_loc3_].records,_loc2_[_loc3_].value);
            _loc3_++;
         }
         if(this.§?#a§ < this.numChildren)
         {
            _loc3_ = int(this.§?#a§);
            while(_loc3_ < this.numChildren)
            {
               §]!`§(this.achievements[_loc3_]).getContainer().visible = false;
               _loc3_++;
            }
         }
      }
      
      public function moveTo(param1:Number = 0, param2:Number = 0) : void
      {
         this.x = param1;
         this.y = param2;
      }
   }
}

