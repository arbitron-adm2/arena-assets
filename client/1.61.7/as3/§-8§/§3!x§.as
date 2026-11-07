package §-8§
{
   import § !8§.§`!d§;
   import § #g§.§0!d§;
   import § &5§.*;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%#u§.§`"_§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §+%S§.§=t§;
   import §,!f§.*;
   import §0&F§.§0%v§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2B§.§#&E§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$7§.§+#N§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextFieldType;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   import ru.pragmatix.wormix.weapons.interfaces.§;$'§;
   
   public class §3!x§ extends §&"T§ implements §;$'§, §^%c§
   {
      
      public static const §9!"§:§&$2§ = new §&$2§(62);
      
      protected static const §?%-§:int = 1;
      
      protected var counter:§&$2§ = new §&$2§(0);
      
      protected var duration:§&$2§ = new §&$2§(0);
      
      protected var radius:int;
      
      protected var owner:§+%]§;
      
      protected var paramSet:§5$n§;
      
      protected var bar:§[N§;
      
      protected var §0%X§:Dictionary = new Dictionary();
      
      protected var §`"$§:MovieClip;
      
      protected var _customSource:Object;
      
      public function §3!x§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:String, param6:uint)
      {
         var _loc7_:MovieClip = null;
         super(false,§@N§.§7&H§);
         if(this.radius == 0)
         {
            this.radius = §9!"§.value;
         }
         this.x = param2;
         this.y = param3 - (this.radius >> 2);
         this.duration.value = param6;
         this.owner = param1;
         this.paramSet = param4;
         physParams.§5N§ = §9%1§.§>#T§;
         clip = new MovieClip();
         this.§`"$§ = §6#A§.§!&6§(param5);
         clip.addChild(this.§`"$§);
         clip.mouseChildren = false;
         clip.mouseEnabled = false;
         if(Application.instance.§#&7§() && §8"%§.§&S§.§'`§())
         {
            _loc7_ = §1"-§.§!#=§(16777215,this.radius);
            clip.addChild(_loc7_);
            _loc7_ = §1"-§.§!#=§(16777215,this.radius);
            _loc7_.x = -this.radius;
            clip.addChild(_loc7_);
            _loc7_ = §1"-§.§!#=§(16777215,this.radius);
            _loc7_.x = this.radius;
            clip.addChild(_loc7_);
         }
         Application.scene.addEventListener(§0%v§.UNIT_DEACTIVATION,this.§8$n§);
         stable = true;
         Application.scene.§@$I§.§1$+§(this);
         this.bar = new §[N§(param1,"(" + param6 + ")",50);
      }
      
      protected function §8$n§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         var _loc2_:int = -§?%-§;
         while(_loc2_ <= §?%-§)
         {
            _loc3_ = x + this.radius * _loc2_;
            _loc4_ = §<H§.§5"]§(_loc3_,y,this.radius);
            for each(_loc5_ in _loc4_)
            {
               if(this.§=%I§(_loc5_))
               {
                  this.§[%x§(_loc5_);
               }
            }
            _loc2_++;
         }
         if(++this.counter.value >= this.duration.value)
         {
            disposed = true;
         }
         this.bar.§["n§("(" + int(this.duration.value - this.counter.value) + ")");
      }
      
      protected function §=%I§(param1:§+%]§) : Boolean
      {
         return !param1.buffs.hasBuff(§=t§.NAME);
      }
      
      protected function §[%x§(param1:§+%]§) : void
      {
         param1.buffs.place(new §=t§());
      }
      
      public function §5"F§(param1:int) : void
      {
         §§push(§!%8§);
         §§push(§!%8§);
         var _temp_1:* = param1 / this.radius;
         §§pop().scaleX = §§pop().scaleY = param1 / this.radius;
         this.radius = param1;
         this.y = y - (this.radius >> 2);
      }
      
      public function §7$A§(param1:§+%]§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:int = -§?%-§;
         while(_loc2_ <= §?%-§)
         {
            _loc3_ = x + this.radius * _loc2_;
            if(§<H§.§8!P§(param1,_loc3_,y,this.radius,true))
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.§8$n§);
         this.owner = null;
         super.§[$u§(param1);
      }
      
      public function getOwner() : §+%]§
      {
         return this.owner;
      }
      
      public function §8#H§() : int
      {
         return 0;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
      
      public function set customSource(param1:Object) : void
      {
         this._customSource = param1;
      }
   }
}

