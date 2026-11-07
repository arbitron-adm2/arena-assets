package §7!B§
{
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §+$=§.*;
   import §+%S§.§[0§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.§^$y§;
   import §4f§.§-&§;
   import §4u§.§;$H§;
   import §4u§.§^%>§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   
   public class §>"D§ extends §1"?§ implements §?A§
   {
      
      private var §4"V§:int;
      
      private var hint:§;$H§;
      
      private var §;$4§:§[&H§;
      
      public function §>"D§(param1:String, param2:int, param3:int, param4:§+%]§, param5:§^$E§)
      {
         super(param1,param2,param3,param4);
         this.§4"V§ = param5.getId();
         §,q§ = new <§-&§>[§-&§.DROPPABLE];
         this.hint = §^%>§.§]!§(param5);
         this.§;$4§ = new §[&H§(clip);
         this.§;$4§.§@!y§(this);
         §;s§(true);
         scale = param5.§4"'§();
         this.§-$[§ = §!%8§.width;
         this.§4!<§ = §!%8§.height;
         §+%;§();
         §-b§(-physParams.§`$Y§ * param5.§4"'§(),-physParams.§>"o§ * param5.§4"'§());
         physParams.§0%m§(0,0);
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint.getContainer();
      }
      
      public function get hatId() : int
      {
         return this.§4"V§;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(this.§;$4§)
         {
            this.§;$4§.§`Z§();
         }
         if(this.hint)
         {
            this.hint.destroy();
         }
         super.§[$u§(param1);
      }
   }
}

