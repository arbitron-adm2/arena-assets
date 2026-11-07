package §+#U§
{
   import § #9§.§"$t§;
   import § %f§.*;
   import §!L§.§+"'§;
   import §%Q§.§;$,§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §2"L§.§,!t§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §6_§.*;
   import §9%W§.§&!P§;
   import §=7§.§?%4§;
   import §@!N§.*;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import flash.display.SimpleButton;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&#u§ implements §;$,§
   {
      
      private var §6"0§:Boolean;
      
      public function §&#u§(param1:Boolean = false)
      {
         super();
         this.§6"0§ = param1;
      }
      
      public function check(param1:§+%]§, param2:§,%r§) : Boolean
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:int = 0;
         var _loc5_:Vector.<§+%]§> = null;
         if(this.§6"0§)
         {
            _loc3_ = §8"%§.§?!W§.§4"m§.§6"M§(param1);
            _loc4_ = param2.§4!J§().damageRadius.value + §<H§.§@k§ + §<H§.§@% §;
            _loc5_ = §<H§.§5"]§(param1.x + §<H§.§@% § * param1.direction,param1.y,_loc4_,_loc3_,true);
            return _loc5_.length == 0;
         }
         return true;
      }
   }
}

