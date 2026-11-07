package §@!N§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#%!§.§ §;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0!§.§9"u§;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=7§.*;
   import §@<§.§+%]§;
   import §@c§.*;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'+§
   {
      
      public function §'+§()
      {
         super();
      }
      
      public static function getMenuIcon(param1:§&!e§) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:DisplayObject = null;
         if(param1.getMenuIcon())
         {
            _loc2_ = §6#A§.§!&6§(param1.getMenuIcon());
            if(Boolean(_loc2_) && param1.§-9§())
            {
               _loc3_ = _loc2_.getChildAt(0);
               if(_loc3_)
               {
                  _loc3_.x = 0;
                  _loc3_.y = 0;
               }
            }
         }
         else
         {
            _loc2_ = §6#A§.§!&6§(param1.getClipClassName());
            if(_loc2_)
            {
               if(param1 is §^$E§)
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
               }
               _loc3_ = _loc2_.getChildAt(0);
               if(_loc3_)
               {
                  _loc3_.x = 0;
                  _loc3_.y = 0;
               }
            }
         }
         return _loc2_;
      }
   }
}

