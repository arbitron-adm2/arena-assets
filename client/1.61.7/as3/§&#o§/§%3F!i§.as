package §&#o§
{
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §4!!§.§76§;
   import §4&F§.*;
   import §7!B§.§6#I§;
   import §9![§.§^§;
   import §<%k§.*;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §?!i§ extends §6#I§ implements §^%c§
   {
      
      private static const §2#[§:uint = 40;
      
      private static const §"!n§:uint = §2#[§ / 2;
      
      private static const §=#c§:String = "CocoonAppear";
      
      private static const §'r§:String = "CocoonIdle";
      
      private static const §>$?§:String = "CocoonFade";
      
      private static const §2$>§:String = "Mosquito";
      
      public static const §#!H§:uint = 20;
      
      private var bar:§%&F§;
      
      private var isHatched:Boolean = false;
      
      private var lastPosition:Point;
      
      public function §?!i§(param1:§+%]§, param2:Number, param3:Number)
      {
         super(param1,param2,param3,false,0);
         canBeDamaged = true;
         §8%g§ = new §9"u§(this,§#!H§,0,0);
         this.x = param2;
         this.y = param3 + 10;
         §]!&§.§-#2§(this,§'r§,§=#c§,§>$?§);
         stable = true;
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§!#6§;
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.§0%m§(0,clip.height / 2);
         this.bar = new §[N§(param1,§0$N§.§%! §("BOSS_SYMBIOTE_COCOON"),20);
         physicModel.addEventListener(§9#1§.§3%G§,this.§^"m§);
         Application.scene.addEventListener(§0%v§.EOT,this.§'#A§);
      }
      
      public function §'#A§(param1:Event) : void
      {
         this.isHatched = true;
         disposed = true;
         Application.scene.removeEventListener(§0%v§.EOT,this.§'#A§);
      }
      
      private function §^"m§(param1:Event) : void
      {
         stable = true;
      }
      
      private function §;#§(param1:§+%]§, param2:uint) : void
      {
         var target:§+%]§ = param1;
         var healRate:uint = param2;
         var paa:§76§ = new §76§(owner,this.lastPosition.x,this.lastPosition.y,target,§2$>§,-1,0,function():void
         {
            if(!target.disposed)
            {
               target.attributes.hp.§#1§(healRate,false,0);
               §@%;§.play(§`!v§.§#%w§);
            }
         });
         paa.§4M§ = false;
      }
      
      private function §4U§() : void
      {
         if(this.isHatched)
         {
            this.§;#§(owner,§2#[§);
         }
         else
         {
            this.§;#§(§8!m§ ? §8!m§.owner : owner,§"!n§);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.lastPosition = new Point(x,y);
         §8$a§.§%!E§(§6#A§.§!&6§(§>$?§).totalFrames / 2,this.§4U§);
         physicModel.removeEventListener(§9#1§.§3%G§,this.§^"m§);
         super.§[$u§(param1);
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}

