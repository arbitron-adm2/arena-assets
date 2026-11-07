package §7"Q§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §0"p§.§30§;
   import §7!B§.§&"T§;
   import §="z§.§9%1§;
   import §?$L§.§ "N§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §0-§ extends §0&'§
   {
      
      protected var §%4§:String = "next";
      
      protected var §="t§:String = "prev";
      
      protected var §4!-§:String = "pagingBar";
      
      public var §=!f§:Boolean = false;
      
      protected var next:§?%>§;
      
      protected var prev:§?%>§;
      
      protected var pagingBar:§7o§;
      
      public function §0-§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.next = §!&5§.§7#[§(getChildByName(this.§%4§));
         this.next.§[!u§(this.§0"f§);
         this.next.§00§(§ "N§.§[!k§);
         this.prev = §!&5§.§7#[§(getChildByName(this.§="t§));
         this.prev.§[!u§(this.§"#[§);
         this.prev.§00§(§ "N§.§[!k§);
         this.§+"3§();
      }
      
      protected function §+"3§() : void
      {
         var _loc1_:MovieClip = getChildByName(this.§4!-§) as MovieClip;
         if(_loc1_)
         {
            this.pagingBar = new §7o§(getChildByName(this.§4!-§));
            this.pagingBar.addEventListener(Event.CHANGE,this.§#%Y§);
         }
      }
      
      private function §#%Y§(param1:Event) : void
      {
         this.§%$S§(this.pagingBar.§1"J§());
         this.update();
      }
      
      override public function setData(param1:Array) : void
      {
         super.setData(param1);
         if(this.pagingBar)
         {
            this.pagingBar.setVisible(store.§>$6§() > 0);
            this.pagingBar.§^$§(store.§-J§());
            this.pagingBar.x = (this.prev.x + this.prev.width + this.next.x - §30§.§=!_§(this.pagingBar)) / 2;
         }
         this.§%$S§(1);
      }
      
      public function §%$S§(param1:int) : void
      {
         if(param1 > store.§-J§())
         {
            param1 = this.§=!f§ ? 1 : store.§-J§();
         }
         else if(param1 < 1)
         {
            param1 = this.§=!f§ ? store.§-J§() : 1;
         }
         store.§%$S§(param1);
         if(this.pagingBar)
         {
            this.pagingBar.§%$S§(param1);
         }
      }
      
      override public function update() : void
      {
         super.update();
         this.§-$E§();
      }
      
      protected function §0"f§(param1:MouseEvent) : void
      {
         this.§%$S§(store.§1"J§() + 1);
         this.update();
      }
      
      protected function §"#[§(param1:MouseEvent) : void
      {
         this.§%$S§(store.§1"J§() - 1);
         this.update();
      }
      
      private function §-$E§() : void
      {
         if(!this.§=!f§)
         {
            this.prev.setDisabled(store.§<v§());
            this.next.setDisabled(store.§"$!§());
         }
         else
         {
            this.prev.setDisabled(store.§-J§() == 1);
            this.next.setDisabled(store.§-J§() == 1);
         }
      }
      
      override public function destroy() : void
      {
         this.next.removeHandler(this.§0"f§);
         this.prev.removeHandler(this.§"#[§);
         super.destroy();
      }
      
      override public function §,"l§(param1:int) : void
      {
         if(param1 >= store.§>$6§())
         {
            param1 = 0;
         }
         else if(param1 < 0)
         {
            param1 = store.§>$6§() - 1;
         }
         var _loc2_:uint = param1 / store.§4$`§() + 1;
         if(_loc2_ != store.§1"J§())
         {
            this.§%$S§(_loc2_);
         }
         §<";§(cells[param1]);
      }
   }
}

