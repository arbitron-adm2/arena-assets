package §7!B§
{
   import §"!C§.§3#n§;
   import §"#]§.*;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%$[§.§1$J§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §'&"§.§,&3§;
   import §'&"§.TutorialCard;
   import §+$=§.§6#A§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;4§;
   import §2!-§.DamageEvent;
   import §2!-§.NewGraveEvent;
   import §2B§.§^%y§;
   import §4!K§.*;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§<$!§;
   import §=&!§.§]$d§;
   import §@!N§.§3!3§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §1"?§ extends §&"T§
   {
      
      private var owner:§+%]§;
      
      public function §1"?§(param1:String, param2:int, param3:int, param4:§+%]§)
      {
         var clipName:String = param1;
         var x:int = param2;
         var y:int = param3;
         var owner:§+%]§ = param4;
         super();
         this.owner = owner;
         canBeDamaged = true;
         clip = §6#A§.§!&6§(clipName);
         this.x = x;
         this.y = y;
         addEventListener(§0%v§.§&!D§,§""0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         addEventListener(§0%v§.§+&=§,function(param1:Event):void
         {
            if(speed > 3)
            {
               §@%;§.play(§`!v§.BONUS);
            }
         });
         Application.scene.§@$I§.§1$+§(this,true);
         Application.scene.dispatchEvent(new NewGraveEvent(this));
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         super.§1$Z§(param1);
         if(!§,q§ || §,q§.indexOf(§-&§.DROPPABLE) == -1)
         {
            if(§9!F§ != null && §9!F§.owner != null && §9!F§.owner.squad.isLocal())
            {
               §8"%§.§?!W§.§7%@§.increment(§!$L§.GRAVES_SANK);
               §8"%§.§?!W§.§7%@§.increment(§;4§.GRAVES_SANK);
            }
         }
      }
      
      public function getOwner() : §+%]§
      {
         return this.owner;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.owner = null;
         super.§[$u§(param1);
      }
      
      override public function get height() : int
      {
         var _loc1_:DisplayObject = clip.getChildByName("zombieContainer");
         return _loc1_ ? int(§4!<§ - _loc1_.height) : int(§4!<§);
      }
   }
}

