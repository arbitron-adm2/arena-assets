package §+%S§
{
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §#%!§.§7V§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §&#E§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2"L§.§!#H§;
   import §2"v§.*;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2#x§.*;
   import §4!x§.§@& §;
   import §4$b§.§2m§;
   import §65§.§=&9§;
   import §7!B§.§&"T§;
   import §9%W§.§8#p§;
   import §9&+§.§6&=§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §"!q§ extends §=&9§
   {
      
      public static const NAME:String = "AIR_BLOCK";
      
      public static const § &G§:int = -1;
      
      protected var radius:uint;
      
      private var clip:MovieClip;
      
      protected var §1#,§:uint;
      
      protected var anchor:Point;
      
      protected var gobj:§&"T§;
      
      protected var owner:§+%]§;
      
      protected var damage:uint;
      
      protected var §;$Y§:String;
      
      public function §"!q§(param1:§&"T§, param2:§+%]§, param3:Point, param4:uint, param5:uint, param6:uint, param7:String)
      {
         super(NAME,§ &G§,1);
         this.gobj = param1;
         this.owner = param2;
         this.anchor = param3;
         this.radius = param4;
         this.§1#,§ = param5;
         this.damage = param6;
         this.§;$Y§ = param7 || §+"'§.§;"y§;
      }
      
      public static function §0"4§(param1:§&"T§, param2:§+%]§, param3:§+%]§, param4:int) : void
      {
         §1"-§.§2$O§(param1,param3,12,10,6068463,8);
         §1"-§.§`$Q§(param3.x,param3.y,§1"-§.§9a§);
         §'"$§.§]#I§(param2,param3.x,param3.y,param3,param4,0,0,false,true,§&!E§.§=$-§);
         §@%;§.play(§`!v§.§`%9§);
      }
      
      override protected function §7$d§() : void
      {
         var _loc1_:Boolean = !this.anchor ? true : §<H§.§8!P§(unit,this.anchor.x,this.anchor.y,this.radius,true);
         if(unit.disposed || !_loc1_ || unit.stable)
         {
            clear();
         }
         else if(counter.value >= this.§1#,§ && _loc1_ && !unit.stable && !this.gobj.disposed && Boolean(this.owner))
         {
            this.§+!M§();
            unit.setSpeedXY(0,0);
            clear();
         }
      }
      
      protected function §+!M§() : void
      {
         §0"4§(this.gobj,this.owner,unit,this.damage);
      }
      
      override protected function §5#F§() : void
      {
         this.clip = §6#A§.§!&6§(this.§;$Y§);
         unit.graphics.§5$#§(§2m§.§-w§,this.clip);
      }
      
      override protected function §0&"§() : void
      {
         if(!unit.disposed)
         {
            unit.graphics.detachClip(this.clip,§2m§.§-w§);
         }
      }
   }
}

