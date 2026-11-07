package §4$b§
{
   import § !P§.§9%Z§;
   import § %f§.§]%f§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%$!§.§@!o§;
   import §&#h§.§-"F§;
   import §'!Z§.§2!H§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §2"L§.§,!t§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §9![§.§^§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §9&+§.§>&5§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §`%&§.§`§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §`"s§
   {
      
      protected var container:MovieClip;
      
      protected var §8"S§:MovieClip;
      
      protected var direction:§@!o§ = §@!o§.LEFT;
      
      protected var §8&H§:String = "";
      
      protected var §^"k§:uint;
      
      private var §1"b§:Object = {};
      
      private var §%o§:Object = {};
      
      public function §`"s§()
      {
         super();
         this.§%o§[§2m§.§&#3§] = new Vector.<§2m§>(0);
         this.§%o§[§2m§.§-w§] = new Vector.<§2m§>(0);
         this.container = new MovieClip();
         this.§8"S§ = new MovieClip();
         this.container.addChild(this.§8"S§);
         this.§^"k§ = 0;
      }
      
      public function getClip() : MovieClip
      {
         return this.container;
      }
      
      public function §"?§() : MovieClip
      {
         return MovieClip(this.§8"S§.getChildAt(0));
      }
      
      public function turnLeft() : void
      {
         this.§,!9§(§@!o§.LEFT);
      }
      
      public function turnRight() : void
      {
         this.§,!9§(§@!o§.RIGHT);
      }
      
      private function §,!9§(param1:§@!o§) : void
      {
         var _loc2_:§2m§ = null;
         if(param1 != this.direction)
         {
            §,!t§.§%v§(this.§8"S§);
         }
         this.direction = param1;
         for each(_loc2_ in this.§%o§[§2m§.§-w§])
         {
            if(Boolean(_loc2_.clip) && Boolean(_loc2_.needRotate) && this.direction != _loc2_.direction)
            {
               _loc2_.direction = this.direction;
               §,!t§.§%v§(_loc2_.clip);
            }
         }
      }
      
      protected function §4"b§(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc3_:MovieClip = null;
         _loc3_ = param2 ? null : this.§1"b§[param1];
         if(!_loc3_)
         {
            _loc3_ = §6#A§.§!&6§(param1);
            if(!_loc3_)
            {
               _loc3_ = §6#A§.§!&6§(§<$c§.§"$h§(§]!E§.BROKEN_SWORD).getClipClassName());
            }
            if(!_loc3_)
            {
               throw new Error("Error while initializing clip <" + param1 + ">");
            }
            _loc3_.x = 0;
            _loc3_.y = 0;
            this.§1"b§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      protected function play(param1:String, param2:Boolean = false, param3:String = "", param4:Boolean = false) : MovieClip
      {
         var _loc5_:int = this.getClip().rotation;
         this.getClip().rotation = 0;
         var _loc6_:MovieClip = this.§4"b§(param3 + param1,param4);
         this.§8&H§ = param1;
         if(this.§8"S§.numChildren)
         {
            this.§8"S§.removeChildAt(0);
         }
         this.§`$i§(_loc6_);
         this.§8"S§.addChildAt(_loc6_,0);
         if(param2)
         {
            _loc6_.gotoAndPlay(1);
         }
         this.getClip().rotation = _loc5_;
         return _loc6_;
      }
      
      protected function §`$i§(param1:MovieClip) : void
      {
      }
      
      public function §5$#§(param1:String, param2:MovieClip, param3:int = 0, param4:int = 0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false, param8:Boolean = true) : void
      {
         if(param8)
         {
            param2.transform.colorTransform = this.§8"S§.transform.colorTransform;
         }
         var _loc9_:§2m§ = new §2m§(param2,param3,param4,param6,param8);
         _loc9_.needRotate = param6;
         if(!this.§%o§[param1])
         {
            this.§%o§[param1] = new Vector.<§2m§>(0);
         }
         Vector.<§2m§>(this.§%o§[param1]).push(_loc9_);
         if(param5)
         {
            this.§[&3§(_loc9_,param7);
         }
      }
      
      public function detachClip(param1:MovieClip, param2:String = "") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Vector.<§2m§> = null;
         if(Boolean(param2) && Boolean(this.§%o§[param2]) && Vector.<§2m§>(this.§%o§[param2]).length > 0)
         {
            this.§@%j§(param1,param2);
            return;
         }
         for each(_loc4_ in this.§%o§)
         {
            if(_loc4_.length > 0 && _loc4_.indexOf(param1) > -1)
            {
               _loc3_ = true;
               if(this.§@%j§(param1,param2))
               {
                  return;
               }
               throw new Error("WTF!!2 clip " + param1 + " is not found in group " + param2);
            }
         }
      }
      
      private function §@%j§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc3_:int = 0;
         var _loc5_:Boolean = false;
         var _loc4_:Vector.<§2m§> = this.§%o§[param2];
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            if(_loc4_[_loc3_].clip == param1)
            {
               _loc5_ = true;
               this.§9$_§(_loc4_[_loc3_]);
               break;
            }
            _loc3_++;
         }
         if(_loc5_)
         {
            _loc4_.splice(_loc3_,1);
            return true;
         }
         return false;
      }
      
      public function colorTransform(param1:int, param2:int, param3:int, param4:int = 0) : void
      {
         var _loc6_:Vector.<§2m§> = null;
         var _loc7_:§2m§ = null;
         var _loc5_:ColorTransform = new ColorTransform(1,1,1,1,param1,param2,param3,param4);
         _loc5_.concat(this.§8"S§.transform.colorTransform);
         this.§8"S§.transform.colorTransform = _loc5_;
         for each(_loc6_ in this.§%o§)
         {
            for each(_loc7_ in _loc6_)
            {
               if(_loc7_.allowTransform)
               {
                  _loc7_.clip.transform.colorTransform = _loc5_;
               }
            }
         }
      }
      
      private function §[&3§(param1:§2m§, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         if(!param1.visible)
         {
            param1.visible = true;
            if(param1.needRotate && this.direction != param1.direction)
            {
               param1.direction = this.direction;
               _loc3_ = param1.clip.rotation;
               param1.clip.rotation = 0;
               §,!t§.§%v§(param1.clip);
               param1.clip.rotation = _loc3_;
            }
            param1.§1!G§(this.direction);
            this.container.addChild(param1.clip);
            if(Boolean(param1.§<S§) && Boolean(param1.§<S§.length))
            {
               §3!3§.§<%W§(param1.§<S§);
            }
            if(param2)
            {
               param1.tween = TweenMax.to(param1.clip,0.2,{
                  "scaleX":param1.direction.value,
                  "scaleY":1,
                  "ease":Linear.easeNone
               });
               param1.clip.scaleX = param1.clip.scaleY = 0;
            }
         }
      }
      
      private function §9$_§(param1:§2m§) : void
      {
         var rec:§2m§ = param1;
         if(rec.visible)
         {
            rec.visible = false;
            if(rec.tween)
            {
               rec.tween.kill();
               rec.tween = null;
            }
            rec.clip.scaleX = rec.direction.value;
            rec.clip.scaleY = 1;
            try
            {
               this.container.removeChild(rec.clip);
            }
            catch(e:Error)
            {
               if(Boolean(rec.clip) && Boolean(rec.clip.parent))
               {
                  rec.clip.parent.removeChild(rec.clip);
               }
            }
            if(!rec.§<S§)
            {
               rec.§<S§ = §3!3§.§#"R§(rec.clip);
            }
            if(Boolean(rec.§<S§) && Boolean(rec.§<S§.length))
            {
               §3!3§.§>!j§(rec.§<S§);
            }
         }
      }
      
      public function §5$&§() : String
      {
         return this.§8&H§;
      }
      
      public function §%&8§(param1:String = "") : void
      {
         var _loc2_:§2m§ = null;
         param1 ||= §2m§.§&#3§;
         for each(_loc2_ in this.§%o§[param1])
         {
            this.§[&3§(_loc2_,true);
         }
      }
      
      public function §=!y§(param1:String = "") : void
      {
         var _loc2_:§2m§ = null;
         param1 ||= §2m§.§&#3§;
         for each(_loc2_ in this.§%o§[param1])
         {
            this.§9$_§(_loc2_);
         }
      }
      
      public function set x(param1:Number) : void
      {
         this.container.x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.container.y = param1;
      }
      
      public function get x() : Number
      {
         return this.container.x;
      }
      
      public function get y() : Number
      {
         return this.container.y;
      }
   }
}

