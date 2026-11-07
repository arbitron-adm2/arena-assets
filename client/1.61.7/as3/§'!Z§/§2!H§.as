package §'!Z§
{
   import § "L§.§`#r§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §0%[§.§]%s§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §]$&§.§2&2§;
   import §^#[§.§&$2§;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Back;
   import com.greensock.easing.Linear;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §2!H§
   {
      
      public static const §1j§:String = "0x55AA55";
      
      public static const §5"H§:String = "0x99CC99";
      
      public static const §0"Z§:String = "0xAA4444";
      
      public static const §8"<§:String = "0xCC7777";
      
      public static const §4">§:String = "0xFF9900";
      
      public static const §?$!§:String = "0xD4A017";
      
      public static const §@!]§:String = "0x4682B4";
      
      private static const dropShadowFilter:DropShadowFilter = new DropShadowFilter(1,45,0,1,2,2,2);
      
      private static const §+"C§:TextFormat = new TextFormat(§"-§.§@%f§.fontName);
      
      private static const §[$Z§:TextFormat = new TextFormat(§"-§.NUMBER.fontName);
      
      public function §2!H§()
      {
         super();
      }
      
      public static function §'!i§(param1:String, param2:String, param3:int, param4:int, param5:uint = 16) : void
      {
         var ft:FrameTimer;
         var bf:TextField = null;
         var text:String = param1;
         var color:String = param2;
         var x:int = param3;
         var y:int = param4;
         var sizeFont:uint = param5;
         bf = §<!R§(text,color,x,y,sizeFont,§+"C§);
         bf.autoSize = TextFieldAutoSize.CENTER;
         bf.x -= bf.width * 0.5;
         ft = new FrameTimer(1,30);
         ft.addEventListener(FrameTimerEvent.§8$`§,function(param1:Event):void
         {
            bf.y -= 3;
         });
         ft.addEventListener(FrameTimerEvent.§;$>§,function(param1:Event):void
         {
            Application.scene.removeChild(bf);
         });
         ft.start();
         Application.scene.addChild(bf);
      }
      
      public static function §;!x§(param1:String, param2:String, param3:int, param4:int, param5:uint = 16) : void
      {
         var timer:FrameTimer;
         var field:TextField = null;
         var text:String = param1;
         var color:String = param2;
         var x:int = param3;
         var y:int = param4;
         var sizeFont:uint = param5;
         if(!§8"%§.§&S§.§=#f§())
         {
            return;
         }
         §[$Z§.leftMargin = §[$Z§.rightMargin = 10;
         field = §<!R§(text,color,x,y,sizeFont,§[$Z§);
         §[$Z§.leftMargin = §[$Z§.rightMargin = 0;
         TweenMax.to(field,1.5,{
            "y":y - 100 - Math.random() * 50,
            "ease":Back.easeOut
         });
         TweenMax.to(field,1.5,{
            "x":x + (Math.random() > 0.5 ? 1 : -1) * 100 + Math.random() * 100 - 50,
            "ease":Linear.easeNone
         });
         timer = new FrameTimer(1,30);
         timer.addEventListener(FrameTimerEvent.§;$>§,function(param1:Event):void
         {
            Application.scene.removeChild(field);
         });
         timer.start();
         Application.scene.addChild(field);
      }
      
      private static function §<!R§(param1:String, param2:String, param3:int, param4:int, param5:uint = 20, param6:TextFormat = null) : TextField
      {
         var _loc7_:TextFormat = null;
         if(param6)
         {
            _loc7_ = param6;
            _loc7_.color = param2;
            _loc7_.size = param5;
         }
         else
         {
            _loc7_ = new TextFormat("Arial",param5,param2,true);
         }
         var _loc8_:TextField = new TextField();
         _loc8_.x = param3;
         _loc8_.y = param4;
         _loc8_.filters = [dropShadowFilter];
         _loc8_.antiAliasType = AntiAliasType.ADVANCED;
         §&$9§.§>&F§(_loc8_,_loc7_,param1);
         return _loc8_;
      }
      
      public static function §-"a§(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         _loc2_ = §6#A§.§!&6§(§+"'§.§^"%§);
         var _loc3_:TextField = TextField(MovieClip(_loc2_.getChildAt(0)).getChildByName("text"));
         _loc3_.getTextFormat().underline = true;
         _loc3_.text = param1;
         §]%s§.onComplete(_loc2_,remove);
         Application.instance.addChild(_loc2_);
         §`o§.§6!<§(_loc2_);
         _loc2_.mouseEnabled = _loc2_.mouseChildren = false;
         _loc2_.play();
      }
      
      private static function remove(param1:MovieClip) : void
      {
         param1.stop();
         Application.instance.removeChild(param1);
      }
      
      public static function §+#Q§(param1:int, param2:Number, param3:Number, param4:uint = 16777215) : void
      {
         var TextClass:Class;
         var clip:MovieClip = null;
         var ft:FrameTimer = null;
         var value:int = param1;
         var x:Number = param2;
         var y:Number = param3;
         var colorText:uint = param4;
         if(!§8"%§.§&S§.§=#f§())
         {
            return;
         }
         TextClass = §6#A§.getClass("AnimatedText");
         if(TextClass != null)
         {
            clip = new TextClass();
            §&$9§.§>&F§(TextField(clip["clip"]["txt"]),§"-§.§6"j§,"+" + value);
            TextField(clip["clip"]["txt"]).textColor = colorText;
            clip.x = x;
            clip.y = y;
            Application.scene.addChild(clip);
            ft = new FrameTimer(1,40);
            ft.addEventListener(FrameTimerEvent.§;$>§,function(param1:Event):void
            {
               if(clip.parent)
               {
                  clip.parent.removeChild(clip);
               }
               if(clip.totalFrames > 1)
               {
                  clip.stop();
               }
               if(clip.numChildren > 0)
               {
                  §3!3§.§>!j§(§3!3§.§#"R§(clip));
               }
               clip = null;
            });
            ft.start();
         }
      }
   }
}

