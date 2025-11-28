# Component Naming Conventions:

```COMPONENTNAME_#BIT_#IN_#REG... etc```

Each component starts with a descriptive name, followed by underscores to indicate their scale:
* \#BIT refers to input width - a second \#BIT will refer to output width
* \#IN refers to number of inputs (This can be confused with input width. Though they are similar, they are not the same)
* \#REG, \#MUX, etc. refers to number of said component within the 

## Naming Convention Examples:
* An extender that extends a 16 bit input to a 32 bit output:
```
extender_16bit_32bit.vhd
```

* A single register file with 4 32 bit registers and 2 read inputs:
```
regfile_32bit_2in_4reg.vhd
```

* Any generic used should replace the # with the generic name:
```
extender_Nbit_Mbit.vhd
```

Within this extender component, the generic referring to input width would be N, and output width would be M

## Port naming:
* Inputs:
```
i_INPUTNAME
```

* Control INPUT:
```
c_CONTROLNAME
```

* Outputs:
```
o_OUTPUTNAME
```

* Signals:
```
s_SIGNALNAME
```

* Generate Labels:
```
g_GENERATENAME
```

### Standard ports names:
* ```i_A```, ```i_B``` -> Data in ports
* ```i_C``` -> carry input
* ```c_S``` -> select (for muxes, etc)
* ```o_D``` -> data output
* ```o_C``` -> carry output
* ```o_OF``` -> overflow output
