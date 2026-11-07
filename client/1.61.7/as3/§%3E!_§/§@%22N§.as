package §>!_§
{
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import §"%H§.§'%u§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §@"N§ extends §`&-§ implements §?A§
   {
      
      private var §6#G§:DisplayObject = null;
      
      private var §;$4§:§[&H§;
      
      private var hint:ClanMemberIntroHint;
      
      public function §@"N§(param1:DisplayObject = null)
      {
         super(param1);
         this.§;$4§ = new §[&H§(param1);
         this.§;$4§.§@!y§(this);
      }
      
      public function §&k§() : DisplayObject
      {
         if(this.§6#G§ == null)
         {
            this.hint = new ClanMemberIntroHint();
            this.§6#G§ = this.hint.§&k§();
         }
         return this.§6#G§;
      }
      
      public function §%%S§(param1:ClanMemberTO, param2:ClanTO) : void
      {
         if(this.hint == null)
         {
            this.§&k§();
         }
         var _loc3_:String = §2"e§.NA;
         var _loc4_:String = §2"e§.NA;
         if(param1.hostProfileId != 0)
         {
            _loc3_ = §=%_§.§?"F§(param1.hostProfileId,20,param2);
         }
         if(param1.joinDate > 0)
         {
            _loc4_ = §0#2§.§3"?§(param1.joinDate);
         }
         this.hint.initHint(_loc3_,_loc4_,param1.yesterdayRating,param1.weeklyRating);
      }
   }
}

