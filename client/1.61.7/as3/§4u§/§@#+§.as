package §4u§
{
   import § !8§.§`!d§;
   import § #m§.§[&H§;
   import § $q§.*;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%E§.§5%C§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §0%z§.§&%&§;
   import §0%z§.§@"q§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4#`§.*;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §9%W§.§!7§;
   import §;!Z§.§5"d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§<$!§;
   import §?X§.§36§;
   import §@!N§.§'+§;
   import §@$§.§6$[§;
   import §]$J§.§#"s§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§2z§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§"!&§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §@#+§ extends §3U§
   {
      
      private var item:§&!e§;
      
      private var §-$1§:MovieClip;
      
      private var §`#$§:TextField;
      
      private var §"#h§:TextField;
      
      private var §,Z§:MovieClip;
      
      private const §5$m§:uint = 0;
      
      private const §5"y§:uint = 1;
      
      private const §-%t§:uint = 2;
      
      private var §;&A§:int = 0;
      
      private var §=$§:int = 0;
      
      private var § "T§:int;
      
      public function §@#+§(param1:DisplayObject, param2:Boolean = false)
      {
         super(DisplayObjectContainer(param1));
         this.§&%4§ = param2;
         if(param2)
         {
            §;$4§ = new §[&H§(param1.parent);
         }
      }
      
      override public function setItem(param1:§&!e§, param2:§;$H§ = null) : void
      {
         var _loc3_:Boolean = this.item != param1;
         this.item = param1;
         if(§0"M§)
         {
            _removeChild(§0"M§);
            §0"M§ = null;
         }
         if(param1)
         {
            §0"M§ = §'+§.getMenuIcon(param1);
            §`o§.§7!S§(§0"M§,width * §1I§,height * §1I§);
            §?!C§(§0"M§);
            §`o§.§4!F§(§0"M§);
            if(§&%4§)
            {
               if(!hint || _loc3_)
               {
                  if(hint)
                  {
                     hint.destroy();
                  }
                  hint = §^%>§.§]!§(param1);
                  this.§;&A§ = hint.§&k§().height;
                  this.§=$§ = hint.§&k§().y;
                  this.§ "T§ = §"!&§.§[#f§(param1.getId()) + 1;
               }
               else if(hint is §!$F§)
               {
                  §!$F§(hint).initHint(param1);
               }
               §;$4§.§@!y§(this);
            }
         }
         else if(§&%4§)
         {
            §;$4§.§`Z§();
         }
      }
      
      public function update(param1:int, param2:int = -1, param3:int = -1) : void
      {
         var _loc4_:UserProfile = null;
         var _loc5_:§`!d§ = null;
         var _loc6_:Object = null;
         var _loc8_:Object = null;
         var _loc12_:§&!e§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:Boolean = false;
         var _loc16_:int = 0;
         _loc4_ = §@&&§.getProfile();
         _loc5_ = _loc4_.getRace();
         _loc6_ = §"!&§.§]?§(§1!S§.§[!r§(this.item.getId()));
         var _loc7_:§&!e§ = §<$c§.§8&E§(_loc6_.requires,_loc5_);
         _loc8_ = §"!&§.§]?§(_loc6_.replaces);
         var _loc9_:§&!e§ = _loc8_ ? §<$c§.§8&E§(_loc8_.itemId,_loc5_) : null;
         var _loc10_:Object = §"!&§.§>!h§(_loc6_.itemId);
         var _loc11_:Boolean = §"!&§.§ $]§(_loc6_,_loc4_);
         if(param1 == §&%&§.§;!v§)
         {
            _loc14_ = this.§ "T§ - param3;
            _loc14_ = _loc14_ > -1 ? _loc14_ : 0;
            _loc15_ = _loc14_ > 0;
            if((_loc15_) || !§"!&§.§,&H§(_loc6_,_loc4_))
            {
               _loc13_ = §0%§.format(§0$N§.NEED_AWARDS,{"difLevel":(_loc15_ ? _loc14_ : " ")});
               if(_loc7_)
               {
                  _loc13_ += (_loc15_ ? " + " : " ") + _loc7_.§7%z§();
               }
               if(_loc8_)
               {
                  _loc13_ += "\n\n" + §0$N§.REPLACES_AWARD + " " + _loc9_.§7%z§();
               }
               this.§2!;§(this.§-%t§,§0$N§.NEED_PREV_AWARDS_MSG,_loc13_);
            }
            else
            {
               if(_loc11_)
               {
                  _loc12_ = §<$c§.§8&E§(_loc10_.itemId,_loc5_);
                  _loc13_ = §0$N§.REPLACED_AWARD + " " + _loc12_.§7%z§();
               }
               else
               {
                  _loc16_ = §@"q§.§0%#§ - param2;
                  _loc13_ = _loc16_ > 0 ? §0%§.format(§0$N§.LITTLE_COUNT_POINTS,{"balance":_loc16_}) : "";
               }
               if(_loc8_)
               {
                  _loc13_ += (_loc13_.length ? "\n" : "") + §0$N§.REPLACES_AWARD + " " + _loc9_.§7%z§();
               }
               this.§2!;§(this.§5"y§,_loc13_);
            }
         }
         else if(_loc8_)
         {
            _loc13_ = §0$N§.REPLACES_AWARD + " " + _loc9_.§7%z§();
            this.§2!;§(this.§5"y§,_loc13_);
         }
         else if(_loc11_)
         {
            _loc12_ = §<$c§.§8&E§(_loc10_.itemId,_loc5_);
            _loc13_ = §0$N§.REPLACED_AWARD + " " + _loc12_.§7%z§();
            this.§2!;§(this.§5"y§,_loc13_);
         }
         else
         {
            this.§2!;§(this.§5$m§);
         }
      }
      
      private function §2!;§(param1:uint, param2:String = "", param3:String = "") : void
      {
         this.§?&6§();
         switch(param1)
         {
            case this.§5$m§:
               this.§2&#§(false,false);
               hint._removeChild(this.§-$1§);
               break;
            case this.§5"y§:
               if(param2)
               {
                  this.§`#$§.text = param2;
               }
               this.§"#h§.text = "";
               this.§2&#§(true,false);
               break;
            case this.§-%t§:
               if(param2)
               {
                  this.§`#$§.text = param2;
               }
               if(param3)
               {
                  this.§"#h§.text = param3;
               }
               this.§2&#§(true,true);
         }
      }
      
      private function §2&#§(param1:Boolean, param2:Boolean) : void
      {
         this.§`#$§.visible = param1;
         this.§"#h§.visible = param2;
         this.§-$1§.y = 0;
         if(!param1 && !param2)
         {
            hint.§&k§().height = this.§;&A§;
            hint.§&k§().y = this.§=$§;
         }
         else if(param1 && !param2)
         {
            this.§`#$§.x = 10;
            this.§`#$§.width = hint.§&k§().width - 20;
            this.§,Z§.width = this.§`#$§.width;
            this.§,Z§.y = this.§`#$§.height + 5;
            this.§,Z§.x = this.§`#$§.x;
            hint.§&k§().height = this.§;&A§ + this.§-$1§.height + 10;
            hint.§&k§().y = this.§=$§ - this.§-$1§.height - 10;
            this.§-$1§.y -= this.§-$1§.height;
         }
         else if(param1 && param2)
         {
            this.§`#$§.x = 10;
            this.§`#$§.width = hint.§&k§().width - 20;
            this.§"#h§.x = this.§`#$§.x;
            this.§"#h§.y = this.§`#$§.height + 5;
            this.§"#h§.width = this.§`#$§.width;
            this.§,Z§.width = this.§`#$§.width;
            this.§,Z§.y = this.§"#h§.y + this.§"#h§.height + 5;
            this.§,Z§.x = this.§`#$§.x;
            hint.§&k§().height = this.§;&A§ + this.§-$1§.height + 10;
            hint.§&k§().y = this.§=$§ - this.§-$1§.height - 10;
            this.§-$1§.y -= this.§-$1§.height;
         }
      }
      
      private function §?&6§() : void
      {
         if(Boolean(this.§-$1§) && Boolean(this.§-$1§.parent))
         {
            this.§-$1§.parent.removeChild(this.§-$1§);
         }
         this.§-$1§ = §6#A§.§!&6§(§+"'§.§!!%§);
         this.§`#$§ = TextField(this.§-$1§.getChildByName("textLabel_1"));
         this.§`#$§.width = hint.§&k§().width - 20;
         this.§`#$§.autoSize = TextFieldAutoSize.LEFT;
         this.§"#h§ = TextField(this.§-$1§.getChildByName("textLabel_2"));
         this.§"#h§.width = hint.§&k§().width - 15;
         this.§"#h§.autoSize = TextFieldAutoSize.LEFT;
         this.§,Z§ = MovieClip(this.§-$1§.getChildByName("line"));
         this.§,Z§.width = this.§"#h§.width - 13;
         this.§,Z§.x = this.§"#h§.x;
         hint.§?!C§(this.§-$1§);
      }
   }
}

