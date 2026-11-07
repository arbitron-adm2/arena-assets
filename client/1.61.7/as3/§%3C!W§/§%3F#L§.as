package §<!W§
{
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §#$e§.§!a§;
   import §%"1§.§@%;§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%j§.§0$+§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#a§.§[&A§;
   import §4$b§.§2m§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§%%o§;
   import §7$t§.§;#_§;
   import §9![§.§#$k§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §?$7§.§+#N§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §?#L§ extends §%%o§
   {
      
      public static const NAME:String = "ENCOURAGING_ROAR";
      
      public static const §!$[§:uint = 1;
      
      public static const §3$3§:String = "EncouragingRoar";
      
      public static const §&%d§:int = 40;
      
      public static const §-;§:int = -60;
      
      public static const §=!K§:§&$2§ = new §&$2§(2);
      
      public static const §>#'§:§&$2§ = new §&$2§(10);
      
      private static const §"M§:§&$2§ = new §&$2§(3);
      
      private var §8<§:§]$q§;
      
      private var §-!-§:Boolean = false;
      
      private var §%"O§:Boolean = false;
      
      private var §>%Y§:int = 0;
      
      private var §>%v§:int = 0;
      
      public function §?#L§(param1:int = -1, param2:int = -1, param3:int = -1)
      {
         super(NAME,param1);
         this.§-!-§ = param1 == -1;
         this.§>%Y§ = param2;
         this.§>%v§ = param3;
      }
      
      override protected function §7$d§() : void
      {
         var au:§+%]§;
         var clip:MovieClip = null;
         if(!this.§-!-§)
         {
            return;
         }
         au = §8"%§.§?!W§.§4"m§.activeUnit;
         if(au.squad.getTeamId() == unit.squad.getTeamId())
         {
            if(au.squad.getNumber() == unit.squad.getNumber() && !§5"O§.§4#+§(au))
            {
               clip = unit.graphics.§6w§("BoxerRoarLeader",true);
               §8$a§.§%!E§(clip ? uint(clip.totalFrames) : 0,function onWaitAndDoUpdateBreathClip():void
               {
                  if(Boolean(unit) && Boolean(!unit.disposed) && unit.stable)
                  {
                     unit.§2!W§();
                  }
               });
               if(au == unit)
               {
                  this.§3%<§();
               }
               else
               {
                  au.buffs.place(new §?#L§(§!$[§,this.§>%Y§,this.§>%v§));
               }
               if(au.squad.isLocal())
               {
                  §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§7$3§,this.§>%Y§);
               }
            }
         }
         else if(this.§%"O§)
         {
            this.§^"f§();
         }
      }
      
      private function §3%<§() : void
      {
         var clip:MovieClip = null;
         var tmp:§+%]§ = null;
         this.§%"O§ = true;
         unit.bonuses.§]!X§(this.§8<§);
         §1"-§.§8"l§(unit,§1"-§.§+@§);
         clip = §6#A§.§!&6§(§3$3§);
         unit.graphics.§5$#§(§2m§.§-w§,clip,0,§-;§);
         tmp = unit;
         §8$a§.§%!E§(§&%d§,function waitAndDoDetachClip():void
         {
            if(tmp)
            {
               tmp.graphics.detachClip(clip,§2m§.§-w§);
            }
         });
      }
      
      private function §^"f§() : void
      {
         this.§%"O§ = false;
         unit.bonuses.§9=§(this.§8<§);
      }
      
      override protected function §5#F§() : void
      {
         if(this.§>%Y§ == -1)
         {
            this.§>%Y§ = §=!K§.value + Math.min(§>#'§.value,int(unit.record.getLevel() / §"M§.value));
         }
         this.§8<§ = new §]$q§(NAME);
         this.§8<§.§3%<§(new §@"I§(Bonus.ATTACK,this.§>%Y§));
         if(!this.§-!-§)
         {
            this.§3%<§();
         }
      }
      
      override protected function §0&"§() : void
      {
         if(this.§%"O§)
         {
            this.§^"f§();
         }
      }
   }
}

