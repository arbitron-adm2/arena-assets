package §+$=§
{
   import § &5§.§0&$§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§%"'§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §3#a§.§-#M§;
   import §4!!§.§76§;
   import §4$b§.§2m§;
   import §7!B§.§&"T§;
   import §8#`§.§#%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^§.§ $^§;
   import §^§.§8$y§;
   import §^§.§8%l§;
   import §^§.§>o§;
   import §`%&§.§`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §`$v§ extends AbstractConfigLoader
   {
      
      protected static const §]!^§:§&`§ = new §&`§(§`$v§);
      
      private var libs:Vector.<§+&§> = new Vector.<§+&§>();
      
      public function §`$v§(param1:String, param2:String, param3:Vector.<String>)
      {
         super(param1,param2,param3,§1§.XML);
      }
      
      override protected function §>!s§(param1:XML, param2:String) : void
      {
         §+"i§("parse loaded config file " + param2);
         this.libs = this.libs.concat(this.§?N§(param1));
         this.libs = this.libs.concat(this.§5!o§(param1));
         §+"i§("parse loaded config file \'" + param2 + "\' done");
      }
      
      protected function §?N§(param1:XML) : Vector.<§+&§>
      {
         var _loc3_:XML = null;
         var _loc4_:§;!d§ = null;
         var _loc5_:§+&§ = null;
         var _loc2_:Vector.<§+&§> = new Vector.<§+&§>(0);
         for each(_loc3_ in param1.resource)
         {
            _loc4_ = this.§?%z§(_loc3_);
            _loc5_ = new §+&§();
            _loc5_.name = _loc3_.@name.toString() || this.§%"C§(_loc3_.@path);
            _loc5_.§#""§ = _loc3_.@path.toString();
            _loc5_.§2!u§ = §2!u§;
            _loc5_.§%%$§ = §6%"§;
            _loc5_.estimatedBytes = parseInt(_loc3_.@estimatedBytes);
            _loc5_.§=!=§.push(_loc4_);
            _loc5_.§6^§ = _loc3_.@lazy.toString() == "true";
            _loc2_.push(_loc5_);
         }
         return _loc2_;
      }
      
      protected function §5!o§(param1:XML) : Vector.<§+&§>
      {
         var _loc3_:XML = null;
         var _loc4_:§+&§ = null;
         var _loc2_:Vector.<§+&§> = new Vector.<§+&§>(0);
         for each(_loc3_ in param1.library)
         {
            _loc4_ = this.§]$V§(_loc3_,new §+&§());
            _loc2_.push(_loc4_);
         }
         for each(_loc3_ in param1.sound)
         {
            _loc4_ = this.§]$V§(_loc3_,new §+$3§());
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §]$V§(param1:XML, param2:§+&§) : §+&§
      {
         var _loc3_:XML = null;
         var _loc4_:§;!d§ = null;
         param2.name = param1.@name.toString() || this.§%"C§(param1.@path);
         param2.§#""§ = param1.@path;
         param2.§2!u§ = §2!u§;
         param2.§%%$§ = §6%"§;
         param2.ns = param1.@ns.toString() == "null" ? "" : param1.@ns;
         param2.estimatedBytes = parseInt(param1.@estimatedBytes);
         for each(_loc3_ in param1..resource)
         {
            _loc4_ = this.§?%z§(_loc3_);
            param2.§=!=§.push(_loc4_);
         }
         param2.§6^§ = param1.@lazy.toString() == "true";
         return param2;
      }
      
      private function §%"C§(param1:String) : String
      {
         var _loc2_:int = param1.lastIndexOf("/");
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         else
         {
            _loc2_++;
         }
         var _loc3_:int = param1.lastIndexOf(".");
         return param1.slice(_loc2_,_loc3_);
      }
      
      protected function §?%z§(param1:XML) : §;!d§
      {
         var _loc2_:§;!d§ = new §;!d§();
         this.§<!N§(_loc2_,param1);
         return _loc2_;
      }
      
      protected function §<!N§(param1:§;!d§, param2:XML) : void
      {
         param1.§8!w§(param2.@className.toString());
         param1.§5!&§(int(param2.@x.toString()));
         param1.§7+§(int(param2.@y.toString()));
         param1.§&Z§(int(param2.@width.toString()));
         param1.§!%V§(int(param2.@height.toString()));
         param1.§&&§(int(param2.@color.toString()));
         param1.§9!?§(parseFloat(param2.@scale.toString()));
      }
      
      public function §3"'§() : Vector.<§+&§>
      {
         return this.libs;
      }
      
      override protected function get log() : §&`§
      {
         return §]!^§;
      }
   }
}

