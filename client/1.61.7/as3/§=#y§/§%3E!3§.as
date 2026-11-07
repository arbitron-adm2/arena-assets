package §=#y§
{
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§+#h§;
   import §%"1§.§=#?§;
   import §%L§.§%%w§;
   import §&%X§.§^#=§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,#A§.§-$b§;
   import §0%[§.*;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §?$L§.§0"-§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §>!3§ extends §+#D§
   {
      
      public function §>!3§(param1:Function, param2:MovieClip, param3:String, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function §`$+§(param1:UserProfile = null) : void
      {
         var _loc2_:BackpackItem = null;
         var _loc3_:§&!e§ = null;
         var _loc4_:§^%%§ = null;
         reset();
         var _loc5_:Array = Application.userProfile.§,%o§().§,!V§();
         var _loc6_:int = 0;
         var _loc7_:int = int(_loc5_.length);
         while(_loc6_ < _loc7_)
         {
            _loc2_ = _loc5_[_loc6_];
            _loc3_ = _loc2_.getRecord();
            if(_loc3_ is §^%%§)
            {
               §+!§.push(_loc3_);
               if(param1.§+!b§() == _loc3_)
               {
                  _loc4_ = _loc3_ as §^%%§;
               }
            }
            _loc6_++;
         }
         if(§+!§.length <= 1)
         {
            §8%M§.setDisabled(true);
         }
         else
         {
            index = §6!?§.indexOf(§+!§,_loc4_);
         }
         §?"?§ = §+!§.length - 1;
      }
      
      public function § "o§() : §^%%§
      {
         return §"#D§() as §^%%§;
      }
   }
}

