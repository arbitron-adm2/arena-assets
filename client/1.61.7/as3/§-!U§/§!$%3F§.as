package §-!U§
{
   import § #9§.§"$t§;
   import § $q§.§<"]§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §&"c§.§!!q§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §4$b§.§6!G§;
   import §7$t§.§&!e§;
   import §8#a§.§>!o§;
   import §<!W§.§1N§;
   import §?$7§.§+l§;
   import §?$7§.§6%k§;
   import §@!i§.§"-§;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §]^§.§-$T§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventPhase;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   use namespace gestouch_internal;
   
   public class §!$?§ extends §&%j§
   {
      
      private var §<"J§:§?%>§;
      
      private var bossName:TextField;
      
      private var description:TextField;
      
      private var message:TextField;
      
      public function §!$?§(param1:DisplayObject = null)
      {
         super(param1);
         this.§<"J§ = §!&5§.§7#[§(getChildByName("unlockBossBtn"));
         this.§<"J§.setText(§0$N§.UNLOCK_BOSS_TEXT,§"-§.§+$m§);
         this.§<"J§.§[!u§(this.§#2§);
         this.bossName = §'%s§("bossName");
         this.description = §'%s§("description");
         this.message = §'%s§("text");
      }
      
      override public function §9$n§(param1:§-$T§) : void
      {
         var _loc3_:MovieClip = null;
         var _loc5_:§5" § = null;
         var _loc6_:UserProfile = null;
         super.§9$n§(param1);
         var _loc2_:int = this.§ %w§();
         this.§<"J§.setVisible(_loc2_ > 0);
         if(_loc2_ > 0)
         {
            this.§<"J§.setText(String(_loc2_),§"-§.§6"j§,"count");
         }
         _loc3_ = getChildByName("avatar") as MovieClip;
         var _loc4_:DisplayObject = _loc3_.getChildByName("charClip");
         if(_loc4_)
         {
            _loc3_.removeChild(_loc4_);
         }
         _loc5_ = param1.§<$y§();
         _loc6_ = UserProfile.§'#3§("name",0,_loc5_.getRace(),0,0,0,_loc5_.§"!?§(),_loc5_.§8!u§(),_loc5_.§9K§());
         var _loc7_:§6!G§ = §"$t§.§!!1§(null,_loc6_,_loc3_);
         _loc7_.§4%F§();
         this.bossName.text = param1.§7%z§();
         this.description.text = param1.§]G§();
         this.message.text = _loc2_ > 0 ? §0$N§.BOSS_LOCKED : §0$N§.BOSS_LOCKED_BY_TOKENS;
      }
      
      private function § %w§() : int
      {
         var _loc1_:int = 0;
         _loc1_ = §=%e§.getId();
         var _loc2_:§+l§ = §6%k§.§>!+§(_loc1_);
         return §+l§.§9!A§ * (_loc1_ - _loc2_.§?U§() - 1);
      }
      
      private function §#2§(param1:Event) : void
      {
         var _loc2_:uint = uint(this.§ %w§());
         if(Application.userProfile.§@$D§() < _loc2_)
         {
            new §>!o§().show();
         }
         else
         {
            new §<"]§(§=%e§.getId(),_loc2_).show();
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.§<"J§.removeHandler(this.§#2§);
      }
   }
}

