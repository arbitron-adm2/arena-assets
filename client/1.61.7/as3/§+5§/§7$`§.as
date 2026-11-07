package §+5§
{
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §0%[§.§1%"§;
   import §2"L§.§^$y§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §@!N§.§-!Y§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   use namespace gestouch_internal;
   
   public class §7$`§ extends Boulder
   {
      
      private static const §;$ §:Number = 0.5;
      
      private var friendlyFire:Boolean;
      
      public function §7$`§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int, param7:Number, param8:int, param9:Boolean)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.friendlyFire = param9;
      }
      
      override public function inflictDamage(param1:§&"T§, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Boolean = false, param7:Boolean = true, param8:Object = null) : void
      {
         var _loc9_:§+%]§ = null;
         var _loc10_:int = 0;
         var _loc11_:Dictionary = null;
         var _loc12_:Object = null;
         if(param1 != null && param1 is §+%]§)
         {
            _loc9_ = §+%]§(param1);
            if(this.friendlyFire && _loc9_ != owner && _loc9_.squad.getTeamId() == owner.squad.getTeamId())
            {
               param2 *= §;$ §;
            }
            else
            {
               _loc10_ = §8"%§.randomSeed.§,!q§(1,3);
               _loc11_ = §7%g§.§8!f§(new <§+%]§>[_loc9_],1,_loc10_);
               _loc12_ = §-!Y§.§2"N§(_loc11_);
               §7%g§.§`%i§(_loc12_.unit,_loc12_.weapons,_loc12_.cooldowns);
            }
         }
         super.inflictDamage(param1,param2,param3,param4,param5,param6,param7,_customSource);
      }
   }
}

