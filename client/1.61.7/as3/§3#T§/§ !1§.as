package §3#T§
{
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#H§.§>#M§;
   import §3#a§.*;
   import §4%_§.ZombieGrave;
   import §4f§.§-&§;
   import §7!B§.§6#I§;
   import §7$t§.§9#x§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §?#g§.Race;
   import §@!i§.§1""§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class § !1§ extends §6#I§
   {
      
      private var §`m§:§7#P§;
      
      public function § !1§(param1:§+%]§, param2:String)
      {
         super(param1,param1.x,param1.y,false);
         this.§`m§ = §@%;§.play(§`!v§.§^K§,true);
         var _loc3_:MovieClip = §6#A§.§!&6§(param2);
         this.clip = _loc3_;
         this.x = param1.x + (param1.direction == §+%]§.LEFT ? 9 : -9);
         this.y = param1.y + 10;
         this.clip.play();
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         stable = false;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.NONE);
         physicModel = new §;$S§(physParams);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.§`m§ != null)
         {
            this.§`m§.stop();
         }
      }
   }
}

