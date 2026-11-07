package §%&6§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §""8§.§,"z§;
   import §"$+§.§@C§;
   import §"%H§.§6$3§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §&%X§.§-#N§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§=t§;
   import §+%S§.§>!I§;
   import §,"v§.§9%d§;
   import §-&5§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1"r§.§ ! §;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §3#T§.§]!6§;
   import §4!x§.§@& §;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §9&+§.*;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §?$K§.*;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §[$<§.§"#"§;
   import §[%'§.§<"G§;
   import §^"<§.§+%E§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.response.treasury.DonateClanResponse;
   import ru.pragmatix.wormix.messages.client.GetMercenariesDefs;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§;$'§;
   
   public class §8!`§ extends §,"z§ implements §;$'§, §^%c§
   {
      
      private static const §,!§:uint = 180;
      
      protected var §;P§:§&$2§;
      
      protected var paramSet:§5$n§;
      
      protected var idleClipName:String;
      
      private var bar:§[N§;
      
      public function §8!`§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:§&$2§)
      {
         var hand:DisplayObject;
         var owner:§+%]§ = param1;
         var paramSet:§5$n§ = param2;
         var angle:Number = param3;
         var power:uint = param4;
         var duration:§&$2§ = param5;
         super(owner,paramSet,angle,power);
         this.paramSet = paramSet;
         this.§;P§ = new §&$2§(duration.value + 1 + this.§8#H§());
         canBeDamaged = true;
         addEventListener(§0%v§.§&!D§,this.§?$u§);
         Application.scene.addEventListener(§0%v§.EOT,this.§^#P§);
         hand = clip.getChildByName("hand");
         if(hand)
         {
            hand.visible = false;
         }
         this.bar = new §[N§(owner,"(" + this.§;P§.value + ")",10);
         this.bar.§]%d§();
         §8$a§.§%!E§(§,!§,function():void
         {
            if(!disposed && !stable)
            {
               disposed = true;
            }
         });
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         super.onCollide(param1);
         this.bar.§>$T§();
         §@%;§.play(§`!v§.§-$z§);
         if(this.idleClipName)
         {
            swapClip(§6#A§.§!&6§(this.idleClipName));
         }
      }
      
      protected function §1$^§(param1:Class) : void
      {
         var _loc4_:§8!`§ = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([param1]);
         var _loc3_:uint = uint(owner.squad.getTeamId());
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_ != this && _loc3_ == _loc4_.owner.squad.getTeamId())
            {
               _loc4_.disposed = true;
            }
         }
      }
      
      protected function §?$u§(param1:DamageEvent) : void
      {
         disposed = true;
      }
      
      protected function §^#P§(param1:Event) : void
      {
         if(--this.§;P§.value <= 0)
         {
            disposed = true;
         }
         else
         {
            this.bar.§["n§("(" + this.§;P§.value + ")");
         }
      }
      
      public function §8#H§() : int
      {
         return owner.bonuses.getStatValue(Bonus.DEVICE_DURATION) + owner.bonuses.getStatValue(Bonus.WEAPON_DEVICE_DURATION);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§1"E§,x,y,this.paramSet.explosionRadius.value,§`!v§.§`%9§);
         removeEventListener(§0%v§.§&!D§,this.§?$u§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§^#P§);
         super.§[$u§(param1);
      }
      
      public function §!"-§(param1:String) : void
      {
         this.idleClipName = param1;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}

