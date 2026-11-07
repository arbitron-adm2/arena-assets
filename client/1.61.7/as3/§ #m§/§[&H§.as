package § #m§
{
   import §!!!§.§3A§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%# §.§@a§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+"m§.*;
   import §+%S§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §5"J§.*;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?$L§.§ "N§;
   import §?>§.§]!V§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^#o§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.*;
   import ru.pragmatix.wormix.messages.client.SendWipeConfirmCode;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §[&H§ extends §%%v§
   {
      
      public var params:§2#P§;
      
      private var container:DisplayObject;
      
      private var §!%R§:Boolean = false;
      
      private var §[#R§:Boolean = false;
      
      private var hint:DisplayObject;
      
      private var §>%%§:Timer;
      
      private var hideTimer:Timer;
      
      private var hintProvider:§?A§;
      
      public function §[&H§(param1:DisplayObject, param2:§2#P§ = null)
      {
         super();
         this.container = param1;
         this.§'!L§(param2);
      }
      
      public function §@!y§(param1:§?A§, param2:§2#P§ = null) : void
      {
         this.hintProvider = param1;
         this.§'!L§(param2);
         this.container.addEventListener(MouseEvent.MOUSE_MOVE,this.§&!l§);
         this.container.addEventListener(MouseEvent.ROLL_OUT,this.§5#o§);
      }
      
      public function §'!L§(param1:§2#P§) : void
      {
         if(param1)
         {
            this.params = param1;
         }
         else
         {
            this.params = new §2#P§();
         }
      }
      
      public function §`&?§() : §?A§
      {
         return this.hintProvider;
      }
      
      public function §`Z§() : void
      {
         if(this.hintProvider)
         {
            this.container.removeEventListener(MouseEvent.MOUSE_MOVE,this.§&!l§);
            this.container.removeEventListener(MouseEvent.ROLL_OUT,this.§5#o§);
            this.removeHintImmediately();
            this.hintProvider = null;
         }
      }
      
      public function §&!l§(param1:MouseEvent) : void
      {
         var cntRect:Rectangle;
         var e:MouseEvent = param1;
         if(this.hintProvider == null || this.§[#R§)
         {
            return;
         }
         this.hint = this.hintProvider.§&k§();
         cntRect = this.container.getRect(§ "N§.scene);
         switch(this.params.§%#6§)
         {
            case §;#^§.DEFAULT:
               this.hint.x = e.stageX + 15;
               this.hint.y = e.stageY;
               if(this.hint.x + this.hint.width > § "N§.stageWidth)
               {
                  this.hint.x = e.stageX - this.hint.width - this.params.§%&D§;
               }
               if(this.hint.y + this.hint.height > § "N§.stageHeight)
               {
                  this.hint.y = § "N§.stageHeight - this.hint.height - this.params.§+"q§;
               }
               break;
            case §;#^§.§[!K§:
               §`o§.§ "O§(this.hint,cntRect.x,cntRect.right);
               this.hint.y = cntRect.bottom + 5;
               break;
            case §;#^§.§4!f§:
               §`o§.§ "O§(this.hint,cntRect.x,cntRect.right);
               this.hint.y = cntRect.top - this.hint.height - 5;
               break;
            case §;#^§.LEFT:
               §`o§.§2!1§(this.hint,cntRect.y,cntRect.bottom);
               this.hint.x = cntRect.x - this.hint.width - 5;
               break;
            case §;#^§.RIGHT:
               §`o§.§2!1§(this.hint,cntRect.y,cntRect.bottom);
               this.hint.x = cntRect.right + 15;
               break;
            case §;#^§.§+&H§:
               this.hint.x = this.params.x;
               this.hint.y = this.params.y;
               break;
            default:
               if(this.params.§%#6§ is §^&D§)
               {
                  if(§^&D§(this.params.§%#6§).isAbsolute)
                  {
                     this.hint.x = §^&D§(this.params.§%#6§).x;
                     this.hint.y = §^&D§(this.params.§%#6§).y;
                  }
                  else
                  {
                     §`o§.§ "O§(this.hint,cntRect.x,cntRect.right);
                     §`o§.§2!1§(this.hint,cntRect.y,cntRect.bottom);
                     this.hint.x += §^&D§(this.params.§%#6§).x;
                     this.hint.y += §^&D§(this.params.§%#6§).y;
                  }
               }
         }
         if(this.params.§%#6§ != §;#^§.DEFAULT)
         {
            if(this.hint.x + this.hint.width > § "N§.stageWidth)
            {
               this.hint.x = § "N§.stageWidth - this.hint.width - this.params.§%&D§;
            }
            else if(this.hint.x < 0)
            {
               this.hint.x = this.params.§%&D§;
            }
         }
         this.§!%R§ = true;
         if(this.§>%%§)
         {
            this.§>%%§.stop();
         }
         this.§>%%§ = new Timer(this.params.§+&6§);
         this.§>%%§.addEventListener(TimerEvent.TIMER,function():void
         {
            if(§!%R§)
            {
               §[#R§ = true;
               §2$d§().addChild(hint);
               §`%d§();
               if(params.§,!;§)
               {
                  hint.addEventListener(MouseEvent.MOUSE_MOVE,§="y§);
                  hint.addEventListener(MouseEvent.ROLL_OUT,§[$c§);
               }
            }
            §>%%§.stop();
            §>%%§ = null;
         });
         this.§>%%§.start();
      }
      
      protected function §5#o§(param1:MouseEvent) : void
      {
         this.§!%R§ = false;
         this.removeHint();
      }
      
      public function removeHint() : void
      {
         if(this.§[#R§)
         {
            if(this.hideTimer)
            {
               this.hideTimer.stop();
            }
            this.hideTimer = new Timer(this.params.§"^§);
            this.hideTimer.addEventListener(TimerEvent.TIMER,function():void
            {
               removeHintImmediately();
               hideTimer.stop();
               hideTimer = null;
            });
            this.hideTimer.start();
         }
      }
      
      public function removeHintImmediately() : void
      {
         if(!this.§[#R§)
         {
            this.§!%R§ = false;
            if(this.§>%%§)
            {
               this.§>%%§.stop();
            }
         }
         else
         {
            this.§[#R§ = false;
            this.§!%R§ = false;
            if(this.hint)
            {
               if(this.§2$d§().contains(this.hint))
               {
                  this.§2$d§().removeChild(this.hint);
               }
               this.hint.removeEventListener(MouseEvent.MOUSE_MOVE,this.§="y§);
               this.hint.removeEventListener(MouseEvent.ROLL_OUT,this.§[$c§);
               this.hint = null;
            }
            removeEventListener(§ "N§.scene.stage,MouseEvent.MOUSE_DOWN,this.§?!F§);
         }
      }
      
      private function §="y§(param1:MouseEvent) : void
      {
         if(this.params.§,!;§)
         {
            if(this.hideTimer)
            {
               this.hideTimer.stop();
               this.hideTimer = null;
            }
         }
      }
      
      private function §[$c§(param1:MouseEvent) : void
      {
         this.removeHintImmediately();
      }
      
      private function §2$d§() : DisplayObjectContainer
      {
         return Boolean(this.params) && Boolean(this.params.§1$]§) ? this.params.§1$]§ : § "N§.scene;
      }
      
      private function §`%d§() : void
      {
         addEventListener(§ "N§.scene.stage,MouseEvent.MOUSE_DOWN,this.§?!F§,false,int.MAX_VALUE);
      }
      
      private function §?!F§(param1:MouseEvent) : void
      {
         if(!this.container.hitTestPoint(param1.stageX,param1.stageY))
         {
            this.removeHintImmediately();
         }
      }
   }
}

