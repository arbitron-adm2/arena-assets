package §[" §
{
   import § #m§.§;#^§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0"L§.§+# §;
   import §4#`§.BattleInterface;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§?"&§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §3$y§ extends §`&-§
   {
      
      private var §?%g§:§?%>§;
      
      private var §6e§:§?%>§;
      
      private var §>!1§:§?%>§;
      
      private var §8%Q§:BattleInterface;
      
      private var §6"J§:uint;
      
      public function §3$y§(param1:DisplayObjectContainer, param2:BattleInterface)
      {
         super(param1);
         this.§8%Q§ = param2;
         this.§?%g§ = §!&5§.§7#[§(getChildByName("onToggle"));
         this.§6e§ = §!&5§.§7#[§(getChildByName("middleToggle"));
         this.§>!1§ = §!&5§.§7#[§(getChildByName("disableToggle"));
         this.§?%g§.§[!u§(this.§"!m§);
         this.§6e§.§[!u§(this.§"!m§);
         this.§>!1§.§[!u§(this.§"!m§);
         this.§6e§.setVisible(false);
         this.§>!1§.setVisible(false);
         MovieClip(param1).buttonMode = true;
         this.§6"J§ = §8"%§.§&S§.§#v§();
      }
      
      override public function setQtip(param1:String, param2:§;#^§ = null, param3:String = null, param4:TextFormat = null) : void
      {
         this.§?%g§.setQtip(param1,param2,param3,param4);
         this.§6e§.setQtip(param1,param2,param3,param4);
         this.§>!1§.setQtip(param1,param2,param3,param4);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = true;
      }
      
      public function §"!m§(param1:MouseEvent = null) : void
      {
         if(++this.§6"J§ > §'"<§.§6$F§)
         {
            this.§6"J§ = §'"<§.§8!@§;
         }
         §8"%§.§&S§.§0#A§(this.§6"J§,false);
         this.§!Z§();
      }
      
      public function §!Z§() : void
      {
         var _loc1_:§'"<§ = §'"<§(Application.scene.§@$I§.§5# §(§'"<§));
         if(_loc1_)
         {
            _loc1_.setState(this.§6"J§);
         }
         this.§,#w§(this.§6"J§);
      }
      
      private function §,#w§(param1:uint) : void
      {
         this.§?%g§.setVisible(param1 == §'"<§.§8!@§);
         this.§6e§.setVisible(param1 == §'"<§.§7%e§);
         this.§>!1§.setVisible(param1 == §'"<§.§6$F§);
      }
      
      override public function destroy() : void
      {
         §8"%§.§&S§.§0#A§(this.§6"J§,true);
         super.destroy();
         this.§8%Q§ = null;
         this.§?%g§.destroy();
         this.§>!1§.destroy();
         this.§6e§.destroy();
      }
   }
}

