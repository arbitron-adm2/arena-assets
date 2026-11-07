package § $q§
{
   import § #9§.§"$t§;
   import § #9§.§3L§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §#$e§.*;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&!?§.§+" §;
   import §&"c§.§5$n§;
   import §&#W§.§?#]§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-&5§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §4u§.§;$H§;
   import §4u§.WeaponHint;
   import §4u§.§^%>§;
   import §5!,§.§?!P§;
   import §5#`§.*;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §9%W§.§&!P§;
   import §<!W§.§?#L§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §@!N§.§'+§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§9!K§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import com.hurlant.util.Base64;
   import config.achievements.§"!&§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3U§ extends §`&-§ implements §?A§
   {
      
      protected var §1I§:Number = 0.7;
      
      protected var §0"M§:MovieClip;
      
      protected var hint:§;$H§;
      
      protected var §;$4§:§[&H§;
      
      protected var §&%4§:Boolean;
      
      public function §3U§(param1:DisplayObject, param2:Boolean = false, param3:Boolean = true)
      {
         super(DisplayObjectContainer(param1));
         this.§&%4§ = param2;
         if(param2)
         {
            this.§;$4§ = new §[&H§(param3 ? param1.parent : param1);
         }
      }
      
      public function §<!b§(param1:§+%]§) : void
      {
         var _loc2_:Sprite = null;
         var _loc3_:MovieClip = null;
         var _loc4_:UserProfile = null;
         var _loc5_:§6!G§ = null;
         var _loc6_:MovieClip = null;
         var _loc7_:DisplayObject = null;
         this.§3p§();
         if(param1)
         {
            _loc2_ = new Sprite();
            _loc2_.graphics.beginFill(0,0);
            _loc2_.graphics.drawRect(0,0,width,width);
            _loc3_ = new MovieClip();
            _loc3_.addChild(_loc2_);
            _loc4_ = param1.record.§ "P§(true);
            _loc4_.§7"i§(param1.§2u§());
            _loc4_.§;"U§(param1.§+!b§());
            _loc5_ = §"$t§.§!!1§(null,_loc4_,_loc2_);
            §`o§.§<"^§(_loc2_,100,100);
            _loc6_ = _loc5_.§"?§();
            _loc5_.§4%F§();
            _loc5_.§9"G§();
            _loc2_.x = _loc2_.width * 0.2;
            _loc2_.y = -_loc2_.getBounds(_loc2_).top + 15;
            if(param1.record.getRace().equals(Race.§ "w§.§]!D§()))
            {
               _loc7_ = _loc6_.getChildByName("ears");
               _loc2_.y -= _loc7_.height / 2;
            }
            this.§0"M§ = _loc3_;
            §`o§.§7!S§(this.§0"M§,width * 1,height * 1);
            §?!C§(this.§0"M§);
         }
         else if(this.§&%4§)
         {
            this.§;$4§.§`Z§();
         }
      }
      
      public function §>&6§(param1:§&"T§) : void
      {
         this.§3p§();
         if(param1)
         {
            this.§0"M§ = §6#A§.§!&6§(param1.clip.name);
            §3!3§.§>!j§(§3!3§.§#"R§(this.§0"M§));
            this.§^"`§();
            this.§0"M§.x = width * 0.45;
            this.§0"M§.y = height * 0.5;
         }
         else if(this.§&%4§)
         {
            this.§;$4§.§`Z§();
         }
      }
      
      public function §3#2§(param1:§3L§) : void
      {
         this.§3p§();
         if(param1)
         {
            this.§0"M§ = param1.§;%y§();
            this.§^"`§();
         }
         else if(this.§&%4§)
         {
            this.§;$4§.§`Z§();
         }
      }
      
      public function setItem(param1:§&!e§, param2:§;$H§ = null) : void
      {
         var _loc3_:MovieClip = null;
         this.§3p§();
         if(param1)
         {
            _loc3_ = §'+§.getMenuIcon(param1);
            if(_loc3_)
            {
            }
            this.§0"M§ = _loc3_ || §'+§.getMenuIcon(§<$c§.§"$h§(§]!E§.BROKEN_SWORD));
            this.§^"`§();
            §2!%§.§;$2§(this.§0"M§,param1);
            if(this.§&%4§)
            {
               if(param2)
               {
                  this.§<$U§(param2);
               }
               else
               {
                  this.§<$U§(§^%>§.§]!§(param1));
               }
            }
         }
         else if(this.§&%4§)
         {
            this.§;$4§.§`Z§();
         }
      }
      
      private function §^"`§() : void
      {
         §`o§.§7!S§(this.§0"M§,width * this.§1I§,height * this.§1I§);
         §?!C§(this.§0"M§);
         §`o§.§4!F§(this.§0"M§);
      }
      
      private function §3p§() : void
      {
         if(this.§0"M§)
         {
            if(§+$_§(this.§0"M§))
            {
               _removeChild(this.§0"M§);
            }
            this.§0"M§ = null;
         }
      }
      
      public function §<$U§(param1:§;$H§) : void
      {
         if(this.§&%4§)
         {
            this.hint = param1;
            this.§;$4§.§@!y§(this);
         }
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint ? this.hint.getContainer() : null;
      }
      
      public function §1&!§(param1:Number) : void
      {
         this.§1I§ = param1;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this.§;$4§)
         {
            this.§;$4§.§`Z§();
         }
         if(this.hint)
         {
            this.hint.destroy();
         }
         this.§3p§();
      }
      
      public function setLevel(param1:uint) : void
      {
         if(this.hint is WeaponHint)
         {
            WeaponHint(this.hint).setLevel(param1);
         }
      }
   }
}

