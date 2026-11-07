package §@c§
{
   import § !P§.*;
   import § &5§.§@N§;
   import §"%H§.§1! §;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §4!!§.§'$V§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^!]§.WeaponShootEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class § #c§ extends §'$V§
   {
      
      private static const §;o§:int = 600;
      
      private static const §#"`§:int = 100;
      
      private static const §"#V§:int = 50;
      
      private static const § "h§:String = "SoulAm";
      
      public function § #c§(param1:§+%]§, param2:int, param3:int, param4:§&"T§, param5:uint = 4)
      {
         super(param1,param2,param3,true,param4,0,0,param5);
         this.clip = §6#A§.§!&6§(§ "h§);
         §##[§ = §;o§;
         §@#T§ = §@N§.§7&H§;
         §3$1§ = false;
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§+%]§ = param1.other as §+%]§;
         if(Boolean(_loc2_) && _loc2_.squad.isAi())
         {
            _loc2_.attributes.hp.§#1§(§#"`§,true,0);
         }
         else if(_loc2_)
         {
            _loc3_ = Math.min(§"#V§,_loc2_.hp > 1 ? _loc2_.hp - 1 : 0);
            DamageEvent.§!"2§(null,_loc2_,_loc3_,§0%v§.§'%e§);
            Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§2%l§,false,true,§0%v§.DAMAGE_TRIGGER));
            if(_loc3_ > 0 && !_loc2_.buffs.§%%b§([§2&>§.NAME,§,"R§.§5!d§]))
            {
               _loc2_.attributes.hp.change(-_loc3_);
               §2!H§.§;!x§(_loc3_.toString(),§2!H§.§8"<§,_loc2_.x,_loc2_.y - 10,20);
            }
         }
         disposed = true;
      }
      
      override protected function §0$J§(param1:uint, param2:uint) : void
      {
      }
   }
}

