
---new function is_valid_Address added

with Interfaces; use Interfaces;
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
with Page_Tables; use Page_Tables;


package body Paging_Verification1
with SPARK_Mode
is

   -------------------------------------------------------------
   function Get_Memory64(Address : Unsigned_64; Subject_ID : Subject_Id_Type ) return Unsigned_64
   is
      Value : Unsigned_64 := 0;
      Address_tau0         : tau0_page_table_size_type;
      Address_vt           : vt_page_table_size_type;
      Address_nic_sm       : nic_sm_page_table_size_type;
      Address_storage_sm   : storage_sm_page_table_size_type;
      Address_time         : time_page_table_size_type;
      Address_nic_linux    : nic_linux_page_table_size_type;
      Address_storage_linux: storage_linux_page_table_size_type;
      Address_dbgserver    : dbgserver_page_table_size_type;

   begin
      case Subject_ID is
         when 0 =>
            Address_tau0 := tau0_page_table_size_type(Address);
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(tau0_page_table(Address_tau0 + 7)), Amount => 56 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(tau0_page_table(Address_tau0 + 6)), Amount => 48 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(tau0_page_table(Address_tau0 + 5)), Amount => 40 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(tau0_page_table(Address_tau0 + 4)), Amount => 32 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(tau0_page_table(Address_tau0 + 3)), Amount => 24 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(tau0_page_table(Address_tau0 + 2)), Amount => 16 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(tau0_page_table(Address_tau0 + 1)), Amount => 8  )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(tau0_page_table(Address_tau0 + 0)), Amount => 0  )));

         when 1 =>
            Address_vt := vt_page_table_size_type(Address);
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(vt_page_table(Address_vt + 7)), Amount => 56 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(vt_page_table(Address_vt + 6)), Amount => 48 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(vt_page_table(Address_vt + 5)), Amount => 40 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(vt_page_table(Address_vt + 4)), Amount => 32 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(vt_page_table(Address_vt + 3)), Amount => 24 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(vt_page_table(Address_vt + 2)), Amount => 16 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(vt_page_table(Address_vt + 1)), Amount => 8  )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(vt_page_table(Address_vt + 0)), Amount => 0  )));

         when 2 =>
            Address_nic_sm := nic_sm_page_table_size_type(Address);
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_sm_page_table(Address_nic_sm + 7)), Amount => 56 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_sm_page_table(Address_nic_sm + 6)), Amount => 48 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_sm_page_table(Address_nic_sm + 5)), Amount => 40 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_sm_page_table(Address_nic_sm + 4)), Amount => 32 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_sm_page_table(Address_nic_sm + 3)), Amount => 24 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_sm_page_table(Address_nic_sm + 2)), Amount => 16 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_sm_page_table(Address_nic_sm + 1)), Amount => 8  )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_sm_page_table(Address_nic_sm + 0)), Amount => 0  )));

        when 3 =>
            Address_storage_sm := storage_sm_page_table_size_type(Address);
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_sm_page_table(Address_storage_sm + 7)), Amount => 56 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_sm_page_table(Address_storage_sm + 6)), Amount => 48 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_sm_page_table(Address_storage_sm + 5)), Amount => 40 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_sm_page_table(Address_storage_sm + 4)), Amount => 32 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_sm_page_table(Address_storage_sm + 3)), Amount => 24 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_sm_page_table(Address_storage_sm + 2)), Amount => 16 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_sm_page_table(Address_storage_sm + 1)), Amount => 8  )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_sm_page_table(Address_storage_sm + 0)), Amount => 0  )));

         when 4 =>
            Address_time:= time_page_table_size_type(Address);
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(time_page_table(Address_time + 7)), Amount => 56 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(time_page_table(Address_time + 6)), Amount => 48 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(time_page_table(Address_time + 5)), Amount => 40 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(time_page_table(Address_time + 4)), Amount => 32 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(time_page_table(Address_time + 3)), Amount => 24 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(time_page_table(Address_time + 2)), Amount => 16 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(time_page_table(Address_time + 1)), Amount => 8  )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(time_page_table(Address_time + 0)), Amount => 0  )));

         when 5 =>
            Address_nic_linux := nic_linux_page_table_size_type(Address);
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_linux_page_table(Address_nic_linux + 7)), Amount => 56 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_linux_page_table(Address_nic_linux + 6)), Amount => 48 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_linux_page_table(Address_nic_linux + 5)), Amount => 40 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_linux_page_table(Address_nic_linux + 4)), Amount => 32 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_linux_page_table(Address_nic_linux + 3)), Amount => 24 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_linux_page_table(Address_nic_linux + 2)), Amount => 16 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_linux_page_table(Address_nic_linux + 1)), Amount => 8  )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(nic_linux_page_table(Address_nic_linux + 0)), Amount => 0  )));

        when 6 =>
            Address_storage_linux := storage_linux_page_table_size_type(Address);
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_linux_page_table(Address_storage_linux + 7)), Amount => 56 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_linux_page_table(Address_storage_linux + 6)), Amount => 48 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_linux_page_table(Address_storage_linux + 5)), Amount => 40 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_linux_page_table(Address_storage_linux + 4)), Amount => 32 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_linux_page_table(Address_storage_linux + 3)), Amount => 24 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_linux_page_table(Address_storage_linux + 2)), Amount => 16 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_linux_page_table(Address_storage_linux + 1)), Amount => 8  )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(storage_linux_page_table(Address_storage_linux + 0)), Amount => 0  )));

        when 7 =>
            Address_dbgserver := dbgserver_page_table_size_type(Address);
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(dbgserver_page_table(Address_dbgserver + 7)), Amount => 56 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(dbgserver_page_table(Address_dbgserver + 6)), Amount => 48 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(dbgserver_page_table(Address_dbgserver + 5)), Amount => 40 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(dbgserver_page_table(Address_dbgserver + 4)), Amount => 32 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(dbgserver_page_table(Address_dbgserver + 3)), Amount => 24 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(dbgserver_page_table(Address_dbgserver + 2)), Amount => 16 )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(dbgserver_page_table(Address_dbgserver + 1)), Amount => 8  )));
            Value := (Value) or ((Shift_Left(Value  => Unsigned_64(dbgserver_page_table(Address_dbgserver + 0)), Amount => 0  )));

      end case;

      return Value;

   end Get_Memory64;


   -------------------------------------------------------------------------


   function find_offset(value : Unsigned_64; Base : Unsigned_64) return Unsigned_64
   is
   begin
