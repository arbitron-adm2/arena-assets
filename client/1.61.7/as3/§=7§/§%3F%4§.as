package §=7§
{
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§8"@§;
   import §#%!§.§%&F§;
   import §#%!§.§7V§;
   import §#%!§.§[%U§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2"L§.§!#H§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.Boomerang;
   import §4!!§.§#Z§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§8#p§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §=#g§.§%!x§;
   import §?>§.§0!7§;
   import §@$§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§@#J§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.main.server.GetJoinClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.response.GetJoinClansMainResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§3!=§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §?%4§ extends §8"@§ implements §0!7§, §?A§
   {
      
      private var §`q§:Boolean;
      
      private var icon:§6!G§;
      
      private var §1%+§:§^$E§;
      
      private var §^&H§:§^%%§;
      
      private var profile:UserProfile;
      
      private var clone:UserProfile;
      
      private var §%b§:Boolean = false;
      
      private var §7%y§:DisplayObjectContainer;
      
      private var §#$[§:DisplayObjectContainer;
      
      private var events:§!#H§;
      
      private var §;$4§:§[&H§;
      
      private var §%#m§:§[%U§;
      
      public function §?%4§(param1:DisplayObject, param2:String, param3:Boolean = true)
      {
         super(param1,param2);
         MovieClip(param1).buttonMode = true;
         this.§`q§ = param3;
         this.§;$4§ = new §7V§(param1);
         this.§%#m§ = new §[%U§(this);
      }
      
      public function §5%6§(param1:DisplayObject, param2:DisplayObject) : void
      {
         this.§7%y§ = DisplayObjectContainer(param1);
         this.§#$[§ = DisplayObjectContainer(param2);
         this.§;$4§ = new §7V§(param1);
         if(!this.events)
         {
            this.events = new §!#H§();
            this.events.add(this.§#$[§,MouseEvent.MOUSE_OVER,this.§-$l§).add(this.§#$[§,MouseEvent.MOUSE_OUT,this.§6"x§).add(this.§7%y§,MouseEvent.MOUSE_OVER,this.§-$l§).add(this.§7%y§,MouseEvent.MOUSE_OUT,this.§6"x§).run();
         }
      }
      
      public function §-$S§() : §6!G§
      {
         return this.icon;
      }
      
      public function §]$o§(param1:§6!G§) : void
      {
         this.icon = param1;
      }
      
      public function §7"i§(param1:§^$E§) : void
      {
         this.§1%+§ = param1;
         this.icon.§7"i§(param1);
         if(this.§`q§)
         {
            this.clone.§7"i§(param1);
         }
      }
      
      public function §2u§() : §^$E§
      {
         return this.§1%+§;
      }
      
      public function §;"U§(param1:§^%%§) : void
      {
         this.§^&H§ = param1;
         this.icon.§;"U§(param1);
         if(this.§`q§)
         {
            this.clone.§;"U§(param1);
         }
      }
      
      public function §+!b§() : §^%%§
      {
         return this.§^&H§;
      }
      
      public function §&k§() : DisplayObject
      {
         return this.§%#m§ ? this.§%#m§.§&k§() : null;
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         this.profile = param1;
         this.clone = param1 ? param1.§ "P§() : null;
         if(param1)
         {
            this.§;$4§.§@!y§(this.§%#m§);
         }
         else
         {
            this.§;$4§.§`Z§();
         }
      }
      
      public function getProfile() : UserProfile
      {
         return this.profile;
      }
      
      public function get §9$q§() : DisplayObjectContainer
      {
         return this.§7%y§;
      }
      
      public function get §6$<§() : DisplayObjectContainer
      {
         return this.§#$[§;
      }
      
      public function §0"b§() : void
      {
         this.§;$4§.removeHint();
         if(this.§%b§)
         {
            this.§6$<§.removeChildAt(1);
         }
         else
         {
            this.§9$q§.removeChildAt(1);
         }
      }
      
      public function §';§() : void
      {
         this.§;$4§.removeHint();
         if(this.§%b§)
         {
            this.§0"b§();
            this.§9$q§.addChild(this.icon.getClip());
            this.§%b§ = false;
         }
      }
      
      public function §%!g§() : void
      {
         this.§;$4§.removeHint();
         if(!this.§%b§)
         {
            this.§0"b§();
            this.§6$<§.addChild(this.icon.getClip());
            this.§%b§ = true;
         }
      }
      
      private function §-$l§(param1:Event) : void
      {
         simpleButton.upState = simpleButton.overState;
      }
      
      private function §6"x§(param1:Event) : void
      {
         update();
      }
      
      public function reset() : void
      {
         if(this.§;$4§)
         {
            this.§;$4§.§`Z§();
            this.§;$4§.removeHint();
            this.§;$4§.destroy();
         }
         this.§3%,§(null);
         this.icon = null;
         this.§1%+§ = null;
         this.§^&H§ = null;
         this.clone = this.profile = null;
         setPressed(false);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.reset();
         this.events.clear();
         this.events = null;
      }
   }
}

