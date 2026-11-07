package §!"u§
{
   import § #k§.*;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §%#u§.*;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2!-§.DamageEvent;
   import §4!!§.§76§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7$t§.§9#x§;
   import §;$%§.§'%W§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §5&0§ extends §3%0§
   {
      
      private static const §5M§:int = 100;
      
      private static const §4#>§:int = 250;
      
      private static const §;$5§:int = 40;
      
      private static const §["!§:int = 60;
      
      private static const §1"!§:int = 20;
      
      private static const §&%<§:int = 30;
      
      private static const §^#>§:String = "ScorpionIdle";
      
      private static const §"&#§:String = "ScorpionAppear";
      
      private static const §1"v§:String = "ScorpionFade";
      
      private static const §@%!§:String = "ScorpionAttack";
      
      private static const §0!8§:String = "ArrowScorpion";
      
      private var damage:int;
      
      private var §0!n§:Boolean;
      
      public function §5&0§(param1:§+%]§, param2:int, param3:int, param4:int, param5:Boolean = false)
      {
         name = "BOSS_QUEEN_SPIDERS_MINION_NAME";
         clips = [§^#>§,§"&#§,§1"v§];
         this.§0!n§ = param5;
         this.damage = param5 ? §["!§ : §;$5§;
         var _loc6_:int = param5 ? §4#>§ : §5M§;
         super(param1,param2,param3,_loc6_,false);
         Application.scene.addEventListener(§0%v§.EOT,this.§8$n§);
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(Boolean(param1.source) && Boolean(param1.source.owner) && param1.source.owner.squad.isAi())
         {
            param1.power = 0;
         }
         super.§""0§(param1);
         if(Boolean(param1.power > 0 && param1.source && param1.source.owner) && Boolean(!param1.source.owner.squad.isAi()) && §8%g§.hp.value <= 0)
         {
            _loc2_ = param1.source.owner.bonuses.getStatValue(Bonus.§;#-§);
            _loc3_ = this.§0!n§ ? §&%<§ : §1"!§;
            _loc4_ = _loc3_ + §-q§.§8$G§(_loc2_,_loc3_);
            param1.source.owner.attributes.hp.§#1§(_loc4_);
         }
      }
      
      public function §8$n§(param1:Event) : void
      {
         if(!Application.scene.§@$I§.§=%d§())
         {
            this.§+!U§();
         }
      }
      
      override protected function §+!U§() : void
      {
         var enemies:Vector.<§+%]§> = null;
         var target:§+%]§ = null;
         enemies = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         var amount:uint = enemies.length;
         if(amount > 0)
         {
            target = enemies[int(§8"%§.randomSeed.§,!q§(0,amount - 1))];
            turn(target.x);
            §@%;§.play(§`!v§.§#%u§);
            new §76§(owner,x,y,target,§0!8§,30,this.damage,function():void
            {
               §7%g§.§>!%§(target,owner);
            });
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.§8$n§);
         super.§[$u§(param1);
      }
      
      public function get §#!+§() : Boolean
      {
         return this.§0!n§;
      }
   }
}

