// In config ACPI, _Q13 to XQ13(TP-FnF4)
// Find:     5F 51 31 33
// Replace:  58 51 31 33
//
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "FnF4", 0)
{
#endif
    External(_SB.PCI0.LPC.EC, DeviceObj)
    External(_SB.PCI0.LPC.EC.XQ13, MethodObj)
    External(_SB.PCI9.FNOK, IntObj)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q13, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                \_SB.PCI9.FNOK =1
            }
            \_SB.PCI0.LPC.EC.XQ13()
        }
    } 
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF