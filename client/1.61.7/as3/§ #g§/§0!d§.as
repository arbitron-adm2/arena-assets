package § #g§
{
   import § $q§.§3U§;
   import §4u§.ReagentHint;
   import §7"Q§.§"&=§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class §0!d§ extends §"&=§
   {
      
      private var itemIcon:§3U§;
      
      private var quantityField:TextField;
      
      public function §0!d§(param1:MovieClip)
      {
         super(param1);
         this.quantityField = param1["quantityField"];
         §&$9§.§>&F§(param1["quantityField"],§"-§.§6"j§);
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:uint = 0;
         var _loc4_:BackpackItem = null;
         if(this.itemIcon)
         {
            _loc2_ = MovieClip(container["icon"]);
            _loc3_ = uint(_loc2_.numChildren);
            if(_loc3_ >= 2)
            {
               _loc2_.removeChild(_loc2_.getChildAt(1));
            }
            this.itemIcon.destroy();
         }
         if(param1)
         {
            _loc4_ = BackpackItem(param1);
            this.itemIcon = new §3U§(container["icon"],true);
            this.itemIcon.setItem(_loc4_.getRecord(),new ReagentHint(_loc4_.getRecord()));
            this.quantityField.text = "" + _loc4_.getCount();
         }
         else
         {
            this.quantityField.text = "";
         }
         super.setItem(param1);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         super.setDisabled(param1);
      }
   }
}

