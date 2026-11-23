input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(10) 
save u,p;
path p[];
u:=1.4cm;

z.l0=origin;
z.m0=(0,1)*u;
z.l1=(6,0)*u;
z.m1=z.m0+z.l1;
z.eps=(0,.1)*u;

draw z.l0--z.l1;
draw z.m0--z.m1;
draw z.l0+z.eps{(1,.02)}..{(1,.02)}z.m1-z.eps;
draw z.m0-z.eps{(1,-.02)}..{(1,-.02)}z.l1+z.eps;



label.bot (btex $\ell$ etex,  .5[z.l0,z.l1]);
label.top (btex $m$ etex,  .5[z.m0,z.m1]);
label.rt (btex $\lambda^+$ and $\cev{u}$ etex,  z.l1);
label.lft (btex $-\vec u$ and $\lambda^-$ etex,  z.l0);
label.rt (btex $\mu^+$ and $\vec{u}$ etex,  z.m1);
label.lft (btex ${-}\cev u$ and $\mu^-$ etex,  z.m0);

endfig;

beginfig(20)
save u,p;
path p[];
u:=.5cm;

z.a0=(0,3)*u;
z.a1=z.a0 rotated 70;
z.a2=z.a0 rotated 148;
z.a3=z.a0 rotated -140;
z.a4=z.a0 rotated -80;

z.b1=.45[z.a0,z.a1]+.2*z.a3;
z.b2=.5[z.a1,z.a2]+.2*z.a4;
z.b3=.55[z.a2,z.a3]+.2*z.a0;
z.b4=.4[z.a3,z.a4]+.2*z.a1;
z.b0=.45[z.a4,z.a0]+.2*z.a2;

z.shift=(12,0)*u;

p10= z.b0--z.a0--z.b1--z.a1--z.b2--z.a2--z.b3--z.a3--z.b4--z.a4--cycle;

p11= 1.2[z.a0,z.b0]--z.a0--1.2[z.a0,z.b1];
p12= 1.2[z.a1,z.b1]--z.a1--1.2[z.a1,z.b2];
p13= 1.2[z.a2,z.b2]--z.a2--1.2[z.a2,z.b3];
p14= 1.2[z.a3,z.b3]--z.a3--1.2[z.a3,z.b4];
p15= 1.2[z.a4,z.b4]--z.a4--1.2[z.a4,z.b0];

p21= 1.2[z.a0,z.b0]...z.b0...z.a0...z.b1..1.2[z.a0,z.b1];
p22= 1.2[z.a1,z.b1]...z.b1...z.a1...z.b2...1.2[z.a1,z.b2];
p23= 1.2[z.a2,z.b2]...z.b2..z.a2...z.b3...1.2[z.a2,z.b3];
p24= 1.2[z.a3,z.b3]...z.b3...z.a3...z.b4...1.2[z.a3,z.b4];
p25= 1.2[z.a4,z.b4]...z.b4...z.a4...z.b0...1.2[z.a4,z.b0];

p30=
subpath (1,3) of p21--
subpath (1,3) of p22--
subpath (1,3) of p23--
subpath (1,3) of p24--
subpath (1,3) of p25--cycle;

p40=z.a0..tension 2..z.a1..tension 2..z.a2..tension 2..z.a3..tension 2..z.a4..tension 2..cycle;
p41=p40 scaled 1.4 shifted z.shift;

fill p10 withcolor .8;
fill p30 shifted z.shift withcolor .8;

draw p11;
draw p12;
draw p13;
draw p14;
draw p15;

draw p21 shifted z.shift;
draw p22 shifted z.shift;
draw p23 shifted z.shift;
draw p24 shifted z.shift;
draw p25 shifted z.shift;

draw p41;

label (btex $P$ etex,  origin);
label (btex $Q$ etex,  z.shift);
label (btex {\Huge $\approx$} etex,  .5*z.shift);

