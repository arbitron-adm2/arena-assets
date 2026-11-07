package §&#E§
{
   import §"$+§.*;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+%S§.§,$p§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §2"L§.§^$y§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §65§.§6%E§;
   import §7"Q§.§0$L§;
   import §9&+§.§6&=§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §>"4§
   {
      
      private static var _instance:§>"4§;
      
      private var queue:Vector.<§@& §> = new Vector.<§@& §>(0);
      
      private var §+#t§:§%%v§;
      
      public function §>"4§()
      {
         super();
         this.§+#t§ = new §%%v§();
      }
      
      public static function get instance() : §>"4§
      {
         if(!_instance)
         {
            _instance = new §>"4§();
         }
         return _instance;
      }
      
      public function start() : void
      {
         this.§2"?§();
      }
      
      public function §;&%§(param1:§@& §) : void
      {
         this.queue.push(param1);
         §""n§.single(param1,§[%w§.WINDOW_CLOSE,§1%"§.§]$<§(this.§,!5§,this,[param1]));
      }
      
      private function §,!5§(param1:§@& §) : void
      {
         param1.destroy();
         this.§2"?§();
      }
      
      private function §2"?§() : void
      {
         var _loc1_:§@& § = null;
         if(this.queue.length > 0)
         {
            _loc1_ = this.queue.shift();
            _loc1_.show();
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:§@& § = null;
         for each(_loc1_ in this.queue)
         {
            _loc1_.hide();
            _loc1_.destroy();
         }
         this.queue.length = 0;
      }
   }
}

