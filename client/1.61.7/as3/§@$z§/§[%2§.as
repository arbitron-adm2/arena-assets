package §@$z§
{
   import § #9§.§"$t§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§?B§;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0&F§.SelectObjectEvent;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§9##§;
   import §3#T§.§+&F§;
   import §4#2§.§,%g§;
   import §4$b§.§6!G§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §8#a§.*;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §@!N§.§'+§;
   import §@!N§.§4"0§;
   import §@$v§.*;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.SetMercenariesTeamMembers;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §[%2§ extends §8"@§
   {
      
      protected var §=%e§:§-$T§;
      
      public function §[%2§(param1:DisplayObject, param2:String = null)
      {
         super(param1,param2);
      }
      
      private static function §6"X§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = param1.getChildByName("charClip");
         if(_loc2_)
         {
            param1.removeChild(_loc2_);
         }
      }
      
      public function §9$n§(param1:§-$T§) : void
      {
         this.§=%e§ = param1;
         var _loc2_:SimpleButton = getContainer() as SimpleButton;
         this.§6$S§(_loc2_.upState as DisplayObjectContainer);
         this.§6$S§(_loc2_.overState as DisplayObjectContainer);
         this.§6$S§(_loc2_.downState as DisplayObjectContainer);
      }
      
      public function §5"Q§() : void
      {
         setPressed(false);
         var _loc1_:SimpleButton = getContainer() as SimpleButton;
         var _loc2_:DisplayObjectContainer = _loc1_.upState as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc1_.downState as DisplayObjectContainer;
         var _loc4_:DisplayObjectContainer = _loc1_.overState as DisplayObjectContainer;
         §6"X§(_loc2_);
         §6"X§(_loc3_);
         §6"X§(_loc4_);
      }
      
      private function §6$S§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:MovieClip = param1.getChildByName("avatar") as MovieClip;
         §6"X§(_loc2_);
         var _loc3_:§5" § = this.§=%e§.§<$y§();
         var _loc4_:UserProfile = UserProfile.§'#3§("name",0,_loc3_.getRace(),0,0,0,_loc3_.§"!?§(),_loc3_.§8!u§(),_loc3_.§9K§());
         var _loc5_:§6!G§ = §"$t§.§!!1§(null,_loc4_,_loc2_);
         _loc5_.§4%F§();
      }
   }
}

