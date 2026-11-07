package §%&6§
{
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&!&§.§&§;
   import §&!&§.§4$F§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §2#8§.§6"a§;
   import §2o§.§]#@§;
   import §4#2§.*;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?o§.§?!x§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import config.§=%A§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§#$w§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   
   public class §2"A§ extends §=!l§
   {
      
      private static const §8!T§:String = "AirBlockerIdleUpg1";
      
      private var §@$P§:Dictionary;
      
      private var §&%?§:Dictionary;
      
      public function §2"A§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
         §!"-§(§8!T§);
      }
      
      override protected function checkTargets() : void
      {
         var _loc1_:Vector.<§&"T§> = null;
         var _loc3_:§&"T§ = null;
         var _loc4_:* = undefined;
         super.checkTargets();
         _loc1_ = Application.scene.§@$I§.§;%a§.§"L§([§4$F§]);
         var _loc2_:Vector.<§&"T§> = §<H§.§3%'§(x,y,radius,_loc1_);
         for(_loc4_ in this.§@$P§)
         {
            _loc3_ = §&"T§(_loc4_);
            if(_loc3_.disposed || !§<H§.§8!P§(_loc4_,x,y,radius,false))
            {
               delete this.§@$P§[_loc4_];
               if(this.§&%?§[_loc4_])
               {
                  this.§&%?§[_loc4_].detachClip();
                  delete this.§&%?§[_loc4_];
               }
            }
         }
         for each(_loc3_ in _loc2_)
         {
            if(!this.§@$P§[_loc3_])
            {
               this.§@$P§[_loc3_] = frames + §9& §;
               this.§&%?§[_loc3_] = §]!&§.§5$#§(_loc3_,§6#A§.§!&6§(§+"'§.§;"y§));
            }
            else if(this.§@$P§[_loc3_] <= frames)
            {
               §1"-§.explode(§;n§.§1"E§,_loc3_.x,_loc3_.y,30);
               §1"-§.§`$Q§(_loc3_.x,_loc3_.y,§1"-§.§9a§);
               §1"-§.§2$O§(this,_loc3_,12,10,6068463,8);
               §@%;§.play(§`!v§.§`%9§);
               this.§&%?§[_loc3_].detachClip();
               delete this.§&%?§[_loc3_];
               delete this.§@$P§[_loc3_];
               if(_loc3_ is §&#6§)
               {
                  §&#6§(_loc3_).explode();
               }
               else
               {
                  _loc3_.disposed = true;
               }
            }
         }
      }
      
      override protected function §@$'§(param1:Event) : void
      {
         super.§@$'§(param1);
         if(active)
         {
            this.§@$P§ = new Dictionary();
            this.§&%?§ = new Dictionary();
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:* = undefined;
         super.§[$u§(param1);
         for(_loc2_ in this.§&%?§)
         {
            if(this.§&%?§[_loc2_])
            {
               this.§&%?§[_loc2_].detachClip();
            }
         }
      }
   }
}

