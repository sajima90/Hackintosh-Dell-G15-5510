/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (32-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of G:/EFI/OC/ACPI/SSDT-NVME-DISABLE.aml, Sun Aug  4 14:15:49 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AD (173)
 *     Revision         0x02
 *     Checksum         0xE1
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "spoof"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "spoof", 0x00000000)
{
    External (_SB_.PCI0.RP21.PXSX, DeviceObj)

    Method (_SB.PCI0.RP21.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((!Arg2 || !_OSI ("Darwin")))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x0A)
        {
            "name", 
            Buffer (0x0A)
            {
                "#nvme ssd"
            }, 

            "IOName", 
            "#nvme ssd", 
            "class-code", 
            Buffer (0x04)
            {
                 0xFF, 0xFF, 0xFF, 0xFF                           // ....
            }
        })
    }
}

