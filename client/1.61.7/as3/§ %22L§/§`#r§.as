package § "L§
{
   import § !8§.§`!d§;
   import § #9§.§"$t§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#",§.§?§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §%Q§.§<&A§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §+%S§.§[0§;
   import §,$J§.§,$O§;
   import §-8§.§3!x§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<"L§.§##-§;
   import §<%k§.§`!v§;
   import §=!p§.§&&0§;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §?"[§.*;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§5%8§;
   import §@!i§.§5&4§;
   import §@!i§.§;#L§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]#[§.§2%o§;
   import §]^§.§-$T§;
   import §^"y§.*;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §`#r§ extends §1%b§ implements §^%c§, §2%F§
   {
      
      private static const §&>§:int = 1;
      
      private static const §!"k§:int = 3;
      
      private static const §9!"§:int = 150;
      
      private static const DAMAGE:int = 90;
      
      private static const HP:int = 200;
      
      private static const §6$r§:int = 20;
      
      private static const §1%l§:int = 5;
      
      private static const §5p§:int = §6$r§ - §1%l§;
      
      private var enemy:§+%]§;
      
      private var sphere:MovieClip;
      
      private var §!$;§:§[&$§;
      
      private var §,"#§:MovieClip;
      
      private var §2$z§:MovieClip;
      
      private var §'Z§:MovieClip;
      
      private var §5$d§:MovieClip;
      
      private var §]#J§:int;
      
      private var §[%j§:int;
      
      private var radius:int;
      
      private var §6#M§:Number;
      
      private var §"$P§:Number;
      
      private var §@!c§:Point;
      
      private var §,#Y§:§<&A§;
      
      public function §`#r§(param1:Point, param2:§+%]§, param3:int = 0)
      {
         super(param1,param2,§0$N§.§%! §("GARY.NAME"),param3 || §!"k§,HP);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         §;&9§ = false;
         §4!<§ = §!%8§.height;
         weapon = §<$c§.§ !=§(§+%z§.SHOTGUN);
         paramSet = weapon.§<$4§.clone();
         paramSet.damage.value = DAMAGE;
         this.§,#Y§ = §<&A§(weapon.getWeapon().§,!"§);
      }
      
      override protected function §8&8§() : void
      {
         var _loc2_:uint = 0;
         this.§1$^§(§`#r§);
         var _loc1_:MovieClip = new MovieClip();
         _loc1_.scaleX = owner.direction;
         this.§,"#§ = new MovieClip();
         _loc1_.addChild(this.§,"#§);
         this.§2$z§ = §6#A§.§!&6§("GaryAttack");
         _loc1_.addChild(this.§2$z§);
         clip = _loc1_;
         this.§2$z§.visible = false;
         §7U§ = this.§2$z§.height * 0.8;
         head = this.§2$z§.getChildByName("head") as MovieClip;
         this.§@!c§ = new Point(head.x,head.y);
         this.radius = Math.abs(head.y);
         this.§5$d§ = this.§2$z§.getChildByName("neck") as MovieClip;
         this.§'Z§ = this.§2$z§.getChildByName("base") as MovieClip;
         barrel = head.getChildByName("barrel") as MovieClip;
         barrel.rotation = head.rotation = § !-§;
         if(Application.instance.§#&7§())
         {
            _loc2_ = §5%8§.§75§(owner.squad.getNumber()).§=%%§;
            this.sphere = §1"-§.§!#=§(_loc2_,§9!"§);
         }
         this.§!$;§ = new §[&$§(this.§,"#§,"GaryIdle","GaryAppear","GaryFade");
         this.§!$;§.start();
      }
      
      private function §1$^§(param1:Class) : void
      {
         var _loc4_:§`#r§ = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([param1]);
         var _loc3_:uint = uint(owner.squad.getTeamId());
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_ != this && _loc3_ == _loc4_.owner.squad.getTeamId())
            {
               _loc4_.disposed = true;
            }
         }
      }
      
      override protected function §,!l§(param1:Event) : void
      {
         activated = false;
         if(Boolean(this.sphere) && Boolean(this.sphere.parent))
         {
            clip.removeChild(this.sphere);
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         §<#h§();
         if(!disposed && !activated && Boolean(shotsLeft))
         {
            activated = §8"%§.§?!W§.§4"m§.activeSquad.getTeamId() != owner.squad.getTeamId();
            if(this.sphere)
            {
               if(activated)
               {
                  if(!this.sphere.parent)
                  {
                     clip.addChild(this.sphere);
                  }
               }
               else if(this.sphere.parent)
               {
                  clip.removeChild(this.sphere);
               }
            }
         }
         if(!disposed && this.§!$;§.state == §[&$§.§^0§)
         {
            this.§2$z§.visible = !activated;
            this.§,"#§.visible = activated;
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         super.§!!>§();
         if(!disposed && activated && Boolean(shotsLeft))
         {
            _loc1_ = y - §9!"§ + §<H§.§-#C§;
            _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
            _loc2_ = §<H§.§5"]§(x,y,§9!"§,_loc2_);
            for each(_loc3_ in _loc2_)
            {
               if(!_loc3_.disposed && (Boolean(_loc3_.speed != 0) || Boolean(_loc3_.crawling)))
               {
                  _loc4_ = §-q§.§'x§(x,_loc1_,_loc3_.x,_loc3_.y);
                  _loc5_ = this.§,#Y§.test(_loc3_,x,_loc1_,§&>§);
                  if((Boolean(_loc5_)) && !§>#9§.§3%2§(x,_loc1_,_loc4_,§9!"§))
                  {
                     this.enemy = _loc3_;
                     §>%M§ = _loc5_.angle;
                     --shotsLeft;
                     this.§`%V§();
                     activated = false;
                     if(Boolean(this.sphere) && Boolean(this.sphere.parent))
                     {
                        clip.removeChild(this.sphere);
                     }
                     break;
                  }
               }
            }
         }
      }
      
      override protected function §`%V§() : void
      {
         var degrees:int = 0;
         var direct:int = 0;
         var piHalf:Number = NaN;
         degrees = §-q§.§1$#§(x,y,this.enemy.x,this.enemy.y,false);
         this.§]#J§ = degrees + 90;
         direct = this.§]#J§ > 0 ? 1 : -1;
         this.§[%j§ = this.§]#J§ / §1%l§ * direct;
         piHalf = Math.PI * 0.5;
         this.§6#M§ = -piHalf;
         this.§"$P§ = (piHalf + §-q§.§7%8§(degrees)) / §1%l§ * direct;
         this.§5$d§.addEventListener(Event.ENTER_FRAME,this.§4"n§);
         head.gotoAndPlay(0);
         this.§'Z§.gotoAndPlay(0);
         this.§5$d§.gotoAndPlay(0);
         this.§2$z§.visible = true;
         this.§,"#§.visible = false;
         head.rotation = this.§5$d§.rotation = 0;
         §!%8§; //unpopped
         (x > this.enemy.x).scaleX = 1;
         §@%;§.play(§`!v§.§8x§);
         §8$a§.§%!E§(§1%l§ + 1,function():void
         {
            if(!disposed)
            {
               §<%8§();
               §"$P§ = (piHalf + §-q§.§7%8§(degrees)) / §5p§ * -direct;
               §[%j§ = §]#J§ / §5p§ * -direct;
               §@%;§.play(§`!v§.§0!h§);
               §-#M§.§<$$§(x,y,enemy,DAMAGE);
               if(!enemy.disposed)
               {
                  enemy.rotateUntilStable();
               }
               §8$a§.§%!E§(§5p§ - 2,function():void
               {
                  if(!disposed)
                  {
                     §5$d§.removeEventListener(Event.ENTER_FRAME,§4"n§);
                     §5$d§.rotation = 0;
                     head.x = §@!c§.x;
                     head.y = §@!c§.y;
                     §2$z§.visible = false;
                     §,"#§.visible = true;
                     §<#h§();
                     if(disposed)
                     {
                        §8%F§();
                     }
                  }
               });
            }
         });
      }
      
      private function §4"n§(param1:Event) : void
      {
         this.§5$d§.rotation += this.§[%j§;
         this.§6#M§ += this.§"$P§;
         head.x = this.radius * Math.cos(this.§6#M§);
         head.y = this.radius * Math.sin(this.§6#M§);
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         if(disposed)
         {
            this.§8%F§();
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         super.§[$u§(param1);
      }
      
      private function §8%F§() : void
      {
         §!%8§.visible = false;
         var _loc1_:MovieClip = §1"-§.§`$Q§(x,y,"GaryFade");
         _loc1_.scaleX = §!%8§.scaleX;
         §3!3§.§>!j§(§3!3§.§#"R§(§!%8§));
      }
      
      public function §9$r§() : int
      {
         return §9!"§ + §<H§.§@k§;
      }
   }
}

