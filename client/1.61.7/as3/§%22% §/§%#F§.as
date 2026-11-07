package §"% §
{
   import § !8§.§`!d§;
   import §!!!§.§7&%§;
   import §"%H§.§'%u§;
   import §&#h§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §5!,§.§?!P§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §%#F§ extends §7&%§
   {
      
      public function §%#F§(param1:DisplayObject)
      {
         super(param1);
      }
      
      override public function setItem(param1:Object) : void
      {
         item = param1;
         §]$o§(param1 as §`!d§);
         §-$q§(param1 as §`!d§);
         getChildByName("lock").visible = false;
         getChildByName("exist").visible = false;
         var _loc2_:DisplayObject = getChildByName("deactive");
         if(_loc2_)
         {
            _loc2_.visible = false;
         }
         §;b§(false);
      }
   }
}

