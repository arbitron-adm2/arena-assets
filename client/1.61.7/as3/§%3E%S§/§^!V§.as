package §>%S§
{
   import §,"v§.§9%d§;
   import §1#p§.§"Z§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class §^!V§ implements §9%d§
   {
      
      private static const §2$P§:int = 87;
      
      private static const §;%U§:uint = 128;
      
      private static const §1!P§:uint = 32768;
      
      private static const §9R§:uint = 32;
      
      private static const §#$d§:uint = 1073741824;
      
      private static const §!#j§:uint = 8;
      
      private static const §!!@§:uint = 2147483648;
      
      private static const §=&H§:uint = 32767;
      
      private static const §8'§:uint = 1073741823;
      
      private static const §!%u§:uint = 32767;
      
      private static const §@&"§:uint = 1073741823;
      
      private static const §^d§:String = "Недопустимый заголовок команды";
      
      private static const §0"m§:String = "Недопустимые значения переменных";
      
      private static var §""@§:uint = 0;
      
      private var §&% §:Boolean;
      
      private var commandId:uint;
      
      private var length:uint;
      
      private var §^$m§:uint;
      
      private var §^%F§:uint;
      
      private var §'%K§:uint;
      
      public function §^!V§()
      {
         super();
         this.§&% § = false;
      }
      
      public function §4i§(param1:IDataInput) : §9%d§
      {
         this.§[$8§(param1);
         if(this.§3v§())
         {
            this.parse();
            return this;
         }
         throw new ArgumentError(§^d§);
      }
      
      private function §[$8§(param1:IDataInput) : void
      {
         this.§^$m§ = param1.readUnsignedByte();
         this.§^%F§ = param1.readUnsignedShort();
         this.§'%K§ = param1.readUnsignedInt();
      }
      
      private function §3v§() : Boolean
      {
         this.§&% § = this.§?!^§() && this.§ t§() && this.§?"P§() && this.§7%r§();
         return this.§&% §;
      }
      
      private function §?!^§() : Boolean
      {
         return (this.§^$m§ & §2$P§) == §2$P§;
      }
      
      private function § t§() : Boolean
      {
         return Boolean(this.§^$m§ & §!#j§) != Boolean(this.§'%K§ & §!!@§);
      }
      
      private function §?"P§() : Boolean
      {
         return Boolean(this.§^$m§ & §9R§) != Boolean(this.§'%K§ & §#$d§);
      }
      
      private function §7%r§() : Boolean
      {
         return Boolean(this.§^$m§ & §;%U§) != Boolean(this.§^%F§ & §1!P§);
      }
      
      private function parse() : void
      {
         this.commandId = this.§^%F§ & §=&H§;
         this.length = this.§'%K§ & §8'§;
      }
      
      public function §2$t§(param1:IDataOutput) : void
      {
         if(this.§>!p§())
         {
            this.§5$%§();
            this.§+#V§(param1);
            return;
         }
         throw new ArgumentError(§0"m§);
      }
      
      private function §>!p§() : Boolean
      {
         return this.commandId <= §!%u§ && this.commandId >= 0 && this.length <= §@&"§ && this.length >= 0;
      }
      
      private function §5$%§() : void
      {
         this.§^%F§ = this.commandId;
         this.§'%K§ = this.length;
         this.§^$m§ = §2$P§;
         if(Math.random() > 0.5)
         {
            this.§^$m§ |= 128;
         }
         else
         {
            this.§^%F§ |= 32768;
         }
         if(Math.random() > 0.5)
         {
            this.§^$m§ |= 32;
         }
         else
         {
            this.§'%K§ |= 1073741824;
         }
         if(Math.random() > 0.5)
         {
            this.§^$m§ |= 8;
         }
         else
         {
            this.§'%K§ |= 2147483648;
         }
      }
      
      private function §+#V§(param1:IDataOutput) : void
      {
         param1.writeByte(this.§^$m§);
         param1.writeShort(this.§^%F§);
         param1.writeInt(this.§'%K§);
      }
      
      public function getCommandId() : uint
      {
         return this.commandId;
      }
      
      public function §@&I§(param1:uint) : void
      {
         this.commandId = param1;
      }
      
      public function §9"7§() : uint
      {
         return this.length;
      }
      
      public function §<!§(param1:uint) : void
      {
         this.length = param1;
      }
      
      public function §0x§() : Boolean
      {
         return this.§&% §;
      }
   }
}

