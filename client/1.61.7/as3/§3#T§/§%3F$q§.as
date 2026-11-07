package §3#T§
{
   import §"%H§.§'%u§;
   import §##y§.CollisionEvent;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §4f§.§-&§;
   import §6"'§.§=$@§;
   import §7!B§.§6#I§;
   import §<!W§.§>&@§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§5&6§;
   import ru.pragmatix.wormix.game.ai.§<%&§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.weapons.Cannon;
   import ru.pragmatix.wormix.weapons.HolyGrenade;
   
   public class §?$q§ extends §6#I§
   {
      
      public static const §`#^§:String = "CarrotAm";
      
      private var target:§+%]§;
      
      public function §?$q§(param1:§+%]§, param2:Number, param3:uint, param4:§+%]§)
      {
         super(param1,param1.x,param1.y,false);
         this.target = param4;
         §,q§.push(§-&§.IGNORE_MAGNET);
         initialize(new Point(param1.x,param1.y),§`#^§);
         §^"F§(param2,param3);
         §`4§ = §5$=§;
         §3$1§ = false;
         physParams.§5N§ = §9%1§.§@%h§;
         Application.scene.§@$I§.§1$+§(this);
         this.attachTrail();
      }
      
      public function attachTrail(param1:uint = 8421504, param2:uint = 10526880) : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.attachTrail(this,10,6,param1,param2,1);
         }
      }
      
      override protected function §%$e§(param1:CollisionEvent) : void
      {
         super.§%$e§(param1);
         if(param1.other == this.target)
         {
            §>&@§.apply(this.target,§>&@§.§1!5§(owner),false);
            disposed = true;
         }
         else if(param1.other == null)
         {
            §1"-§.explode(§;n§.§6#B§,x,y,10,§`!v§.§5%;§);
            disposed = true;
         }
      }
   }
}

