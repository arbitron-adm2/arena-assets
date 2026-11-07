package §8#<§
{
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §'!Z§.§2!%§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §0%z§.*;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<K§.RankTabProgress;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^4§.§]"8§;
   import com.inreflected.ui.touchScroll.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.§5#=§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^#O§
   {
      
      §§push(§§findproperty(list));
      
      private static const list:Vector.<§5#=§> = new <§5#=§>[new §5#=§(4,2,2),new §5#=§(4,3,5),new §5#=§(4,4,10),new §5#=§(5,2,2),new §5#=§(5,3,3),new §5#=§(5,4,10),new §5#=§(5,5,30),new §5#=§(6,2,2),new §5#=§(6,3,3),new §5#=§(6,4,5),new §5#=§(6,5,15),new §5#=§(6,6,40)];
      
      public function §^#O§()
      {
         super();
      }
      
      public static function §+r§(param1:int, param2:int, param3:int) : int
      {
         var _loc5_:§5#=§ = null;
         var _loc4_:int = param1 - param2 + 1;
         for each(_loc5_ in list)
         {
            if(param3 == _loc5_.§?&7§() && _loc5_.§8!B§() == _loc4_)
            {
               return _loc5_.§+r§();
            }
         }
         return list[int(list.length - 1)].§+r§();
      }
   }
}

