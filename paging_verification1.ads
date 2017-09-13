
with Interfaces; use Interfaces;
with Page_Tables; use Page_Tables;

package Paging_Verification1
with SPARK_Mode
is
   type Word64 is mod 2**64;
   for Word64'Size use 64;

   type Byte is mod 2**8;
   for Byte'Size use 8;

   subtype Subject_Id_Type is Natural range 0 .. 7;

    Bit_51_12 : constant := 16#000f_ffff_ffff_f000#;
    Bit_47_39 : constant := 16#0000_ff80_0000_0000#;
    Bit_38_30 : constant := 16#0000_007f_c000_0000#;
    Bit_29_21 : constant := 16#0000_0000_3fe0_0000#;
    Bit_20_12 : constant := 16#0000_0000_001f_f000#;
    Bit_11_0  : constant := 16#0000_0000_0000_0fff#;

    PML4E : Word64 := 0;
    PDPTE : Word64 := 0;
    PDE   : Word64 := 0;
    PTE   : Word64 := 0;
   -- Data  : Word64 ;

    PML4E_Address : Unsigned_64;
    PDPTE_Address : Unsigned_64;
    PDE_Address   : Unsigned_64;
    PTE_Address   : Unsigned_64;
    Data_Address  : Unsigned_64;


   function Get_Memory64(Address : Unsigned_64; Subject_ID : Subject_Id_Type ) return Unsigned_64;

   function find_offset(value : Unsigned_64; Base : Unsigned_64) return Unsigned_64;

   function Get_CR3(Subject_ID :Subject_Id_Type) return Unsigned_64;

   function Translate_Address(i : Unsigned_64;  Subject_ID : Subject_Id_Type) return Unsigned_64;

   function Is_Valid_Address(i : Unsigned_64;  Subject_ID : Subject_Id_Type) return Boolean;

   procedure Do_Translation;

end Paging_Verification1;
