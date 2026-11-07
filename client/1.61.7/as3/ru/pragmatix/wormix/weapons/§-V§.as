package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §-V§ extends BlowTorch
   {
      
      private const §0$-§:§&$2§ = new §&$2§(30);
      
      public function §-V§()
      {
         super();
      }
      
      override protected function §`%V§() : void
      {
         var _loc3_:§&"T§ = null;
         var _loc4_:§6#I§ = null;
         var _loc1_:Point = §-q§.§2!B§(this.§0$-§.value + this.§0$-§.value / 2 - 10,§-q§.§7%8§(clip.rotation)).add(new Point(owner.x,owner.y));
         Application.scene.§,# §(_loc1_.x,_loc1_.y,this.§0$-§.value,null,int(recordId.value));
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§@!_§();
         for each(_loc3_ in §<H§.§3%'§(_loc1_.x,_loc1_.y,this.§0$-§.value + 5,_loc2_))
         {
            if(_loc3_ != owner)
            {
               _loc4_ = new §6#I§(owner,_loc3_.x,_loc3_.y,false,1);
               _loc4_.x = _loc3_.x;
               _loc4_.y = _loc3_.y;
               §'"$§.inflictDamage(_loc4_,null,§'"i§,5,5);
            }
         }
         §?!K§();
         §=#P§.§6+§();
      }
      
      override protected function onFrame(param1:Event) : void
      {
      }
   }
}

