package §!!!§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"Z§.§2"B§;
   import §%&3§.§'C§;
   import §+$=§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §3"_§.§?#w§;
   import §4!!§.§#Z§;
   import §6_§.*;
   import §7"Q§.§"&=§;
   import §7$t§.§^%%§;
   import §?#g§.§&"P§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §]$&§.§2&2§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import config.§9+§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   public class §?$8§ implements §?A§
   {
      
      private var hint:MovieClip;
      
      private var backHint:MovieClip;
      
      private var §2%k§:TextField;
      
      private var §29§:TextField;
      
      private var lvlReq:TextField;
      
      private var teamReq:TextField;
      
      public function §?$8§(param1:String, param2:String, param3:int, param4:int, param5:Boolean = false, param6:int = 0, param7:int = 0)
      {
         var _loc9_:String = null;
         super();
         this.hint = §6#A§.§!&6§(§+"'§.§`"n§);
         this.backHint = this.hint.getChildByName("backHint") as MovieClip;
         this.§2%k§ = TextField(this.hint.getChildByName("title"));
         this.§29§ = TextField(this.hint.getChildByName("descr"));
         this.lvlReq = TextField(this.hint.getChildByName("lvlReq"));
         this.teamReq = TextField(this.hint.getChildByName("teamReq"));
         var _loc8_:int = 20;
         this.backHint.width += _loc8_;
         this.§2%k§.width += _loc8_;
         this.§29§.width += _loc8_;
         this.lvlReq.width += _loc8_;
         this.teamReq.width += _loc8_;
         §&$9§.§>&F§(this.§2%k§,§"-§.§+$m§,param1);
         this.§29§.autoSize = TextFieldAutoSize.LEFT;
         this.§29§.htmlText = param2;
         this.lvlReq.visible = param3 > 1;
         this.teamReq.visible = param6 < param7;
         if(param3 > 1)
         {
            _loc9_ = §0%§.format(§0$N§.ABILITY_LEVEL_REQUIREMENT,{"level":param3});
            this.lvlReq.autoSize = TextFieldAutoSize.LEFT;
            this.lvlReq.htmlText = "<b>" + _loc9_ + "</b>";
            this.lvlReq.textColor = param3 <= param4 ? 39168 : 13369344;
         }
         this.§29§.y = this.§2%k§.y + this.§2%k§.height + 5;
         this.lvlReq.y = this.§29§.y + this.§29§.height + 5;
         this.teamReq.y = this.lvlReq.y + this.lvlReq.height;
         this.backHint.height = this.§2%k§.height + this.§29§.height + 30 + (this.lvlReq.visible ? this.lvlReq.height : 0) + (this.teamReq.visible ? this.teamReq.height + 5 : 0);
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint;
      }
      
      public function §>"L§() : void
      {
         this.lvlReq.htmlText = "<b>" + §0$N§.AVAILABLE_FOR_VIP + "</b>";
         this.lvlReq.textColor = §2$^§.isVipExist() ? 39168 : 13369344;
         this.lvlReq.visible = true;
         this.backHint.height = this.§2%k§.height + this.§29§.height + 30 + (this.lvlReq.visible ? this.lvlReq.height + 5 : 0) + (this.teamReq.visible ? this.teamReq.height + 5 : 0);
      }
   }
}

