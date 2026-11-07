package §2#H§
{
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§2!H§;
   import §'$j§.*;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §+%S§.§2&>§;
   import §0!§.§8$Y§;
   import §0%[§.§1%"§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §65§.§=&9§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §;!J§.§8!a§;
   import §;!Z§.*;
   import §<$2§.§+$9§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §@!N§.§""L§;
   import §@"x§.*;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§+&-§;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §#$A§ extends §=&9§
   {
      
      public static const NAME:String = "VOID_ZONE";
      
      public static const § &G§:int = -1;
      
      public static const §!$k§:int = 1;
      
      public static const §&"W§:uint = 20;
      
      public static const §2$Y§:uint = 20;
      
      public static const §+"P§:Number = 1.5;
      
      public static const §`!W§:Number = 0.5;
      
      internal static const §&! §:int = 16;
      
      internal static const §0o§:int = 5;
      
      internal static const §1#?§:int = 6;
      
      private static const §"S§:Array = [§2&>§.NAME,§,"R§.§5!d§];
      
      private var owner:§+%]§;
      
      private var anchor:Point;
      
      private var radius:uint;
      
      private var §]"F§:uint = 0;
      
      private var §=&§:Number;
      
      public function §#$A§(param1:§+%]§, param2:Point, param3:uint, param4:Number = 1)
      {
         super(NAME,§ &G§,§!$k§);
         this.owner = param1;
         this.anchor = param2;
         this.radius = param3;
         this.§=&§ = param4;
      }
      
      override protected function §7$d§() : void
      {
         var _loc1_:Boolean = §<H§.§8!P§(unit,this.anchor.x,this.anchor.y,this.radius,true);
         if(unit.disposed || !_loc1_)
         {
            clear();
         }
         else if(§8"%§.§?!W§.§4"m§.activeSquad == unit.squad && (counter.value % §&"W§ == 0 || this.§]"F§ == 0) && !unit.buffs.§%%b§(§"S§))
         {
            this.§]"F§ = Math.min(9999,(this.§]"F§ == 0 ? §2$Y§ : this.§]"F§ * §+"P§) * this.§=&§);
            if(unit.hp - this.§]"F§ <= 0)
            {
               §'"$§.§]#I§(this.owner,unit.x,unit.y,unit,this.§]"F§,0,0,false,true);
               unit.setSpeedXY(0,0);
            }
            else
            {
               unit.attributes.hp.change(-this.§]"F§);
               unit.attributes.hp.§@#§(this.§]"F§);
               §2!H§.§;!x§(String(this.§]"F§),§2!H§.§8"<§,unit.x,unit.y - 10,20);
               DamageEvent.§!"2§(null,unit,this.§]"F§,§0%v§.§'%e§);
            }
            if(!this.owner.disposed && this.owner.attributes.hp.§9"H§() < 1)
            {
               this.owner.attributes.hp.§#1§(this.§]"F§ * (§`!W§ * this.§=&§),false,1,null,§8$Y§.§^$]§);
            }
         }
      }
      
      override protected function §5#F§() : void
      {
         unit.graphics.getClip().transform.colorTransform = new ColorTransform(1,1,1,1,-50,-50,-50,0);
         unit.attributes.§8$e§.§5#l§(-§&! § * this.§=&§);
         unit.attributes.jump.§]x§(-§0o§ * this.§=&§);
         unit.attributes.jump.§9"y§(-§1#?§ * this.§=&§);
      }
      
      override protected function §0&"§() : void
      {
         unit.graphics.getClip().transform.colorTransform = new ColorTransform(1,1,1,1,0,0,0,0);
         unit.attributes.§8$e§.§5#l§(§&! § * this.§=&§);
         unit.attributes.jump.§]x§(§0o§ * this.§=&§);
         unit.attributes.jump.§9"y§(§1#?§ * this.§=&§);
      }
   }
}

