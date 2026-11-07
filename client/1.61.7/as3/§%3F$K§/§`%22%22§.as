package §?$K§
{
   import § #9§.§3L§;
   import § #m§.§;#^§;
   import § $q§.*;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#",§.*;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§@a§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.§-!6§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§!%C§;
   import §2#H§.§,"R§;
   import §2B§.§#&E§;
   import §3#T§.§,?§;
   import §3#T§.Boomerang;
   import §4!!§.§2&F§;
   import §4#`§.*;
   import §4'§.§^"p§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.messages.client.SelectRace;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §`""§ extends §%%o§
   {
      
      public static const NAME:String = "KICKBACK_BUFF";
      
      public function §`""§()
      {
         super(NAME,-1,0);
      }
      
      override protected function §5#F§() : void
      {
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
      }
      
      override protected function §0&"§() : void
      {
         unit.removeEventListener(§0%v§.§&!D§,this.§?$u§);
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         var _loc6_:§+%]§ = null;
         var _loc2_:uint = 50;
         var _loc3_:§+%]§ = §+%]§(param1.victim);
         if(param1.source is §,?§)
         {
            _loc3_.setSpeedXY(_loc3_.speedX / 2,_loc3_.speedY / 2);
         }
         if(Math.abs(_loc3_.speed) > 10)
         {
            _loc3_.§^"F§(_loc3_.angle,10);
         }
         var _loc4_:Vector.<§+%]§> = §<H§.§5"]§(_loc3_.x,_loc3_.y,_loc2_);
         var _loc5_:int = _loc3_.squad.getTeamId();
         for each(_loc6_ in _loc4_)
         {
            if(_loc6_.squad.getTeamId() != _loc5_)
            {
               _loc6_.§5!?§(§^$y§.sign(_loc6_.x - _loc3_.x) * 6,-5);
            }
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §`""§());
      }
   }
}

