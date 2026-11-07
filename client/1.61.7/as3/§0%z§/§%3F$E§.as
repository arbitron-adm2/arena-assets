package §0%z§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §##j§.§#$!§;
   import §##j§.§7,§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§'$T§;
   import §'!Z§.§#N§;
   import §+$=§.§6#A§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import config.achievements.§^t§;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.ui.Mouse;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   
   public class §?$E§ extends §4#_§ implements §^c§
   {
      
      private const §^%i§:Array;
      
      private const §@#U§:Array;
      
      private var §!#R§:Vector.<MovieClip>;
      
      private var §!"!§:Boolean;
      
      public function §?$E§(param1:§6$3§, param2:Boolean = true)
      {
         var isTotal:Boolean;
         var clip:MovieClip = null;
         var bossId:int = 0;
         var cell:MovieClip = null;
         var bossCell:§+y§ = null;
         var hintProvider:BossAchieveHint = null;
         var bossAchieveRecord:§6$3§ = param1;
         var hintNeed:Boolean = param2;
         this.§^%i§ = [§#N§.§"H§];
         this.§@#U§ = [];
         clip = §6#A§.§!&6§(bossAchieveRecord.levels[0].icon);
         super(clip);
         isTotal = §'%u§(bossAchieveRecord).isTotal;
         if(isTotal)
         {
            bossId = §^t§.§1!3§(bossAchieveRecord.id);
            cell = §6#A§.§!&6§(§+"'§.§4[§);
            bossCell = new §+y§(cell);
            bossCell.setItem(§^t§.§0%h§(bossId));
            bossCell.avatar.scaleX = bossCell.avatar.scaleY = 0.8;
            bossCell.avatar.x = bossCell.avatar.y = 23;
            clip.addEventListener(Event.ADDED_TO_STAGE,function():void
            {
               clip.parent.addChild(bossCell.avatar);
               clip.parent.removeChild(clip);
            });
         }
         if(hintNeed)
         {
            hintProvider = new BossAchieveHint(bossAchieveRecord);
            setQtipPanel(hintProvider,§;#^§.DEFAULT);
         }
         this.§!#R§ = §3!3§.§#"R§(getContainer() as MovieClip);
      }
      
      public function playAnimations() : void
      {
         if(isVisible() && this.§!"!§)
         {
            §3!3§.§<%W§(this.§!#R§);
            BossAchieveHint(§"#I§()).playAnimations();
         }
      }
      
      public function stopAnimations() : void
      {
         §3!3§.§>!j§(this.§!#R§);
         BossAchieveHint(§"#I§()).stopAnimations();
      }
      
      public function get §;#V§() : Boolean
      {
         return this.§!"!§;
      }
      
      public function set §;#V§(param1:Boolean) : void
      {
         this.§!"!§ = param1;
         if(param1)
         {
            this.playAnimations();
         }
         else
         {
            this.stopAnimations();
         }
         getContainer().filters = this.§;#V§ ? this.§@#U§ : this.§^%i§;
         BossAchieveHint(§"#I§()).icon.filters = getContainer().filters;
      }
   }
}

