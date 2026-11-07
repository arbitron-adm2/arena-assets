package §4u§
{
   import § !8§.§`!d§;
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §1#p§.§2=§;
   import §2!-§.§-!6§;
   import §2#H§.§!%C§;
   import §3#a§.§[&A§;
   import §4#`§.§]$c§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<%k§.§`!v§;
   import §?>§.§0!7§;
   import §@!N§.§&#Z§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class §8#]§ extends §!$F§
   {
      
      protected var §!#N§:Sprite;
      
      public function §8#]§(param1:DisplayObjectContainer = null)
      {
         super(!param1 ? §6#A§.§!&6§(§+"'§.§`"I§) : param1);
      }
      
      override public function initHint(param1:§&!e§) : void
      {
         var _loc3_:String = null;
         var _loc4_:Sprite = null;
         var _loc5_:Number = NaN;
         super.initHint(param1);
         var _loc2_:§;#_§ = param1 as §;#_§;
         if(_loc2_.§<"Y§())
         {
            if(Boolean(this.§!#N§) && Boolean(this.§!#N§.parent))
            {
               this.§!#N§.parent.removeChild(this.§!#N§);
            }
            this.§!#N§ = new Sprite();
            §?!C§(this.§!#N§);
            for each(_loc3_ in _loc2_.§<"Y§())
            {
               _loc4_ = §&#Z§.§@"R§(_loc3_,§4&D§.height);
               _loc5_ = this.§!#N§.width;
               this.§!#N§.addChild(_loc4_);
               _loc4_.x = _loc5_;
            }
            this.§?"e§();
         }
      }
      
      protected function §?"e§() : void
      {
         this.§!#N§.x = panel.width - this.§!#N§.width - 7;
         this.§!#N§.y = 7;
      }
   }
}

