package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%&3§.§[$z§;
   import §%&3§.§]"e§;
   import §'!Z§.§1"-§;
   import §9%W§.§!"G§;
   import §9%W§.§8#p§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.geom.Point;
   
   public class HomingBazooka extends §,%r§
   {
      
      protected var mark:MovieClip;
      
      public function HomingBazooka()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §7&§(new §8#p§());
         §7&§(new §!"G§());
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Class = getProperty("ammoClass") as Class;
         var _loc2_:§[$z§ = new _loc1_(owner,new Point(owner.x,owner.y),paramSet,shotParams.angle,§-&I§(shotParams.power),shotParams.point);
         if(_loc2_ is §]"e§)
         {
            §]"e§(_loc2_).setDamagePerSecond(§&$2§(getProperty("damagePerFrame")));
         }
         this.§?!K§();
         §=#P§.§6+§();
      }
      
      override protected function §7k§(param1:int) : void
      {
         if(param1 == 0)
         {
            this.mark = §1"-§.§##7§(shotParams.point.x,shotParams.point.y);
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.mark = null;
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         if(this.mark != null)
         {
            Application.scene.removeChild(this.mark);
         }
      }
   }
}

