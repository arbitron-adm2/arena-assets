package ru.pragmatix.wormix.serialization.client
{
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"% §.LevelUpDialog;
   import §#"V§.§0%9§;
   import §##y§.§9§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'"N§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §4'§.§`"q§;
   import §5#`§.*;
   import §7!B§.§&"T§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?$L§.§ "N§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@!i§.§@$&§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import avmplus.getQualifiedClassName;
   import com.greensock.OverwriteManager;
   import com.greensock.TweenLite;
   import com.greensock.plugins.AutoAlphaPlugin;
   import com.greensock.plugins.BevelFilterPlugin;
   import com.greensock.plugins.BezierPlugin;
   import com.greensock.plugins.BezierThroughPlugin;
   import com.greensock.plugins.BlurFilterPlugin;
   import com.greensock.plugins.ColorMatrixFilterPlugin;
   import com.greensock.plugins.ColorTransformPlugin;
   import com.greensock.plugins.DropShadowFilterPlugin;
   import com.greensock.plugins.EndArrayPlugin;
   import com.greensock.plugins.FrameLabelPlugin;
   import com.greensock.plugins.FramePlugin;
   import com.greensock.plugins.GlowFilterPlugin;
   import com.greensock.plugins.HexColorsPlugin;
   import com.greensock.plugins.RemoveTintPlugin;
   import com.greensock.plugins.RoundPropsPlugin;
   import com.greensock.plugins.ShortRotationPlugin;
   import com.greensock.plugins.TintPlugin;
   import com.greensock.plugins.TweenPlugin;
   import com.greensock.plugins.VisiblePlugin;
   import com.greensock.plugins.VolumePlugin;
   import flash.display.DisplayObject;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.GetProfiles;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class GetProfilesBinarySerializer implements §&"a§
   {
      
      public function GetProfilesBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 5;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetProfiles = GetProfiles(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.sessionKey);
         var _loc6_:uint = 0;
         var _loc7_:uint = _loc3_.ids.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeUTF(_loc3_.ids[_loc6_]);
            _loc6_++;
         }
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetProfiles = new GetProfiles();
         var _loc4_:uint = 0;
         _loc3_.ids = new Vector.<String>(0);
         var _loc5_:uint = uint(param1.readShort());
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            _loc3_.ids[_loc4_] = param1.readUTF();
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

