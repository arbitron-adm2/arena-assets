package §&#o§
{
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §'"N§.§ !l§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2"L§.§^$y§;
   import §4!!§.§76§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§;$n§;
   import §9%W§.§&!P§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3#u§ extends §6#I§
   {
      
      private static const DAMAGE:uint = 100;
      
      private static const §#$@§:uint = 150;
      
      private static const §3P§:uint = 150;
      
      private static const §,$%§:uint = uint(§3P§ * 0.67);
      
      private static const §=#c§:String = "CocoonAppear";
      
      private static const §'r§:String = "CocoonIdle";
      
      private static const §>$?§:String = "CocoonFade";
      
      private static const §=$1§:String = "MosquitoCloud";
      
      private var isHatched:Boolean = false;
      
      public function §3#u§(param1:§+%]§, param2:Number, param3:Number)
      {
         var spawnAnimation:§&"T§ = null;
         var owner:§+%]§ = param1;
         var x:Number = param2;
         var y:Number = param3;
         super(owner,x,y,false,0);
         canBeDamaged = false;
         this.x = x;
         this.y = y;
         clip = §6#A§.§!&6§(§=$1§);
         clip.visible = false;
         stable = true;
         spawnAnimation = new §&"T§();
         spawnAnimation.x = x;
         spawnAnimation.y = y + 10;
         §]!&§.§-#2§(spawnAnimation,§'r§,§=#c§,§>$?§,function():void
         {
            spawnAnimation.disposed = true;
         },function():void
         {
            isHatched = clip.visible = true;
         });
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         Application.scene.addEventListener(§0%v§.EOT,this.§'%x§);
         Application.scene.§@$I§.§1$+§(spawnAnimation);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function §^#d§() : void
      {
         var _loc1_:Vector.<§+%]§> = §<H§.§5"]§(x,y,§#$@§,§8"%§.§?!W§.§4"m§.§6"M§(owner));
         if(_loc1_.length > 0)
         {
            this.attack(_loc1_[0]);
         }
      }
      
      public function §'%x§(param1:Event) : void
      {
         §'"$§.§]#I§(owner,x,y,null,DAMAGE,§3P§,§3P§ + 10,false);
         §1"-§.explode(§;n§.§8%a§,x,y,§,$%§,§`!v§.§["s§);
         §@%;§.play(§`!v§.§5%;§);
         disposed = true;
      }
      
      private function attack(param1:§+%]§) : void
      {
         new §76§(owner,x,y,param1,§=$1§,-1,DAMAGE);
         disposed = true;
      }
      
      private function onFrame(param1:Event) : void
      {
         if(!stable)
         {
            this.§'%x§(null);
         }
         if(!disposed && this.isHatched)
         {
            this.§^#d§();
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.§'%x§);
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         super.§[$u§(param1);
      }
   }
}

