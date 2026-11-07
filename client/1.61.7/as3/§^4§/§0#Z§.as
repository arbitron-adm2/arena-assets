package §^4§
{
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!L§.§+"'§;
   import §#"V§.§0%9§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'$Z§.*;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §1#p§.§"Z§;
   import §3"@§.§##L§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §?!E§.*;
   import §?$L§.§ "N§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §0#Z§ extends §]"8§
   {
      
      private static const §4%7§:Number = 0.01;
      
      private static const §2&,§:§&$2§ = new §&$2§(3);
      
      public function §0#Z§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Number = 2, param7:Boolean = false, param8:Boolean = false, param9:Boolean = true, param10:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,§4%7§,param7,param8,param9,param10);
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         if(param1.other is §+%]§)
         {
            §+%]§(param1.other).buffs.place(new §[&;§(§2&,§.value));
         }
         super.onCollide(param1);
      }
   }
}

