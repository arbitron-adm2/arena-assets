package §7!B§
{
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"%H§.§1! §;
   import §#",§.ReturnFriendRequestMenu;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&&6§.§&$U§;
   import §+$=§.§6#A§;
   import §+%S§.§["4§;
   import §-%B§.§-"o§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4u§.§[%u§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §8!Y§.§`#Q§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?!p§.§1&8§;
   import §?!p§.§;W§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §`$4§ extends §&"T§ implements §?A§
   {
      
      private static const §@;§:int = 10;
      
      private var hint:§[%u§;
      
      private var §;$4§:§[&H§;
      
      private var tier:§!&-§;
      
      private var §4g§:uint;
      
      private var §'!9§:Vector.<§+%]§>;
      
      private var §?&>§:Vector.<§+%]§>;
      
      private var §'$s§:uint = 200;
      
      private var §[&0§:DisplayObject;
      
      private var §0%A§:DisplayObject;
      
      public function §`$4§(param1:int, param2:int, param3:§+%]§, param4:§!&-§, param5:Vector.<uint>)
      {
         var mask:Shape = null;
         var unit:§+%]§ = null;
         var x:int = param1;
         var y:int = param2;
         var owner:§+%]§ = param3;
         var tier:§!&-§ = param4;
         var clanEmblem:Vector.<uint> = param5;
         this.§'!9§ = new Vector.<§+%]§>(0);
         this.§?&>§ = new Vector.<§+%]§>(0);
         super();
         this.§4g§ = owner.squad.getNumber();
         this.tier = tier;
         this.§0%A§ = §=%_§.§[#v§(tier.id.value,clanEmblem);
         clip = §=%_§.§[#v§(tier.id.value,clanEmblem);
         mask = new Shape();
         mask.graphics.beginFill(0);
         mask.graphics.drawRect(-§<H§.§@% § * 0.5,0,§<H§.§@% §,§<H§.§-#C§ + 5);
         mask.graphics.endFill();
         mask.y = -§<H§.§-#C§;
         this.§[&0§ = mask;
         clip.addChild(this.§[&0§);
         clip.mask = this.§[&0§;
         this.x = this.§0%A§.x = x;
         this.y = this.§0%A§.y = y;
         Application.scene.§=P§(§@N§.§@$8§).addChild(this.§0%A§);
         canBeDamaged = true;
         addEventListener(§0%v§.§&!D§,§""0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         addEventListener(§0%v§.§+&=§,function(param1:Event):void
         {
            if(speed > 3)
            {
               §@%;§.play(§`!v§.BONUS);
            }
         });
         if(tier.§8R§())
         {
            for each(unit in owner.squad.§1!n§())
            {
               unit.buffs.place(new §1&8§(tier));
               this.§?&>§.push(unit);
            }
         }
         this.§<$U§();
         Application.scene.§@$I§.§1$+§(this,true);
      }
      
      public static function create(param1:int, param2:int, param3:§+%]§) : §`$4§
      {
         var _loc4_:§`$4§ = null;
         var _loc6_:§!&-§ = null;
         var _loc5_:ClanMemberStructure = param3.record.clanMember;
         if((Boolean(_loc5_)) && _loc5_.clanId != 0)
         {
            _loc6_ = §=%_§.§>%"§(_loc5_.prevSeasonTopPlace);
            if(Application.instance.§#&7§())
            {
               if(!_loc6_)
               {
                  _loc6_ = §=%_§.§>%"§(§@C§.§@#k§[param3.squad.§1!Y§]);
                  §8"%§.§?!W§.§>$y§("Create clan banner for bannerless team #" + param3.squad.getTeamId() + " (" + param3.record.getCharName() + ")");
               }
            }
            if(_loc6_)
            {
               _loc4_ = new §`$4§(param1,param2,param3,_loc6_,_loc5_.clanEmblem);
            }
         }
         return _loc4_;
      }
      
      private function §<$U§() : void
      {
         this.hint = new §[%u§(this.tier.name,this.tier.description);
         this.§;$4§ = new §[&H§(clip);
         this.§;$4§.§@!y§(this);
         §;s§(true);
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint.getContainer();
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(Application.scene.§@$I§.§<#[§() % §@;§ == 0)
         {
            this.§?$-§();
         }
         if(!disposed)
         {
            if(this.§0%A§.x != x)
            {
               this.§0%A§.x = x;
            }
            if(this.§0%A§.y != y)
            {
               this.§0%A§.y = y;
            }
         }
      }
      
      private function §?$-§() : void
      {
         var _loc3_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §<H§.§5"]§(x,y,this.§'$s§);
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc3_ in _loc1_)
         {
            if(_loc3_.squad.getNumber() == this.§4g§)
            {
               if(this.§'!9§.indexOf(_loc3_) == -1)
               {
                  _loc3_.buffs.place(new §;W§(this.tier));
               }
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc3_ in this.§'!9§)
         {
            if(!_loc3_.disposed && _loc2_.indexOf(_loc3_) == -1)
            {
               _loc3_.buffs.§6C§(§;W§.NAME);
            }
         }
         this.§'!9§ = _loc2_;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:§+%]§ = null;
         if(this.§;$4§)
         {
            this.§;$4§.§`Z§();
         }
         if(this.hint)
         {
            this.hint.destroy();
         }
         for each(_loc2_ in this.§'!9§)
         {
            if(!_loc2_.disposed)
            {
               _loc2_.buffs.§6C§(§;W§.NAME);
            }
         }
         if(this.tier.§8R§())
         {
            for each(_loc2_ in this.§?&>§)
            {
               if(!_loc2_.disposed)
               {
                  _loc2_.buffs.§6C§(§1&8§.NAME);
               }
            }
         }
         this.tier = null;
         super.§[$u§(param1);
      }
   }
}

