package §&!?§
{
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%Q§.§;$W§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§@#s§;
   import §-8§.GasCloud;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §2#i§.§+%z§;
   import §3#T§.AtomBomb;
   import §7!B§.§&"T§;
   import §8$V§.*;
   import §=!p§.§'%#§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §0%W§ implements §;$W§
   {
      
      public function §0%W§()
      {
         super();
      }
      
      public function check(param1:§+%]§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Vector.<§&"T§> = null;
         var _loc4_:GasCloud = null;
         if(!param1.disposed)
         {
            if(param1.buffs.hasBuff(§@#s§.NAME))
            {
               return false;
            }
            _loc2_ = param1.buffs.hasBuff(§ !!§.NAME) || param1.hp < param1.attributes.hp.§#&"§() / 2;
            if(_loc2_)
            {
               return true;
            }
            _loc3_ = Application.scene.§@$I§.§;%a§.§"L§([GasCloud]);
            for each(_loc4_ in _loc3_)
            {
               _loc2_ = _loc4_.§7$A§(param1);
               if(_loc2_)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}

