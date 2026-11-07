package §+"m§
{
   import §!$D§.§2$^§;
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&3§.§[$z§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §&#h§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-@§.§+"A§;
   import §-@§.§5h§;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.HpChangeEvent;
   import §2#i§.§9##§;
   import §3"@§.§##L§;
   import §4#2§.*;
   import §4'§.§#"l§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^!]§.§-$w§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §3#[§ extends §&"T§
   {
      
      private static const §'#Q§:String = "AniArtilleryStrike";
      
      private static const §3&;§:String = "ArtilleryStrikeShoot";
      
      private static const §>$n§:int = 6;
      
      private static const §!H§:uint = 6;
      
      private static const §0$V§:uint = 20;
      
      private static const §@!q§:uint = 40;
      
      private static const §7#N§:uint = 60;
      
      private var owner:§+%]§;
      
      private var §>%M§:Number;
      
      private var §1#D§:Point;
      
      private var paramSet:§5$n§;
      
      private var shots:uint = 0;
      
      private var §=!S§:Point;
      
      private var §1$`§:MovieClip;
      
      public function §3#[§(param1:§+%]§, param2:§5$n§, param3:Point)
      {
         super();
         stable = false;
         physicModel.keepUnstable = true;
         x = param1.x;
         y = param1.y + §>$n§;
         this.§1#D§ = param3;
         this.owner = param1;
         this.paramSet = param2;
         this.§>%M§ = -Math.PI / 2 + param1.direction * Math.PI / 4;
         this.§=!S§ = new Point(x,y);
         clip = §6#A§.§!&6§(§'#Q§);
         clip.scaleX = param1.direction;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(frames % §0$V§ == 0)
         {
            if(this.shots < §!H§)
            {
               this.§6#e§();
               ++this.shots;
            }
            else
            {
               disposed = true;
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         clip.visible = true;
         Application.scene.§=P§(§@#T§).removeChild(this.§1$`§);
      }
      
      private function §6#e§() : void
      {
         var _loc2_:DisplayObjectContainer = null;
         var _loc1_:Point = this.§1#D§.clone();
         _loc1_.x += §8"%§.randomSeed.§,!q§(-§7#N§,§7#N§);
         _loc1_.y += §8"%§.randomSeed.§,!q§(-§7#N§,§7#N§);
         new §[$z§(this.owner,this.§=!S§,this.paramSet,this.§>%M§,§@!q§,_loc1_).§&"@§();
         §@%;§.play(§`!v§.§["p§);
         if(!this.§1$`§)
         {
            clip.visible = false;
            this.§1$`§ = §6#A§.§!&6§(§3&;§);
            _loc2_ = Application.scene.§=P§(§@#T§);
            _loc2_.addChild(this.§1$`§);
            this.§1$`§.x = clip.x;
            this.§1$`§.y = clip.y;
            this.§1$`§.scaleX = clip.scaleX;
         }
      }
   }
}