label.top (btex $r_1$ etex,  z.a0);
label.lft (btex $r_2$ etex,  z.a1);
label.rt (btex $r_n$ etex,  z.a4);
label.bot (btex $\cdots$ etex,  .5[z.a2,z.a3]);
label.top (btex $s_1$ etex,  z.a0 shifted z.shift);
label.lft (btex $s_2$ etex,  z.a1 shifted z.shift);
label.rt (btex $s_n$ etex,  z.a4 shifted z.shift);
label.bot (btex $\cdots$ etex,  .5[z.a2,z.a3] shifted z.shift);
label.urt (btex $\gamma$ etex, point 4.6 of p41);

endfig;

beginfig(30)
save u,p;
path p[];
u:=1.4cm;

z.l0=origin;
z.m0=(0,1)*u;
z.l1=(6,0)*u;
z.m1=z.m0+z.l1;
z.eps=(0,.1)*u;

z.v=z.m0+2*z.eps;
z.w=z.m1+2*z.eps;

p1=z.v..(.1)[z.m0,z.m1]{(1,-.1)}..(.3)[z.l0,z.l1]+1*z.eps{(1,-.1)}..(.5)[z.l0,z.l1]+.5*z.eps..(.7)[z.l0,z.l1]+1*z.eps{(1,.1)}..(.9)[z.m0,z.m1]{(1,.1)}..z.w;

p2=point 1.8 of p1 + z.eps--point 1.8 of p1 - z.eps;
p3=point 4.1 of p1 + z.eps--point 4.1 of p1 - z.eps;

draw z.l0--z.l1;
draw z.m0--z.m1;
draw p2 penbold withcolor .5;
draw p3 penbold withcolor .5;
draw p1;






label.top (btex $I$ etex,  point 0 of p2);
label.top (btex $J$ etex,  point 0 of p3);
label.bot (btex $\ell$ etex,  .5[z.l0,z.l1]);
label.top (btex $m$ etex,  .5[z.m0,z.m1]);
label.rt (btex $\lambda^+$ and $\cev{u}$ etex,  z.l1);
label.lft (btex $-\vec u$ and $\lambda^-$ etex,  z.l0);
label.rt (btex $\mu^+$ and $\vec{u}$ etex,  z.m1);
label.lft (btex ${-}\cev u$ and $\mu^-$ etex,  z.m0);
label.ulft (btex $v$ etex,  z.v);
label.urt (btex $w$ etex,  z.w);
endfig;

beginfig(40)
save u,p;
path p[];
u:=1.4cm;

z.o=origin;
z.r=(1.4,0)*u;
z.slope=(.6,.4)*u;
z.sslope=z.slope xscaled -1;

p8=z.o..z.slope{z.slope}..z.r{(0,-1)}..{z.sslope}-z.sslope..z.o..{z.sslope}z.sslope..-z.r{(0,-1)}..-z.slope{z.slope}..cycle;

p1=(0,-.7)*u--(0,.7)*u;

drawarrow subpath (0,.9) of p1 shifted ((1.2,0)*u) withcolor .5;
draw subpath (.9,1) of p1 shifted ((1.2,0)*u) withcolor .5;
drawarrow subpath (0,.9) of p1 shifted ((.4,0)*u) withcolor .5;
draw subpath (.9,1) of p1 shifted ((.4,0)*u) withcolor .5;
drawarrow subpath (0,.9) of p1 shifted ((-1.2,0)*u) withcolor .5;
draw subpath (.9,1) of p1 shifted ((-1.2,0)*u) withcolor .5;
drawarrow subpath (0,.9) of p1 shifted ((-.4,0)*u) withcolor .5;
draw subpath (.9,1) of p1 shifted ((-.4,0)*u) withcolor .5;

drawarrow subpath (0,1.3) of p8;
drawarrow subpath (1.3,2.7) of p8;
drawarrow subpath (2.7,5.3) of p8;
drawarrow subpath (5.3,6.7) of p8;
draw subpath (6.7,8) of p8;

endfig;

end
