package §0%z§
{
   import §!L§.§`#p§;
   import §#"V§.§<"4§;
   import §#%!§.§[N§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §2#W§.§ #,§;
   import §2#i§.§+%z§;
   import §3#T§.AtomBomb;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §8$V§.*;
   import §;!J§.§8!a§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=#g§.*;
   import §@!N§.§3!3§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<$]§ extends §<"4§ implements §^c§
   {
      
      private var §`$U§:Array = [];
      
      private var §>!L§:MovieClip;
      
      private var §^#v§:int;
      
      private var §!#R§:Vector.<MovieClip>;
      
      public function §<$]§(param1:MovieClip, param2:int, param3:§,$h§)
      {
         var _loc4_:MovieClip = null;
         super(param1);
         this.§>!L§ = §'$a§("icon");
         this.§^#v§ = this.§>!L§.height;
         if(param3 == §,$h§.§[Q§)
         {
            this.§^#v§ *= 0.8;
         }
         this.§!#R§ = new Vector.<MovieClip>(0);
         var _loc5_:int = 0;
         while(_loc5_ < param2 + 1)
         {
            this.§`$U§[_loc5_] = §'$a§("level" + _loc5_);
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < 4)
         {
            _loc4_ = §'$a§("level" + _loc5_);
            if(_loc4_)
            {
               this.§!#R§ = this.§!#R§.concat(§3!3§.§#"R§(_loc4_));
            }
            _loc5_++;
         }
      }
      
      public function setIconLevel(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         for each(_loc2_ in this.§`$U§)
         {
            _loc2_.visible = false;
         }
         this.§`$U§[param1].visible = true;
      }
      
      public function §3$g§(param1:Boolean) : void
      {
         TweenMax.to(this.§>!L§,0,{"colorMatrixFilter":{"saturation":param1}});
      }
      
      public function setAchievIcon(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:MovieClip = null;
         if(Boolean(param1) && param1 != "")
         {
            _loc3_ = §6#A§.§!&6§(param1);
            if(param2)
            {
            }
            _loc3_.height = this.§^#v§;
            _loc3_.scaleX = _loc3_.scaleY;
            this.§>!L§.addChild(_loc3_);
            §`o§.§0#P§(_loc3_,this.§>!L§);
         }
      }
      
      public function §`#f§() : MovieClip
      {
         return this.§>!L§;
      }
      
      override public function destroy() : void
      {
         this.stopAnimations();
         super.destroy();
      }
      
      public function playAnimations() : void
      {
         if(isVisible())
         {
            §3!3§.§<%W§(this.§!#R§);
         }
      }
      
      public function stopAnimations() : void
      {
         §3!3§.§>!j§(this.§!#R§);
      }
   }
}

