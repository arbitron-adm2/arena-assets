package §+%S§
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §"%H§.§6$3§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"Z§.§9"z§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §-8§.§3!x§;
   import §0%z§.§?$E§;
   import §0&F§.§0%v§;
   import §3#T§.Boomerang;
   import §4#`§.§+!l§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class § !!§ extends §%%o§
   {
      
      public static const NAME:String = "POISON";
      
      public static const §%!y§:int = 10;
      
      public static const §'%U§:int = 5;
      
      private static const §'$^§:§&$2§ = new §&$2§(20);
      
      private static const R:int = 73 - 140;
      
      private static const G:int = 186 - 140;
      
      private static const B:int = 96 - 140;
      
      private var owner:§+%]§;
      
      public function § !!§(param1:§+%]§, param2:int = 10)
      {
         super(NAME,param2,§'%U§);
         this.owner = param1;
      }
      
      override protected function §5#F§() : void
      {
         unit.graphics.colorTransform(R,G,B);
         Application.scene.addEventListener(§0%v§.EOT,this.trigger);
      }
      
      override protected function §0&"§() : void
      {
         unit.graphics.colorTransform(-R,-G,-B);
         Application.scene.removeEventListener(§0%v§.EOT,this.trigger);
         this.owner = null;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new § !!§(this.owner,§8#z§()));
      }
      
      private function trigger(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Point = null;
         if(!§&%M§)
         {
            if(!unit.buffs.hasBuff(§'%V§.NAME) && unit.hp > §'$^§.value)
            {
               _loc2_ = value.value * unit.hp / 100;
               _loc3_ = §=z§.§-L§(unit);
               §'"$§.§]#I§(this.owner,unit.x,unit.y + (_loc3_ ? 0 : 10),unit,_loc2_,0,0,false,true,§&!E§.POISON);
               if(_loc3_)
               {
                  §=z§.§5!u§(unit,_loc3_);
               }
            }
         }
      }
   }
}

