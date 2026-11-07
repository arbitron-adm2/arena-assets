package §<!G§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § $N§.§<%j§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"$+§.§`&$§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%"§.§[!^§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%z§.§+y§;
   import §0&F§.§0%v§;
   import §02§.§<!v§;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §3#T§.Boomerang;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §6_§.*;
   import §7"Q§.§0$L§;
   import §7$t§.§[!X§;
   import §9![§.§^§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §?"j§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §]$&§.§2&2§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import avmplus.getQualifiedClassName;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class §5b§ extends §,%r§ implements §=!s§
   {
      
      private static const §3]§:Number = Math.PI / 2;
      
      private static const §%#v§:Number = Math.PI / 2;
      
      private static const §,"O§:Number = Math.PI / 90;
      
      private var §&G§:Number;
      
      private var §8";§:Number;
      
      private var § %v§:Number;
      
      protected var ch:MovieClip;
      
      private var §>%[§:§&$2§ = new §&$2§(0);
      
      protected var angle:Number;
      
      protected var frames:§&$2§ = new §&$2§(0);
      
      protected var §<$-§:§&$2§ = new §&$2§(0);
      
      protected var §=W§:Point;
      
      public function §5b§(param1:Number = 0.03490658503988659, param2:Number = 1.5707963267948966, param3:Number = 1.5707963267948966)
      {
         super();
         this.§ %v§ = param1;
         this.§8";§ = param2;
         this.§&G§ = param3;
         this.ch = §6#A§.§!&6§(§+"'§.§;$O§);
      }
      
      override protected function §`%V§() : void
      {
         this.§>%[§.value = 0;
         this.frames.value = 0;
         this.§<$-§.value = 0;
         Application.scene.addChild(this.ch);
         §+# §.§9! §.deactivate();
         startFrameListening();
         this.angle = shotParams.angle;
         this.§'"`§();
         §+# §.§@%V§.activate();
         §?"'§ = true;
      }
      
      override public function activate() : void
      {
         if(!§?"'§)
         {
            super.activate();
         }
         else
         {
            this.§'"`§();
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(this.§>%[§.value != 0)
         {
            this.§@"J§(this.§>%[§.value);
         }
      }
      
      override public function §?!K§() : void
      {
         if(§?"'§)
         {
            this.§-"%§();
         }
         super.§?!K§();
      }
      
      protected function §-"%§() : void
      {
         §?"'§ = false;
         §+# §.§@%V§.deactivate();
         §+# §.§9! §.activate();
         §2#G§();
         Application.scene.removeChild(this.ch);
         §=#P§.§6+§();
      }
      
      public function weaponUpPressed() : void
      {
         this.§>%[§.value += 1;
      }
      
      public function weaponUpReleased() : void
      {
         --this.§>%[§.value;
      }
      
      public function weaponDownPressed() : void
      {
         --this.§>%[§.value;
      }
      
      public function weaponDownReleased() : void
      {
         this.§>%[§.value += 1;
      }
      
      private function §@"J§(param1:Number) : void
      {
         if(param1 > 0)
         {
            this.§[#k§();
         }
         else
         {
            this.§#"_§();
         }
      }
      
      protected function §[#k§() : void
      {
         this.angle -= owner.direction * Math.abs(this.§>%[§.value * this.§ %v§);
         if(Math.abs(this.angle) > Math.PI)
         {
            this.angle -= (this.angle > 0 ? 1 : -1) * Math.PI * 2;
         }
         if(this.angle < 0)
         {
            if(owner.direction == -1 && this.angle > -Math.PI + this.§&G§)
            {
               this.angle = -Math.PI + this.§&G§;
            }
            else if(owner.direction == 1 && this.angle < -this.§&G§)
            {
               this.angle = -this.§&G§;
            }
         }
         this.§'"`§();
      }
      
      protected function §#"_§() : void
      {
         this.angle += owner.direction * Math.abs(this.§>%[§.value * this.§ %v§);
         if(Math.abs(this.angle) > Math.PI)
         {
            this.angle -= (this.angle > 0 ? 1 : -1) * Math.PI * 2;
         }
         if(this.angle > 0)
         {
            if(owner.direction == -1 && this.angle < Math.PI - this.§8";§)
            {
               this.angle = Math.PI - this.§8";§;
            }
            else if(owner.direction == 1 && this.angle > this.§8";§)
            {
               this.angle = this.§8";§;
            }
         }
         this.§'"`§();
      }
      
      protected function §'"`§() : void
      {
         this.§=W§ = getBarrelPoint(this.angle);
         this.ch.x = owner.x + §!7§.§@$>§ * Math.cos(this.angle);
         this.ch.y = owner.y + §!7§.§@$>§ * Math.sin(this.angle);
         §,%r§(owner.weapon).rotateWeaponClip(this.angle);
      }
   }
}

