package §4!!§
{
   import § !P§.*;
   import § #9§.§"$t§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §4$b§.§6!G§;
   import §9"-§.§?!s§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=7§.*;
   import §?"j§.§]!<§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]!h§ extends §'$V§
   {
      
      public static const §9%Q§:uint = 40;
      
      private static const §6"m§:Number = 7 * Math.PI / 180;
      
      private static const SPEED:uint = 20;
      
      private static const §;t§:uint = 15;
      
      private var damage:§&$2§;
      
      private var §2&E§:uint;
      
      private var §4b§:Boolean;
      
      public function §]!h§(param1:§+%]§, param2:int, param3:int, param4:Boolean, param5:§+%]§, param6:int, param7:uint = 3, param8:Boolean = false)
      {
         this.damage = new §&$2§(param6);
         this.§2&E§ = param7;
         this.§4b§ = param8;
         super(param1,param2,param3,param4,param5,13694463,16777215,SPEED);
         initialize(§"$C§(Math.PI / 2,25,new Point(param2,param3)));
         setSpeedXY(0,-SPEED);
         homingFeat.§<$1§ = §6"m§;
         homingFeat.§;$C§ = §;t§;
         §3$1§ = false;
         _damageType = §&!E§.COLD;
      }
      
      override protected function §;&;§() : void
      {
         var _loc1_:§+%]§ = target as §+%]§;
         if(Boolean(_loc1_) && !_loc1_.disposed)
         {
            inflictDamage(_loc1_,this.damage.value,0,0,false,true);
            if(!_loc1_.disposed)
            {
               _loc1_.buffs.place(new §+m§(owner,this.§2&E§,this.§4b§));
            }
            §@%;§.play(§`!v§.§ !h§);
         }
      }
   }
}

