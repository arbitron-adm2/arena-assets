package §1#o§
{
   import § m§.§9!^§;
   import §!L§.§+"'§;
   import §"$+§.§^$`§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §2#x§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §9"-§.§?!s§;
   import §9%W§.§&!P§;
   import §<!<§.§4"K§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §%#$§ extends §0&'§
   {
      
      public function §%#$§(param1:MovieClip)
      {
         super(param1);
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,§0$N§.GLADIATOR_MENU_TITLE);
      }
      
      override public function activate() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super.activate();
         var _loc1_:Array = [];
         var _loc2_:Vector.<UserProfile> = §8"%§.§%$r§.§@!f§();
         if(_loc2_)
         {
            _loc3_ = 0;
            _loc4_ = int(_loc2_.length);
            while(_loc3_ < _loc4_)
            {
               _loc1_[_loc1_.length] = _loc2_[_loc3_];
               _loc3_++;
            }
         }
         this.setData(_loc1_);
         update();
      }
      
      override public function setData(param1:Array) : void
      {
         this.store = new §4"K§(param1,§4#B§.numChildren);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §-#d§(MovieClip(param1));
      }
   }
}

