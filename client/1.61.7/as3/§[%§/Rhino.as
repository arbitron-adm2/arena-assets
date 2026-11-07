package §[%§
{
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§[N§;
   import §'!Z§.§]!&§;
   import §'"N§.*;
   import §'&"§.§,&3§;
   import §'&"§.§8$D§;
   import §'&"§.§=!x§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §5%S§.§>&-§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[$P§.§>%a§;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Rhino extends §+%]§
   {
      
      public static const §%C§:§&$2§ = new §&$2§(3);
      
      public static const §>#R§:§&$2§ = new §&$2§(15);
      
      public static const §2"6§:String = "RhinoEnrageDamageAnim";
      
      private var stompCounter:§&$2§;
      
      private var §+!;§:Boolean;
      
      private var §,"E§:§>%a§;
      
      public function Rhino(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         attributes.jump = this.§,"E§ = new §>%a§(this,attributes.jump);
         this.stompCounter = new §&$2§(§%C§.value);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
      }
      
      override public function §@$x§(param1:§"Z§) : void
      {
         super.§@$x§(param1);
      }
      
      override public function §1%f§() : void
      {
         super.§1%f§();
      }
      
      private function §@%D§(param1:Event) : void
      {
         this.stompCounter.value = §%C§.value;
      }
      
      public function §"" §() : uint
      {
         return this.stompCounter.value;
      }
      
      public function §6$4§() : void
      {
         this.§+!;§ = true;
         graphics.§6w§(§2"6§,true);
         if(this.stompCounter.value > 0)
         {
            --this.stompCounter.value;
         }
         §+# §.§9! §.deactivate();
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         physParams.§?$]§ = false;
      }
      
      public function §@#e§() : void
      {
         var gm:§]$;§ = null;
         if(!disposed)
         {
            gm = §8"%§.§?!W§.§4"m§;
            if(!gm.§1"3§() && !gm.§[!W§() && !gm.§"$6§())
            {
               if(gm.§=%g§())
               {
                  gm.§%!J§(true);
               }
            }
            §+# §.§9! §.activate();
            §8$a§.§&!#§(this,§9#1§.STABLE,function(param1:Event):void
            {
               physParams.§?$]§ = true;
               §+!;§ = false;
            });
         }
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         if(!this.§+!;§)
         {
            super.onCollide(param1);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         super.§[$u§(param1);
      }
      
      public function addJumpExplodeRadius(param1:int) : Boolean
      {
         if(this.§,"E§)
         {
            this.§,"E§.§'$n§(param1);
            return true;
         }
         return false;
      }
   }
}

