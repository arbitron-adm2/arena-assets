package §`%&§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%&6§.§2$v§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.NewUnitEvent;
   import §4$b§.§2m§;
   import §4$b§.§6!G§;
   import §5"J§.*;
   import §7!B§.§&"T§;
   import §9%W§.§!7§;
   import §;!Z§.*;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!O§.*;
   import §^#[§.§&$2§;
   import §^#[§.SpeedhackDetectedEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3!D§ extends §6#"§
   {
      
      private var §3$D§:Boolean;
      
      public function §3!D§(param1:uint, param2:uint, param3:uint, param4:Boolean)
      {
         super(param1,param2,param3);
         this.§3$D§ = param4;
      }
      
      override public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc7_:§2$v§ = null;
         var _loc5_:Boolean = Boolean(§8"%§.§?!W§.§^!U§().missionIds) && §8"%§.§?!W§.§^!U§().missionIds.indexOf(§+#N§.§9$6§) > -1;
         if(this.§3$D§ && _loc5_)
         {
            return null;
         }
         var _loc6_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§2$v§]);
         for each(_loc7_ in _loc6_)
         {
            if(_loc7_.owner.squad.getTeamId() == param1.squad.getTeamId())
            {
               return null;
            }
         }
         return super.test(param1,param2,param3,param4);
      }
   }
}