--        Put(value'Image);
--        Put(" ");
--        Put(Base'Image);
      return (value - Base);
   end find_offset;

   ---------------------------------------------------------------------------
   function Get_CR3(Subject_ID :Subject_Id_Type) return Unsigned_64
   is
   begin
      case Subject_ID is
       when 0 => return  16#00e4_d000# ;
       when 1 => return  16#00df_b000# ;
       when 2 => return  16#00dd_8000#   ;
       when 3 => return  16#00de_1000# ;
       when 4 => return  16#00de_a000# ;
       when 5 => return  16#00c4_001e# ;
       when 6 => return  16#00cc_c01e# ;
       when 7 => return  16#00df_3000#;
      end case;
   end Get_CR3;
   -----------------------------------------------------------------------

   function Translate_Address(i : Unsigned_64; Subject_ID : Subject_Id_Type) return Unsigned_64
   is
      CR3 : Unsigned_64;
   begin
      CR3 := Get_CR3(Subject_ID => Subject_ID);

      PML4E_Address := find_offset(value => ((CR3 and Bit_51_12)+
                                    (Shift_Right(Value  => Unsigned_64((i and Bit_47_39)),Amount => 36))),
                                   Base  => (CR3 and Bit_51_12));


      PML4E := Word64(Get_Memory64(Address    => (PML4E_Address),
                                   Subject_ID => Subject_ID));


      PDPTE_Address := find_offset(value => (Unsigned_64(Word64(PML4E) and Bit_51_12)+
                                     (Shift_Right(Value => Unsigned_64((i and Bit_38_30)),Amount => 27))),
                                   Base  => (CR3 and Bit_51_12));
      PDPTE := Word64(Get_Memory64(Address    => (PDPTE_Address) ,
                                   Subject_ID => Subject_ID));

      PDE_Address := find_offset(value => (Unsigned_64((Word64(PDPTE) and Bit_51_12))
                                      + (Shift_Right(Value => Unsigned_64((i and Bit_29_21)),Amount => 18 ))),
                                 Base  => (CR3 and Bit_51_12));
      PDE := Word64(Get_Memory64(Address    => (PDE_Address),
                                 Subject_ID => Subject_ID));

      PTE_Address :=find_offset(value => (Unsigned_64((Word64(PDE) and Bit_51_12))
                                      + (Shift_Right(Value => Unsigned_64((i and Bit_20_12)),Amount => 9 ))) ,
                                Base  => (CR3 and Bit_51_12));
      PTE := Word64(Get_Memory64(Address    => (PTE_Address),
                                 Subject_ID => Subject_ID ));

      Data_Address := Unsigned_64((Word64(PTE) and Bit_51_12)) + (Shift_Right(Value => Unsigned_64((i and Bit_11_0)),Amount => 0 ));

      return Unsigned_64(Data_Address);
   end Translate_Address;
 ---------------------------------------------------------------------------------

   function Is_Valid_Address(i : Unsigned_64; Subject_ID : Subject_Id_Type) return Boolean
   is
      Bit_0 : constant :=   16#0000_0000_0000_0001#;
      Present_Bit : Unsigned_64;
      CR3 : Unsigned_64;
   begin

      CR3 := Get_CR3(Subject_ID => Subject_ID);

      PML4E_Address := find_offset(value => ((CR3 and Bit_51_12)+
                                    (Shift_Right(Value  => Unsigned_64((i and Bit_47_39)),Amount => 36))),
                                   Base  => (CR3 and Bit_51_12));


      PML4E := Word64(Get_Memory64(Address    => (PML4E_Address),
                                   Subject_ID => Subject_ID));

      Present_Bit := Unsigned_64(PML4E) and Unsigned_64(Bit_0);
     -- Put(Present_Bit'Image);
      if(Present_Bit /= 1)then
         return False;
      end if;


      PDPTE_Address := find_offset(value => (Unsigned_64(Word64(PML4E) and Bit_51_12)+
                                     (Shift_Right(Value => Unsigned_64((i and Bit_38_30)),Amount => 27))),
                                   Base  => (CR3 and Bit_51_12));
      PDPTE := Word64(Get_Memory64(Address    => (PDPTE_Address) ,
                                   Subject_ID => Subject_ID));

      Present_Bit := Unsigned_64(PDPTE) and Unsigned_64(Bit_0);
      --Put(Present_Bit'Image);
      if(Present_Bit /= 1)then
         return False;
      end if;

      PDE_Address := find_offset(value => (Unsigned_64((Word64(PDPTE) and Bit_51_12))
                                      + (Shift_Right(Value => Unsigned_64((i and Bit_29_21)),Amount => 18 ))),
                                 Base  => (CR3 and Bit_51_12));
      PDE := Word64(Get_Memory64(Address    => (PDE_Address),
                                 Subject_ID => Subject_ID));

      Present_Bit := Unsigned_64(PDE) and Unsigned_64(Bit_0);
      --Put(Present_Bit'Image);
      if(Present_Bit /= 1)then
         return False;
      end if;

      PTE_Address :=find_offset(value => (Unsigned_64((Word64(PDE) and Bit_51_12))
                                      + (Shift_Right(Value => Unsigned_64((i and Bit_20_12)),Amount => 9 ))) ,
                                Base  => (CR3 and Bit_51_12));
      PTE := Word64(Get_Memory64(Address    => (PTE_Address),
                                 Subject_ID => Subject_ID ));

      Present_Bit := Unsigned_64(PTE) and Unsigned_64(Bit_0);
      --Put(Present_Bit'Image);
      if(Present_Bit /= 1)then
         return False;
      end if;

     -- Data_Address := Unsigned_64((Word64(PTE) and Bit_51_12)) + (Shift_Right(Value => Unsigned_64((i and Bit_11_0)),Amount => 0 ));

      return True;

   end Is_Valid_Address;



   ---------------------------------------------------------------------------------
  procedure Do_Translation
  is

   Physical_Address : Unsigned_64;

   package Unsigned_64_IO is new Ada.Text_IO.Modular_IO (Interfaces.unsigned_64);

   Boolean_Temp : Boolean;
   Logical_Address : Unsigned_64;
  -- CR3             : Unsigned_64;
   Subject_ID      : Subject_Id_Type;
  begin

   ---------------------------------------
   -- Subject_ID  Subject_Name         CR3          Address_Name     Address_LA           Address_PA
   --    0          Tau0           16#00e4_d000#     sys_interface    16#001f_f000#        16#00ed_9000#
   --    1          VT             16#00df_b000#     vt|timer         16#000e_0001_0000#   16#2106_4000#
   --    2          nic_sm         16#00dd_8000#     nic_linux|state  16#001e_0000#        16#2105_7000#
   --    3          storage_sm     16#00de_1000#     storage_sm|timer 16#000e_0001_0000#   16#2105_e000#
   --    4          Time           16#00de_a000#     time|timer       16#000e_0001_0000#   16#2106_2000#
   --    5          nic_linux      16#00c4_001e#     nic_linux|zp     16#0000#             16#00e5_7000#
   --    6          storage_linux  16#00cc_c01e#     initramfs        16#9000_0000#        16#0014_0000#
   --    7          dbgserver      16#00df_3000#     dbgserver|sinfo  16#000e_0000_0000#   16#00e0_3000#
   ----------------------------

   Logical_Address := 16#9000_0000#;
   Subject_ID      := 6;

   Boolean_Temp := Is_Valid_Address(i          => Logical_Address  ,
                                    Subject_ID =>Subject_ID);


   Physical_Address := Translate_Address(i          => Logical_Address ,
                                         Subject_ID => Subject_ID);


--     Unsigned_64_IO.Put (  Item => Physical_Address,
--                           Width => 16,
--                           Base => 16);

   end Do_Translation;


end Paging_Verification1;
