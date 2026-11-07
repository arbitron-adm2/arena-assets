package §9%W§
{
   import §&"c§.§5$n§;
   import §9"-§.§?!s§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §%G§ extends §!7§
   {
      
      public static const §4"<§:uint = 12;
      
      public static const §>%@§:uint = 25;
      
      public static const §7$P§:uint = 25;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private var §<!Q§:§>!$§;
      
      public function §%G§(param1:uint, param2:Vector.<§]%G§> = null, param3:uint = 25, param4:Number = 1.5707963267948966, param5:Number = 1.5707963267948966, param6:uint = 25, param7:int = 0)
      {
         super(§!7§.§'$+§,param4,param5);
         this.§<!Q§ = new §>!$§(param1,param2,param3,param6,param7);
      }
      
      override protected function §&#k§() : void
      {
         Application.scene.addChild(this.§<!Q§.§3"f§);
         super.§&#k§();
      }
      
      override protected function §<#S§() : void
      {
         Application.scene.removeChild(this.§<!Q§.§3"f§);
         super.§<#S§();
      }
      
      override public function §'"`§() : void
      {
         §,%r§(unit.weapon).rotateWeaponClip(angle);
         this.§<!Q§.draw(unit,angle,§"#8§);
      }
   }
}

