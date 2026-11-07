package §[!`§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'&"§.§,&3§;
   import §'&"§.§8$D§;
   import §'&"§.§=!x§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2#H§.§3$p§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class SolarSphere extends §&"T§
   {
      
      private static const §;o§:uint = 500;
      
      private static const §9&9§:uint = 90;
      
      private static const §<C§:uint = 30;
      
      private static const §8"L§:uint = 45;
      
      private static const §<%$§:uint = 10;
      
      private static const §9!"§:uint = 40;
      
      private const §^"t§:MovieClip = §6#A§.§!&6§("SolarSphere");
      
      private const §1"W§:String = "SphereConversion";
      
      private var owner:§+%]§;
      
      private var §,$G§:§+%]§;
      
      private var target:§+%]§;
      
      private var targets:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §#!r§:Point;
      
      private var damage:uint = 90;
      
      private var §9!r§:uint = 30;
      
      private var §5"8§:Boolean = false;
      
      private var §`#H§:Number;
      
      private var dummy:§&"T§ = Application.scene.§,$z§();
      
      private var §-$3§:Number;
      
      private var §-&D§:Number;
      
      private var §'!M§:Boolean;
      
      private var §-#v§:int;
      
      public function SolarSphere(param1:§+%]§, param2:int, param3:int, param4:§+%]§ = null, param5:Boolean = false)
      {
         var _loc6_:MovieClip = null;
         super();
         this.owner = param1;
         this.§,$G§ = param4;
         this.§'!M§ = param5;
         this.x = param2;
         this.y = param3;
         _loc6_ = §6#A§.§!&6§(this.§1"W§);
         §1"-§.§,&§(param2,param3,_loc6_,1,false);
         clip = this.§^"t§;
         if(param5)
         {
            this.§-$3§ = Math.PI / (30 * 0.5);
            this.§-&D§ = 0;
         }
         §,q§.push(§-&§.IGNORE_MAGNET);
         Application.scene.§@$I§.§1$+§(this);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §8$a§.§%!E§(_loc6_.totalFrames,this.§@&E§);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.§5N§ = §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
      }
      
      private function §@&E§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         this.targets.length = 0;
         if(this.§,$G§)
         {
            this.targets.push(this.§,$G§);
         }
         else
         {
            _loc1_ = §8"%§.§?!W§.§4"m§.§="T§(this.owner);
            for each(_loc2_ in _loc1_)
            {
               this.targets.push(_loc2_);
            }
            _loc3_ = §8"%§.§?!W§.§4"m§.§6"M§(this.owner);
            for each(_loc2_ in _loc3_)
            {
               this.targets.push(_loc2_);
            }
         }
         if(this.targets.length > 0)
         {
            this.target = this.targets[0];
         }
         §1"-§.§;%k§(this,§6#A§.getClass("SolarTrail"),§9!"§,1);
         this.§-#v§ = §;o§ + Application.scene.§@$I§.§<#[§();
         this.§5"8§ = true;
      }
      
      protected function §>"n§() : void
      {
         this.§`#H§ = §-q§.§'x§(x,y,this.target.x,this.target.y);
         §^"F§(this.§`#H§,this.§9!r§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!disposed && this.§5"8§)
         {
            if(Application.scene.§@$I§.§<#[§() >= this.§-#v§)
            {
               §1"-§.§,&§(x,y,§6#A§.§!&6§(this.§1"W§),1,false);
               this.§#!r§ = new Point(x,y);
               disposed = true;
               return;
            }
            if(!this.target.disposed)
            {
               this.§>"n§();
            }
            else if(this.targets.length > 1)
            {
               this.targets.splice(0,1);
               this.target = this.targets[0];
            }
            if(this.§'!M§)
            {
               new §%5§(this.owner,x,y,this.§-&D§,60);
               this.§-&D§ += this.§-$3§;
            }
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§3$p§ = null;
         if(param1.other == this.target)
         {
            this.§#!r§ = new Point(this.target.x,this.target.y);
            if(this.target.squad.getTeamId() == this.owner.squad.getTeamId())
            {
               if(this.§,$G§)
               {
                  §1"-§.§,&§(this.§,$G§.x,this.§,$G§.y,§6#A§.§!&6§(this.§1"W§),1,false);
                  if(this.§,$G§ == this.owner)
                  {
                     _loc2_ = §3$p§(this.owner.buffs.getBuff(§3$p§.NAME));
                     if(_loc2_)
                     {
                        _loc2_.§[$#§();
                     }
                  }
                  else
                  {
                     this.§,$G§.buffs.place(new §3$p§(false));
                  }
               }
               else
               {
                  §@%;§.play(§`!v§.RIKOSHET2);
                  §1"-§.§,&§(this.target.x - §<H§.§@% § * this.target.direction,this.target.y,§6#A§.§!&6§("SolarBlink"),1,false);
               }
            }
            else
            {
               §@%;§.play(§`!v§.§["s§);
               §'"$§.§]#I§(this.owner,this.target.x,this.target.y,this.target,this.damage,§9!"§ + 10,§9!"§,false,false,§&!E§.FIRE);
               §1"-§.explode(§;n§.§@%d§,this.target.x,this.target.y,§9!"§);
               this.target.§^"F§(this.§`#H§,20);
            }
            this.targets.splice(0,1);
            this.damage += §8"L§ * this.target.attributes.hp.§9"H§();
            this.§9!r§ += §<%$§;
            if(this.targets.length == 0)
            {
               disposed = true;
            }
            else
            {
               this.target = this.targets[0];
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         if(!this.owner.disposed && Boolean(this.§#!r§))
         {
            this.owner.x = this.§#!r§.x;
            this.owner.y = this.§#!r§.y;
         }
         super.§[$u§(param1);
         this.dummy.disposed = true;
         this.targets.length = 0;
         this.target = null;
      }
   }
}

