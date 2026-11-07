package §!!!§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%&3§.§'C§;
   import §+$=§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §4!!§.§#Z§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7"Q§.§"&=§;
   import §7$t§.§^%%§;
   import §<!W§.*;
   import §?#g§.§&"P§;
   import §?$L§.§ "N§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import config.§9+§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   public class §3A§ extends §"&=§
   {
      
      public function §3A§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:§`!d§ = null;
         var _loc3_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:§`!d§ = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         super.setItem(param1);
         _loc2_ = param1 as §`!d§;
         _loc3_ = §]V§.§ $l§(_loc2_.getId(),§@&&§.getProfile());
         var _loc4_:§&"P§ = _loc3_ ? §6Y§.§?#`§(§@&&§.getProfile().§1$4§(),_loc2_.getId()) : §&"P§.§!%4§(_loc2_.getId());
         var _loc5_:int = §8!z§ == 0 ? 0 : int(_loc2_.getId() * 10 + §8!z§);
         var _loc6_:Boolean = _loc4_.§`!§(_loc5_);
         getChildByName("lock").visible = !_loc6_;
         getChildByName("exist").visible = _loc4_.§7"=§() == _loc5_;
         getChildByName("deactive").visible = _loc4_.§7"=§() != _loc5_;
         for each(_loc8_ in §9%+§.§?%S§())
         {
            _loc9_ = 0;
            while(_loc9_ < §9+§.§3%7§)
            {
               _loc7_ = getChildByName(_loc8_.configName + "_" + _loc9_);
               if(_loc7_)
               {
                  _loc7_.visible = _loc2_ != null && _loc9_ == §8!z§ && _loc8_.equals(_loc2_);
               }
               _loc9_++;
            }
         }
         if(_loc2_ != null)
         {
            _loc10_ = §8!z§ == 0 ? _loc2_.§7%z§() : _loc4_.§4%S§(_loc5_).§7%z§();
            setQtip(_loc10_,§;#^§.§[!K§,§+"'§.§]!H§);
         }
      }
   }
}

