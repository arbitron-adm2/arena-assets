package § &5§
{
   import §"#x§.§'"$§;
   import §#",§.§+!h§;
   import §##y§.CollisionEvent;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §?$K§.§=z§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §`%&§.§,%§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§=#,§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2$3§ implements §!5§
   {
      
      private var map:§9$Z§;
      
      private var §%!n§:MovieClip;
      
      private var noMapGround:Boolean;
      
      private var mapObjects:§9X§;
      
      public function §2$3§(param1:§9$Z§, param2:Boolean = false)
      {
         super();
         this.map = param1;
         this.noMapGround = param2;
         this.§%!n§ = param1.className ? §6#A§.§!&6§(param1.className) : null;
         this.mapObjects = new §9X§();
         this.§!#h§();
         if(param1.clouds)
         {
            this.§'#V§();
         }
         if(param1.water)
         {
            this.mapObjects.water = new Water(param1);
         }
      }
      
      private function §!#h§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc13_:BitmapData = null;
         var _loc14_:Matrix = null;
         var _loc15_:Matrix = null;
         var _loc16_:Matrix = null;
         var _loc1_:MovieClip = MovieClip(this.§%!n§.getChildByName("ground_back"));
         var _loc2_:Number = this.map.§1% §;
         if(_loc1_)
         {
            _loc13_ = new BitmapData(this.map.§5"w§,this.map.mapHeight,true,0);
            _loc14_ = new Matrix(1,0,0,1,_loc1_.x + _loc2_,_loc1_.y + this.map.indentHeight);
            _loc13_.draw(_loc1_,_loc14_,null,null,null,true);
            this.mapObjects.§5#2§ = _loc13_;
            this.mapObjects.§3"m§ = §=#,§.§#"6§(_loc13_,-1,1);
         }
         _loc3_ = MovieClip(this.§%!n§.getChildByName("bg"));
         var _loc4_:Bitmap = new Bitmap(new BitmapData(_loc3_.width,_loc3_.height,false));
         _loc4_.bitmapData.draw(_loc3_,_loc3_.transform.matrix);
         this.mapObjects.bg = _loc4_;
         var _loc5_:String = Application.instance.stage.quality;
         Application.instance.stage.quality = StageQuality.BEST;
         var _loc6_:MovieClip = MovieClip(this.§%!n§.getChildByName("ground"));
         var _loc7_:MovieClip = MovieClip(this.§%!n§.getChildByName("helpers"));
         var _loc8_:BitmapData = new BitmapData(this.map.§5"w§,this.map.mapHeight,true,0);
         var _loc9_:BitmapData = new BitmapData(this.map.§5"w§,this.map.mapHeight,true,0);
         if(!this.noMapGround)
         {
            _loc15_ = new Matrix(1,0,0,1,_loc6_.x + _loc2_,_loc6_.y + this.map.indentHeight);
            _loc8_.lock();
            _loc8_.draw(_loc6_,_loc15_,null,null,null,true);
            _loc9_ = §=#,§.§#"6§(_loc8_,-1,1);
         }
         this.mapObjects.ground = _loc8_;
         this.mapObjects.§ $h§ = _loc9_;
         this.mapObjects.§1,§ = _loc6_;
         this.mapObjects.helpers = _loc7_;
         this.mapObjects.helpers.x = _loc2_;
         this.mapObjects.helpers.y = this.map.indentHeight;
         var _loc10_:MovieClip = this.§%!n§.getChildByName("indestructible_ground") as MovieClip;
         var _loc11_:BitmapData = new BitmapData(_loc8_.width,_loc8_.height,true,0);
         var _loc12_:BitmapData = _loc11_.clone();
         if(_loc10_ != null)
         {
            _loc16_ = new Matrix(1,0,0,1,_loc10_.x + _loc2_,_loc10_.y + this.map.indentHeight);
            _loc11_.draw(_loc10_,_loc16_,null,null,null,true);
            _loc12_ = §=#,§.§#"6§(_loc11_,-1,1);
         }
         this.mapObjects.§=!H§ = _loc11_;
         this.mapObjects.§1&H§ = _loc12_;
         Application.instance.stage.quality = _loc5_;
      }
      
      private function §'#V§() : void
      {
         var _loc1_:MovieClip = this.§%!n§.getChildByName("clouds") as MovieClip;
         var _loc2_:Object = this.map.clouds;
         if(_loc1_ != null)
         {
            this.mapObjects.clouds = _loc1_;
         }
         else if(_loc2_.className != null)
         {
            this.mapObjects.clouds = §6#A§.§!&6§(_loc2_.className);
         }
         else
         {
            this.mapObjects.clouds = §6#A§.§!&6§("BlueClouds");
         }
         if(Boolean(this.mapObjects.clouds) && _loc2_ != null)
         {
            this.mapObjects.clouds.x = _loc2_.x ? Number(_loc2_.x) : 0;
            this.mapObjects.clouds.y = _loc2_.y ? Number(_loc2_.y) : 0;
            this.mapObjects.clouds.scaleX = _loc2_.scale ? Number(_loc2_.scale) : 1;
            this.mapObjects.clouds.scaleY = _loc2_.scale ? Number(_loc2_.scale) : 1;
         }
      }
      
      public function §?%n§() : §9X§
      {
         return this.mapObjects;
      }
   }
}

