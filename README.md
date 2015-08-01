# packer-esxi
Packer templates for Vagrant boxes with VMware ESXi 5.5+6.0

```
sudo packer build esxi-60ga.json
```

In preparation Fusion, and Packer should have been installed. On the machine
for developing and testing beyond OSX 10.10 following versions were used:

* VMware Fusion 7.1.2
* Packer 0.8.1

Some isos should be downloaded and placed in the *iso* folder.

* VMware-VMvisor-Installer-5.5.0-1331820.x86_64.iso
* VMware-VMvisor-Installer-5.5.0.update01-1623387.x86_64.iso
* VMware-VMvisor-Installer-5.5.0.update02-2068190.x86_64.iso
* VMware-VMvisor-Installer-6.0.0-2494585.x86_64.iso

Built boxes come out in the *vmware* folder

The following boxes with VMware ESXi 5.5 and 6.0 can be built:

| ESXi Box        | Image Profile         | Date       | Build
| --------------- | --------------------- | ---------- | -------
| esxi600-2809209 | ESXi600-20150704001   | 2015-07-07 | 2809209
| esxi600-2715440 | ESXi600-20150504001   | 2015-05-14 | 2715440
| esxi600-2615704 | ESXi600-20150404001   | 2015-04-09 | 2615704
| **esxi60ga**    | **ESXi 6.0 GA**       | 2015-03-12 | 2494585
| esxi550-2718055 | ESXi550-20150504001   | 2015-05-08 | 2718055
| esxi550-2638301 | ESXi550-20150402001   | 2015-04-07 | 2638301
| esxi550-2456374 | ESXi550-20150204001   | 2015-02-05 | 2456374
| esxi550-2403361 | ESXi550-20150104001   | 2015-01-27 | 2403361
| esxi550-2302651 | ESXi550-20141204001   | 2014-12-02 | 2302651
| esxi550-2143827 | ESXi550-20141004001   | 2014-10-15 | 2143827
| **esxi55u2**    | **ESXi 5.5 Update 2** | 2014-09-09 | 2068190
| esxi550-1892794 | ESXi550-20140704001   | 2014-07-01 | 1892794
| esxi550-1881737 | ESXi550-20140604001   | 2014-06-10 | 1881737
| esxi550-1746018 | ESXi550-20140404001   | 2014-04-19 | 1746018
| **esxi55u1**    | **ESXi 5.5 Update 1** | 2014-03-11 | 1623387
| esxi550-1474528 | ESXi550-20131204001   | 2013-12-22 | 1474528
| **esxi55ga**    | **ESXi 5.5 GA**       | 2013-09-22 | 1331820

All boxes can be built with *bin/buildall.sh* taking some hours.
