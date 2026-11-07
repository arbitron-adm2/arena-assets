package § #9§
{
   import § !P§.*;
   import § #m§.§;#^§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §,"v§.§9%d§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8#o§.*;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §@!i§.§!m§;
   import §@$§.§+%>§;
   import §@$§.§;F§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §`%&§.§`§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §9j§ extends §`&-§ implements §^c§
   {
      
      private var avatar:§3L§;
      
      private var menu:§+%>§;
      
      private var §`!6§:Boolean = true;
      
      public function §9j§(param1:MovieClip, param2:§+%>§ = null, param3:Boolean = false)
      {
         super(param1);
         this.avatar = new §3L§(§'$a§("avatar"),param3);
         this.menu = param2;
         if(param2)
         {
            param1.addEventListener(MouseEvent.CLICK,this.§'$9§);
         }
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         §"$t§.§<$W§(param1,container as MovieClip);
         this.avatar.§3%,§(param1);
      }
      
      private function §'$9§(param1:MouseEvent) : void
      {
         var _loc2_:Point = this.avatar.getContainer().globalToLocal(new Point(param1.stageX,param1.stageY));
         if(_loc2_.x <= this.avatar.width && _loc2_.y <= this.avatar.height)
         {
            this.menu.§3%,§(this.avatar.§?&1§());
            §;F§.§"$w§(this.menu).§<$8§(param1.stageX,param1.stageY);
         }
      }
      
      public function §'O§() : void
      {
         var _loc1_:TextField = §'%s§("userName");
         getChildByName("teamHpLabel").visible = false;
         getChildByName("teamHp").visible = false;
         getChildByName("teamLabel").visible = false;
         getChildByName("teamSize").visible = false;
         getChildByName("teamIcon").visible = false;
         getChildByName("ratingLabel").visible = false;
         getChildByName("rating").visible = false;
         getChildByName("avatar.level").visible = false;
         if(this.§`!6§)
         {
            _loc1_.autoSize = TextFieldAutoSize.CENTER;
            §`o§.§9$x§(this.avatar);
            §`o§.§^#c§(_loc1_,this.avatar.getContainer());
         }
         this.avatar.§^#r§();
      }
      
      public function §!#n§() : void
      {
         var _loc1_:TextField = §'%s§("userName");
         getChildByName("teamHpLabel").visible = true;
         getChildByName("teamHp").visible = true;
         getChildByName("teamLabel").visible = true;
         getChildByName("teamSize").visible = true;
         getChildByName("teamIcon").visible = true;
         getChildByName("ratingLabel").visible = true;
         getChildByName("rating").visible = true;
         getChildByName("avatar.level").visible = true;
         if(this.§`!6§)
         {
            _loc1_.autoSize = TextFieldAutoSize.LEFT;
            _loc1_.x = 10.15;
            this.avatar.x = 8.55;
         }
         this.avatar.§&%4§();
      }
      
      public function §@%X§() : §3L§
      {
         return this.avatar;
      }
      
      public function §?%_§(param1:§+%>§) : void
      {
         if(this.menu)
         {
            container.removeEventListener(MouseEvent.CLICK,this.§'$9§);
         }
         this.menu = param1;
         if(this.menu)
         {
            container.addEventListener(MouseEvent.CLICK,this.§'$9§);
         }
      }
      
      public function §""u§() : §+%>§
      {
         return this.menu;
      }
      
      override public function destroy() : void
      {
         this.stopAnimations();
         this.avatar.destroy();
         if(this.menu)
         {
            this.menu.destroy();
            container.removeEventListener(MouseEvent.CLICK,this.§'$9§);
         }
         super.destroy();
      }
      
      public function set §9%8§(param1:Boolean) : void
      {
         this.§`!6§ = param1;
      }
      
      public function stopAnimations() : void
      {
         this.avatar.stopAnimations();
      }
      
      public function playAnimations() : void
      {
         this.avatar.playAnimations();
      }
   }
}

