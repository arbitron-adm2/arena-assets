package §'!Z§
{
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§@a§;
   import §+$=§.§6#A§;
   import §-8§.*;
   import §0%"§.§[!^§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2B§.§#&E§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7$t§.§[!X§;
   import §8#a§.§1$!§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=$#§.§1!$§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §]!&§
   {
      
      private var §<$w§:String;
      
      private var §9!t§:String;
      
      private var §>!=§:Point;
      
      public var object:§&"T§;
      
      public var animation:MovieClip;
      
      public var §2"^§:Function;
      
      public var §4U§:Function;
      
      public function §]!&§()
      {
         super();
      }
      
      public static function §-#2§(param1:§&"T§, param2:String, param3:String, param4:String, param5:Function = null, param6:Function = null) : §]!&§
      {
         var _loc7_:§]!&§ = new §]!&§();
         _loc7_.object = param1;
         _loc7_.§<$w§ = param3;
         _loc7_.§9!t§ = param4;
         _loc7_.§2"^§ = param5;
         _loc7_.§4U§ = param6;
         if(!param1.disposed)
         {
            param1.clip = §6#A§.§!&6§(param2);
            if(!§8"%§.§&S§.§41§())
            {
               §3!3§.§>!j§(§3!3§.§#"R§(param1.clip));
            }
            param1.addEventListener(§0%v§.DISPOSED,_loc7_.§=$5§,false,10);
            _loc7_.§>!=§ = new Point(param1.x,param1.y);
            _loc7_.appear();
         }
         return _loc7_;
      }
      
      public static function §5$#§(param1:§&"T§, param2:MovieClip, param3:Number = 1) : §]!&§
      {
         var goa:§]!&§ = null;
         var obj:§&"T§ = param1;
         var clip:MovieClip = param2;
         var scale:Number = param3;
         var container:DisplayObjectContainer = Application.scene.§<"2§();
         goa = new §]!&§();
         goa.animation = clip;
         goa.object = obj;
         goa.animation.x = goa.object.x;
         goa.animation.y = goa.object.y;
         goa.animation.scaleX = goa.animation.scaleY = scale;
         container.addChild(clip);
         Application.scene.addEventListener(Event.ENTER_FRAME,function(param1:Event):void
         {
            if(!goa.object || !goa.animation || goa.object.disposed)
            {
               Application.scene.removeEventListener(Event.ENTER_FRAME,arguments.callee);
               goa.detachClip();
               return;
            }
            goa.animation.x = goa.object.x;
            goa.animation.y = goa.object.y;
         });
         return goa;
      }
      
      private function appear() : void
      {
         this.object.clip.visible = false;
         this.§@&<§(this.§<$w§,this.§2"^§);
      }
      
      private function §=$5§(param1:Event) : void
      {
         this.§>!=§.x = this.object.x;
         this.§>!=§.y = this.object.y;
         if(!Application.scene.§@$I§.§=%d§())
         {
            this.§@&<§(this.§9!t§,this.§4U§);
         }
         this.object.removeEventListener(§0%v§.DISPOSED,this.§=$5§);
      }
      
      public function §@&<§(param1:String, param2:Function) : void
      {
         var clipAnimation:§&"T§ = null;
         var animation:String = param1;
         var callback:Function = param2;
         clipAnimation = new §&"T§();
         clipAnimation.clip = §6#A§.§!&6§(animation);
         clipAnimation.x = this.§>!=§.x;
         clipAnimation.y = this.§>!=§.y;
         Application.scene.§@$I§.§1$+§(clipAnimation);
         §8$a§.§%!E§(clipAnimation.clip.totalFrames,function():void
         {
            if(!object.disposed)
            {
               Application.scene.§@$I§.§1$+§(object);
               object.clip.visible = true;
            }
            if(callback != null)
            {
               callback();
            }
            clipAnimation.disposed = true;
         });
      }
      
      public function detachClip() : void
      {
         if(this.animation)
         {
            this.animation.parent.removeChild(this.animation);
            §3!3§.§>!j§(§3!3§.§#"R§(this.animation));
            this.animation = null;
         }
      }
   }
}

