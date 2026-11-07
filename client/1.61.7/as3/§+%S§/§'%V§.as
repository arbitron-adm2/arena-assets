package §+%S§
{
   import §!$d§.§<$c§;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0!Y§.§!$%§;
   import §4$b§.§2m§;
   import §65§.§%%o§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §;%j§.§,0§;
   import §=1§.*;
   import §@<§.§+%]§;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'%V§ extends §%%o§
   {
      
      public static const NAME:String = "ANTI_POISON";
      
      private var §`$I§:MovieClip;
      
      private var §>J§:Boolean;
      
      private var §?%p§:int;
      
      public function §'%V§(param1:int, param2:Boolean = false, param3:int = 0)
      {
         this.§>J§ = param2;
         this.§?%p§ = param3;
         super(NAME,param1,0);
      }
      
      override protected function §5#F§() : void
      {
         unit.buffs.§6C§(§2$#§.NAME);
         if(!this.§>J§)
         {
            §1"-§.§8"l§(unit,§1"-§.§3"o§,50);
            §8$a§.§%!E§(46,this.§;&0§);
         }
         else
         {
            this.§;&0§();
         }
      }
      
      private function §;&0§() : void
      {
         if(Boolean(unit) && !unit.disposed)
         {
            this.§`$I§ = §6#A§.§!&6§(§1"-§.§'$B§);
            unit.graphics.§5$#§(§2m§.§-w§,this.§`$I§);
            if(this.§?%p§ > 0)
            {
               this.§`$I§.gotoAndPlay(this.§?%p§);
            }
         }
      }
      
      override protected function §0&"§() : void
      {
         if(this.§`$I§)
         {
            unit.graphics.detachClip(this.§`$I§,§2m§.§-w§);
            this.§`$I§ = null;
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §'%V§(§8#z§(),true,this.§`$I§ ? this.§`$I§.currentFrame : 0));
      }
      
      public function §7%1§() : int
      {
         return this.§`$I§ ? this.§`$I§.currentFrame : 0;
      }
      
      public function §`!9§(param1:int = 0) : void
      {
         if(this.§`$I§)
         {
            this.§?%p§ = param1;
            this.§`$I§.gotoAndPlay(this.§?%p§);
         }
      }
   }
}

