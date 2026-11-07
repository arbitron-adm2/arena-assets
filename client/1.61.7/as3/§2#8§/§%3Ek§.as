package §2#8§
{
   import §!L§.§+"'§;
   import §"$+§.*;
   import §#",§.§+!h§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §7$t§.§^$E§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§8U§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.messages.server.PumpReactionRatesResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §>k§ extends §`&-§
   {
      
      private var §;&6§:§`&-§;
      
      private var §2#w§:Vector.<§+!h§>;
      
      public function §>k§(param1:DisplayObject = null)
      {
         super(param1);
         var _loc2_:Sprite = new Sprite();
         this.§;&6§ = new §`&-§(_loc2_);
         addChild(this.§;&6§);
         var _loc3_:MovieClip = §'$a§("avatar");
         §3!3§.§>!j§(§3!3§.§#"R§(_loc3_));
         this.§;&6§.y = _loc3_.y;
         _removeChild(_loc3_);
         this.§2#w§ = new Vector.<§+!h§>(0);
      }
      
      public function §;"#§(param1:UserProfile) : void
      {
         var _loc2_:MovieClip = null;
         _loc2_ = §6#A§.§!&6§(§+"'§.§4!1§);
         var _loc3_:§+!h§ = new §+!h§(_loc2_);
         _loc3_.x = this.§;&6§.§#!`§().numChildren * (_loc2_.width + 5);
         this.§;&6§.addChild(_loc3_);
         _loc3_.§!=§(§+"'§.§?-§);
         _loc3_.§4%8§(false);
         _loc3_.setItem(param1);
      }
      
      override public function setVisible(param1:Boolean) : void
      {
         var _loc4_:UserProfile = null;
         var _loc5_:Boolean = false;
         super.setVisible(param1);
         if(!param1)
         {
            return;
         }
         var _loc2_:TextField = §'%s§("text");
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         var _loc3_:Vector.<UserProfile> = §0$c§.§;$9§(Application.userProfile);
         if(_loc3_.length < TeamController.§%$y§)
         {
            _loc5_ = §0$c§.§;#C§(Application.userProfile) < TeamController.§%$y§;
            §7&5§.§>&<§(_loc2_,§<"G§.§%! §("MEMBER_SOCLAN_ALREADY_EXIST") + (_loc5_ ? " " + §<"G§.§%! §("MEMBER_SOCLAN_LIMIT_UP") : ""));
         }
         else
         {
            §7&5§.§>&<§(_loc2_,§<"G§.§%! §("MEMBER_SOCLAN_ALREADY_EXIST_LIMIT"));
         }
         this.§4-§();
         for each(_loc4_ in _loc3_)
         {
            this.§;"#§(_loc4_);
         }
         §`o§.§9$x§(this.§;&6§);
         getChildByName("line").y = _loc2_.y + _loc2_.numLines * 25 + 5;
      }
      
      public function §4-§() : void
      {
         var _loc1_:§+!h§ = null;
         this.§;&6§.removeChildren();
         for each(_loc1_ in this.§2#w§)
         {
            _loc1_.destroy();
         }
      }
      
      override public function destroy() : void
      {
         this.§4-§();
         super.destroy();
      }
   }
}

