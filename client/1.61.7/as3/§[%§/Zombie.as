package §[%§
{
   import §"$+§.*;
   import §#%!§.§%&F§;
   import §&"c§.§!!q§;
   import §'$Z§.§2#f§;
   import §0%[§.*;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$Z§.§9!&§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<V§.§!&-§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import config.§`!a§;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class Zombie extends §+%]§
   {
      
      public function Zombie(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function §;!s§(param1:Boolean = true, param2:Boolean = true) : void
      {
         super.§;!s§(param1,param2);
         if(param1)
         {
            this.clearBuffs();
         }
         else
         {
            this.§^%M§();
         }
         if(param1)
         {
            §#!I§();
         }
      }
      
      private function §^%M§() : void
      {
         var _loc1_:§=!6§ = null;
         if(!isRevived() || buffs.hasBuff(§=!6§.NAME) && §=!6§(buffs.getBuff(§=!6§.NAME)).ignoreRevived)
         {
            _loc1_ = buffs.getBuff(§=!6§.NAME) as §=!6§;
            this.clearBuffs();
            this.§-"A§();
            this.placeRevenge(Boolean(_loc1_) && _loc1_.ignoreRevived,Boolean(_loc1_) && _loc1_.§9!T§,Boolean(_loc1_) && _loc1_.isDamaged);
         }
      }
      
      override public function §;"U§(param1:§^%%§) : void
      {
         super.§;"U§(param1);
         this.§^%M§();
      }
      
      override public function §7"i§(param1:§^$E§) : void
      {
         super.§7"i§(param1);
         this.§^%M§();
      }
      
      public function clearBuffs() : void
      {
         buffs.§6C§(§=!6§.NAME);
         buffs.§6C§(§1N§.NAME);
      }
      
      private function §-"A§() : void
      {
         if(!isRevived() && record.getRace().§%§(§`!a§.§-%J§).getLevel() <= record.getLevel())
         {
            buffs.place(new §1N§());
         }
      }
      
      public function placeRevenge(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!isRevived() || param1)
         {
            buffs.place(new §=!6§(param1,param2,param3));
         }
      }
   }
}

