v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 -220 610 -220 { lab=#net1}
N 560 -220 560 -190 { lab=#net1}
N 560 -130 720 -130 { lab=0}
N 650 -220 720 -220 { lab=0}
N 720 -220 720 -130 { lab=0}
N 650 -470 650 -440 { lab=0}
N 650 -320 650 -250 { lab=E1}
C {devices/code_shown.sym} 30 -640 0 0 {name=NGSPICE
only_toplevel=true
value=".lib \\"/home/schippes/sky130_fd_pr/models/sky130.lib.spice\\" tt
** contains only tt corner, loads faster
* .lib /home/schippes/sky130_fd_pr/models/sky130.lib_stefan_tt.spice tt

* temporary fix: some model equations use temp instead of the true
* ngspice temperature variable, 'temper'
.param temp=27

.control
dc i0 5n 5u 0.05u
plot vc1#branch / vb1#branch
plot e1

.endc
" }
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {sky130_fd_pr/pnp_05v5.sym} 630 -220 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {devices/ammeter.sym} 650 -160 0 0 {name=Vc1 net_name=true}
C {devices/ammeter.sym} 560 -160 0 0 {name=Vb1 net_name=true}
C {devices/lab_pin.sym} 720 -130 0 1 {name=p3 lab=0}
C {devices/lab_pin.sym} 650 -280 0 0 {name=p4 lab=E1}
C {devices/isource.sym} 650 -410 0 0 {name=I0 value=0}
C {devices/lab_pin.sym} 650 -470 0 0 {name=p1 lab=0}
C {devices/ammeter.sym} 650 -350 0 0 {name=Ve1 net_name=true}
