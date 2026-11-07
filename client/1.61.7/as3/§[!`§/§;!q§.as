package §[!`§
{
   import § L§.§`T§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §&!@§.§5"`§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §3#a§.§-#M§;
   import §4%_§.§3§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§3&G§;
   import §8$V§.*;
   import §?$K§.§=z§;
   import §@!i§.§5%8§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §;!q§ extends §&"T§ implements §2%F§
   {
      
      private static const §6%g§:Array = [§+%]§,§3&G§,§3#3§,§`T§];
      
      public static const §7$l§:String = "active";
      
      public static const §?!z§:String = "stay";
      
      public static const §1"q§:String = "unactive";
      
      public static const §8#$§:String = "active";
      
      public static const §6!f§:String = "appearance";
      
      public static const §5$P§:String = "fading";
      
      private static const halfWidth:int = 50;
      
      private var §#"A§:String;
      
      private var radius:int;
      
      private var damage:int;
      
      private var §8$L§:§+%]§;
      
      private var §!"z§:§+%]§;
      
      public function §;!q§(param1:§+%]§, param2:int, param3:int, param4:int, param5:int)
      {
         var clipName:String;
         var obj:§&"T§ = null;
         var classicColorId:int = 0;
         var subclip:MovieClip = null;
         var color:uint = 0;
         var owner:§+%]§ = param1;
         var x:int = param2;
         var y:int = param3;
         var radius:int = param4;
         var damage:int = param5;
         super(true);
         clipName = "SafetyArea";
         if(owner)
         {
            this.§!"z§ = owner;
            classicColorId = §5%8§.§+#_§(owner.squad.getNumber());
            switch(classicColorId)
            {
               case 0:
                  clipName += "Green";
                  break;
               case 1:
                  clipName += "Red";
                  break;
               case 2:
                  clipName += "Yellow";
                  break;
               case 3:
                  clipName += "Blue";
            }
         }
         if(§8"%§.§?!W§.§^!U§().§8y§() || §8"%§.§?!W§.§^!U§().§]_§())
         {
            clip = §6#A§.§!&6§(clipName);
         }
         else
         {
            clip = new MovieClip();
            subclip = §6#A§.§!&6§("GirderH");
            subclip.width = 90;
            subclip.height = 14.5;
            clip.addChild(subclip);
         }
         this.radius = radius;
         this.damage = damage;
         this.setState(§1"q§);
         this.x = x;
         this.y = y;
         this.stable = true;
         Application.scene.§@$I§.§1$+§(this);
         obj = new §&"T§();
         obj.clip = §6#A§.§!&6§("GirderH");
         obj.clip.height = 14.5;
         obj.clip.width = 96;
         obj.clip.alpha = 0;
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         §8$a§.§&!#§(Application.scene,§0%v§.SCENE_STABLE,function(param1:Event):void
         {
            var e:Event = param1;
            §5#k§();
            §8$a§.§%!E§(1,function():void
            {
               Application.scene.§+!K§(obj.clip,x,y - 5,true);
            });
         },false,§[!F§.§ "k§);
         if(Application.instance.§#&7§())
         {
            color = §5%8§.§75§(owner ? int(owner.squad.getNumber()) : 1).§=%%§;
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc3_:§+%]§ = null;
         if(this.§#"A§ == §1"q§ || frames % 2 != 0)
         {
            return;
         }
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc3_ in _loc2_)
         {
            if(!_loc3_.disposed && _loc3_ != this.§8$L§ && this.§-#5§(_loc3_))
            {
               if(Boolean(this.§8$L§) && !this.§8$L§.disposed)
               {
                  §-#M§.§[&F§(this.§8$L§);
                  §'"$§.inflictDamage(new §6#I§(null,x,y,false,1),this.§8$L§,this.damage,1,1);
                  if(this.§8$L§.squad.isAi() && this.§8$L§.disposed)
                  {
                     dispatchEvent(new Event(§5"`§.KILL_GUARDIAN_EVENT));
                  }
               }
               this.§8$L§ = _loc3_;
               this.setState(§?!z§);
            }
         }
         if(Boolean(this.§8$L§) && (this.§8$L§.disposed || !this.§-#5§(this.§8$L§)))
         {
            this.§8$L§ = null;
            this.setState(§7$l§);
         }
      }
      
      private function §-#5§(param1:§+%]§) : Boolean
      {
         var _loc2_:Vector.<§&"T§> = §<H§.§%$Q§(x - this.radius + §<H§.§@% §,y - this.radius * 2 + §<H§.§,%P§,x + this.radius - §<H§.§@% §,y - §<H§.§-#C§,new <§&"T§>[param1],true);
         return _loc2_.length > 0;
      }
      
      private function §5#k§() : void
      {
         var _loc2_:§&"T§ = null;
         var _loc3_:§+%]§ = null;
         var _loc1_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§(§6%g§);
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_ is §+%]§)
            {
               _loc3_ = §+%]§(_loc2_);
               if(§-q§.§+K§(x - halfWidth,y,x + halfWidth,y,_loc2_.x,_loc2_.y - §<H§.§-#C§,§<H§.§,%P§))
               {
                  §-#M§.§[&F§(_loc3_);
               }
            }
         }
      }
      
      public function setState(param1:String) : void
      {
         var _loc2_:ColorTransform = new ColorTransform();
         if(clip.totalFrames > 1)
         {
            clip.gotoAndPlay(param1);
         }
         else
         {
            _loc2_.color = param1 == §?!z§ ? uint(§;#L§.§ B§) : uint(§;#L§.§?#[§);
            clip.transform.colorTransform = _loc2_;
         }
         this.§#"A§ = param1;
         if(param1 == §6!f§)
         {
            this.§#"A§ = §8#$§;
            if(this.§8$L§)
            {
               if(clip.totalFrames > 1)
               {
                  clip.gotoAndPlay(§?!z§);
               }
               else
               {
                  _loc2_.color = §;#L§.§ B§;
                  clip.transform.colorTransform = _loc2_;
               }
               this.§#"A§ = §?!z§;
            }
         }
         else if(param1 == §5$P§)
         {
            this.§#"A§ = §1"q§;
            this.§8$L§ = null;
         }
      }
      
      public function §##m§() : String
      {
         return this.§#"A§;
      }
      
      public function §`"%§() : §+%]§
      {
         return this.§8$L§;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         this.§8$L§ = null;
         super.§[$u§(param1);
      }
      
      public function §9$r§() : int
      {
         return this.radius + halfWidth;
      }
      
      public function get owner() : §+%]§
      {
         return this.§!"z§;
      }
   }
}

