package §-G§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$Z§.§2#f§;
   import §+$&§.§&8§;
   import §+$&§.§+"g§;
   import §+$&§.§@#t§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8!Y§.§`#Q§;
   import §8$Z§.§@!P§;
   import §9%k§.*;
   import §<"L§.§##-§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §?>§.§]!V§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §^$ § extends §1#g§
   {
      
      private var §=#5§:§&8§;
      
      private var §?%f§:§+"g§;
      
      private var §^$L§:§@#t§;
      
      private var §%m§:§1#g§;
      
      private var §+$J§:§8L§;
      
      private var §5%Y§:§@!P§;
      
      public function §^$ §()
      {
         super(§6#A§.§!&6§(§+"'§.§,#R§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§=#5§ = new §&8§(§'$a§("main"));
         this.§=#5§.setLogoBtn.§[!u§(this.§^!X§);
         this.§=#5§.createBtn.§[!u§(this.§4"g§);
         this.§?%f§ = new §+"g§(§'$a§("logo"));
         this.§?%f§.backBtn.§[!u§(this.§^#G§);
         this.§?%f§.saveBtn.§[!u§(this.§%%J§);
         this.§^$L§ = new §@#t§(§'$a§("cantCreate"));
         this.§+$J§ = new §8L§();
         addChild(this.§+$J§);
         this.§+$J§.§3#J§(this.§=#5§);
         this.§+$J§.§3#J§(this.§?%f§);
         this.§+$J§.§3#J§(this.§^$L§);
         this.§+$J§.§7!g§(this.§^$L§);
         this.§%m§ = this.§=#5§;
         this.§5%Y§ = new §@!P§(this.§?%f§.§#!`§(),this.§?%f§.§#!`§());
         this.§5%Y§.§3#p§();
         this.§5%Y§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§^$L§.§"!e§() && this.§^$L§.§[%O§())
         {
            §=%_§.§!-§(this.§=#5§.logo.logo,this.§5%Y§.§%%&§());
            this.§+$J§.§7!g§(this.§%m§);
         }
         else
         {
            this.§+$J§.§7!g§(this.§^$L§);
         }
      }
      
      private function §^!X§(param1:MouseEvent) : void
      {
         this.§%m§ = this.§?%f§;
         this.§+$J§.§7!g§(this.§?%f§);
      }
      
      private function §^#G§(param1:MouseEvent) : void
      {
         this.§%m§ = this.§=#5§;
         this.§+$J§.§7!g§(this.§=#5§);
      }
      
      private function §%%J§(param1:MouseEvent) : void
      {
         §=%_§.§!-§(this.§=#5§.logo.logo,this.§5%Y§.§%%&§());
      }
      
      private function §4"g§(param1:MouseEvent) : void
      {
         var cc:§##-§ = null;
         var e:MouseEvent = param1;
         var clanName:String = §0%§.§=#$§(this.§=#5§.clanName.text.replace(new RegExp(/\s{2,}/)," "));
         if(this.§=#5§.§9%j§())
         {
            cc = §8"%§.§!&I§;
            cc.login.createClan(clanName,this.§5%Y§.§%%&§(),this.§=#5§.description.text,function():void
            {
               var _loc1_:int = §=#5§.§-$-§ == 1 ? int(§=#5§.rating.text) : -1;
               if(_loc1_ > -1)
               {
                  cc.edit.§9$"§(_loc1_,null);
               }
               cc.getEventDispatcher().dispatchEvent(new Event(§-#U§.§-R§));
               §2#f§.getInstance().hide();
            });
         }
      }
   }
}

