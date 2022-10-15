import qsharp
from HostPython import InvioOO
from HostPython import InvioOI
from HostPython import InvioIO
from HostPython import InvioII


print('Alice sta inviando i bit 00')
print('I bit ricevuti da Bob sono '+(str(InvioOO.simulate()))+'\n')

print('Alice sta inviando i bit 01')
print('I bit ricevuti da Bob sono '+(str(InvioOI.simulate()))+'\n')

print('Alice sta inviando i bit 10')
print('I bit ricevuti da Bob sono '+(str(InvioIO.simulate()))+'\n')

print('Alice sta inviando i bit 11')
print('I bit ricevuti da Bob sono '+(str(InvioII.simulate()))+'\n')
