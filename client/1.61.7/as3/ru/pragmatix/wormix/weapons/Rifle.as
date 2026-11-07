package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §,#_§.FrameTimer;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §^4§.§0#q§;
   import §^4§.§]"8§;
   import §`%&§.§,%§;
   import flash.events.Event;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class Rifle extends §,%r§
   {
      
      public static const §>$w§:Number = 2;
      
      public static const §?"H§:uint = 20;
      
      public static const §>&G§:§&$2§ = new §&$2§(30);
      
      public function Rifle()
      {
         super();
         §"#z§ = §2$"§ = 100;
         §-g§ = new §,%§(65,§"#z§);
      }
      
      override public function §""2§(param1:Object) : void
      {
         if(param1["trajectoryCrosshair"].value)
         {
            §7&§(new §%G§(§"#z§,new <§]%G§>[§]%G§.§5$r§],§%G§.§4"<§));
         }
         else
         {
            §7&§(new §!7§());
         }
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.§,!3§);
         var _loc1_:Class = getProperty("classBullet") as Class;
         if(_loc1_ == null)
         {
            _loc1_ = §]"8§;
         }
         var _loc2_:§]"8§ = new _loc1_(owner,getBarrelPoint(shotParams.angle),paramSet,shotParams.angle,§"#z§,§>$w§,false,true);
         _loc2_.§>#7§();
         _loc2_.§>#[§(§?"H§);
         if(_loc2_ is §0#q§)
         {
            §0#q§(_loc2_).setArmorReduce(getProperty("reduceAmount") as §&$2§);
         }
         if(shotsLeft.value == 0)
         {
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

