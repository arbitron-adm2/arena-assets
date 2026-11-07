package §'$Z§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §1#p§.§"Z§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §9%W§.§!7§;
   import §9&+§.§>&5§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`%&§.§=B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §2#f§ extends §@& §
   {
      
      private static var instance:§2#f§;
      
      private var closeBtn:§?%>§;
      
      private var searchBtn:§8"@§;
      
      private var createBtn:§8"@§;
      
      private var §##4§:§8"@§;
      
      private var §;N§:§1$l§;
      
      private var §#%T§:§^$ §;
      
      private var §>Q§:§ A§;
      
      private var notifyCounter:MovieClip;
      
      private var §+$J§:§8L§;
      
      private const clanGroup:String = "clanGroup";
      
      private var §<#t§:uint;
      
      public function §2#f§()
      {
         super(§6#A§.§!&6§(§+"'§.§@%]§));
         this.closeBtn = §!&5§.§7#[§(getChildByName("closeBtn"));
         this.closeBtn.§[!u§(§0!j§);
         this.searchBtn = §!&5§.§;#z§(getChildByName("tab1"),this.clanGroup);
         this.searchBtn.setText(§0$N§.§5!1§,§"-§.§+$m§);
         this.createBtn = §!&5§.§;#z§(getChildByName("tab2"),this.clanGroup);
         this.createBtn.setText(§0$N§.§ "n§,§"-§.§+$m§);
         this.§##4§ = §!&5§.§;#z§(getChildByName("tab3"),this.clanGroup);
         this.§##4§.setVisible(false);
         this.§;N§ = new §1$l§();
         this.§#%T§ = new §^$ §();
         this.§>Q§ = new § A§();
         this.notifyCounter = §'$a§("notifyCounter");
         this.notifyCounter.mouseEnabled = false;
         this.§]!G§();
         this.§+$J§ = new §8L§();
         §'$a§("container").addChild(this.§+$J§.§#!`§());
         this.§+$J§.§3#J§(this.§;N§,this.searchBtn);
         this.§+$J§.§3#J§(this.§#%T§,this.createBtn);
         this.§+$J§.§3#J§(this.§>Q§,this.§##4§);
         this.§+$J§.§7!g§(this.§;N§);
         this.§<#t§ = height;
      }
      
      public static function getInstance() : §2#f§
      {
         if(!instance)
         {
            instance = new §2#f§();
         }
         return instance;
      }
      
      public function §&g§() : void
      {
         this.§+$J§.§7!g§(this.§;N§);
      }
      
      public function §?% §() : void
      {
         this.§+$J§.§7!g§(this.§#%T§);
      }
      
      override public function §!s§() : void
      {
         super.§!s§();
         this.align();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.align();
      }
      
      public function align() : void
      {
         this.y = (§8"%§.§^%W§.getCorrectResolution2().§'$#§() - this.§<#t§) * 0.5;
      }
      
      public function §]!G§() : void
      {
         var _loc1_:int = int(§]#i§.§="&§().length);
         this.notifyCounter.count.text = String(_loc1_);
         this.notifyCounter.visible = false;
      }
   }
}

