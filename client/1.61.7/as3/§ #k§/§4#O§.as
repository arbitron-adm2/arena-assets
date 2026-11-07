package § #k§
{
   import §"#x§.§'"$§;
   import §'!Z§.§2!H§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §9%W§.§&!P§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §4#O§ extends §3%0§
   {
      
      public function §4#O§(param1:§+%]§, param2:Number, param3:Number)
      {
         name = §@&B§;
         clips = [§1w§,§8"?§,§&!f§];
         super(param1,param2,param3);
         this.owner.addEventListener(§0%v§.§&!D§,this.§?$u§,false,§[!F§.§##c§);
      }
      
      public function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:uint = 0;
         if(!owner.disposed && param1.power > 0 && !this.disposed)
         {
            _loc2_ = param1.power > attributes.hp.value ? uint(attributes.hp.value) : uint(param1.power);
            §'"$§.inflictDamage(param1.source,this,_loc2_,0,0);
            §2!H§.§'!i§("(" + _loc2_ + ")",§2!H§.§?$!§,owner.x,owner.y + owner.height * 0.5,20);
            param1.power -= _loc2_;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         super.§[$u§(param1);
      }
   }
}

