package ru.pragmatix.wormix.weapons
{
   import §""8§.§,"z§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§=$G§;
   import §3#T§.§;#Q§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import avmplus.getQualifiedClassName;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §[$ § extends §,"z§
   {
      
      private static const §5"c§:§&$2§ = new §&$2§(350);
      
      private static const §[X§:§&$2§ = new §&$2§(30);
      
      private var paramSet:§5$n§;
      
      private var §#L§:uint;
      
      private var §4$2§:Boolean = false;
      
      private var §9$I§:Boolean = false;
      
      private var §]$4§:Vector.<§;#Q§> = new Vector.<§;#Q§>(0);
      
      private var §9#Z§:uint;
      
      public function §[$ §(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:uint)
      {
         this.§#L§ = param1 != null ? §5%8§.§75§(param1.squad.getNumber()).textColor : §5%8§.UNKNOWN.textColor;
         super(param1,param2,param3,param4);
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET,§-&§.CAPTURABLE];
         this.§9#Z§ = §5"c§.value + param5;
         this.paramSet = param2;
         physicModel.addEventListener(§9#1§.STABLE,this.onStable);
         physicModel.addEventListener(§9#1§.§3%G§,this.§^"m§);
         Application.scene.addEventListener(§0%v§.SOT,this.§^% §);
      }
      
      override public function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            trail = §1"-§.attachTrail(this,8,3,this.§#L§,16777215,1);
         }
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         if(Boolean(this.§9$I§) && Boolean(param1.other) && param1.other is §+%]§)
         {
            this.§9$I§ = false;
            physParams.§5N§ = §9%1§.§&!A§;
            inflictDamage(param1.other,this.paramSet.damage.value,1,0,false);
         }
         else
         {
            canBeDamaged = true;
            if(!this.§4$2§)
            {
               x = param1.point.x;
               y = param1.point.y;
               §@%;§.play(§`!v§.§7"4§);
               this.§4$2§ = true;
               dispatchEvent(new MineSetUpEvent(this,false));
            }
            super.onCollide(param1);
         }
      }
      
      private function onStable(param1:Event) : void
      {
         var _loc3_:§[$ § = null;
         var _loc4_:Number = NaN;
         var _loc5_:§;#Q§ = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§[$ §]);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ != this && _loc3_.stable && owner.squad == _loc3_.owner.squad)
            {
               _loc4_ = §-q§.distance(x,y,_loc3_.x,_loc3_.y);
               if(_loc4_ <= this.§9#Z§ && _loc4_ >= §[X§.value)
               {
                  _loc5_ = new §;#Q§(owner,this.paramSet,this,_loc3_,this.§#L§);
                  this.§7&C§(_loc5_);
                  _loc3_.§7&C§(_loc5_);
                  §@%;§.play(§`!v§.§-%5§);
               }
            }
         }
         if(trail)
         {
            if(trail is §"#"§)
            {
               §"#"§(trail).off();
            }
         }
      }
      
      private function §^"m§(param1:Event) : void
      {
         this.§8%2§();
         if(trail)
         {
            if(trail is §"#"§)
            {
               §"#"§(trail).on();
            }
         }
      }
      
      private function §^% §(param1:Event) : void
      {
         if(this.§]$4§.length == 0)
         {
            disposed = true;
         }
      }
      
      private function §7&C§(param1:§;#Q§) : void
      {
         this.§]$4§.push(param1);
      }
      
      private function §8%2§() : void
      {
         var _loc1_:§;#Q§ = null;
         for each(_loc1_ in this.§]$4§)
         {
            _loc1_.disposed = true;
         }
         this.§]$4§ = new Vector.<§;#Q§>(0);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.§8%2§();
         if(!this.§4$2§)
         {
            dispatchEvent(new MineSetUpEvent(this,false));
         }
         physicModel.removeEventListener(§9#1§.STABLE,this.onStable);
         physicModel.removeEventListener(§9#1§.§3%G§,this.§^"m§);
         Application.scene.removeEventListener(§0%v§.SOT,this.§^% §);
         §1"-§.explode(§;n§.§7q§,x,y,12);
         super.§[$u§(param1);
      }
      
      public function § !G§() : void
      {
         canBeDamaged = false;
         this.§9$I§ = true;
         physParams.§5N§ = §9%1§.§&!A§ + §9%1§.§@%h§;
      }
   }
}

