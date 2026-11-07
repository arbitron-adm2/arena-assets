package ru.pragmatix.wormix.utils
{
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&!m§.§;#[§;
   import §&#E§.§4##§;
   import §2"L§.§^$y§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §=#,§
   {
      
      public function §=#,§()
      {
         super();
      }
      
      public static function §#"6§(param1:BitmapData, param2:Number = 1, param3:Number = -1) : BitmapData
      {
         var _loc4_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc4_.lock();
         _loc4_.draw(param1,new Matrix(param2,0,0,param3,param2 == -1 ? param1.width : 0,param3 == -1 ? param1.height : 0),null,null,null,true);
         _loc4_.unlock();
         return _loc4_;
      }
   }
}

