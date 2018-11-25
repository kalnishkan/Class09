settings.outformat = "pdf";
unitsize(1cm);
defaultpen(Helvetica("m","n"));
defaultpen(fontsize(10pt));

real sideSq = 1.5;

path outerWall = (0,0) -- (0,2*sideSq) -- (3*sideSq,2*sideSq) -- (3*sideSq,0) -- cycle;
draw(outerWall);

path verticalPartition1 = (sideSq,0) -- (sideSq,2*sideSq);
path verticalPartition2 = (2*sideSq,0) -- (2*sideSq,2*sideSq);
path horizontalPartition = (0,sideSq) -- (3*sideSq,sideSq);
draw(verticalPartition1);
draw(verticalPartition2);
draw(horizontalPartition);

real arrowHalfLength = 0.4;
real arrowOffCentre = 0.1;

path arrowLRtopleft = (sideSq-arrowHalfLength,sideSq+sideSq/2+arrowOffCentre) -- (sideSq+arrowHalfLength,sideSq+sideSq/2+arrowOffCentre);
draw(arrowLRtopleft,arrow = Arrow(HookHead),L = Label("0",align=NW));


path arrowLRtopright = (2*sideSq-arrowHalfLength,sideSq+sideSq/2+arrowOffCentre) -- (2*sideSq+arrowHalfLength,sideSq+sideSq/2+arrowOffCentre);
draw(arrowLRtopright,arrow = Arrow(HookHead),L = Label("100",align=NW));

path arrowLRbottomleft = (sideSq-arrowHalfLength,sideSq/2+arrowOffCentre) -- (sideSq+arrowHalfLength,sideSq/2+arrowOffCentre);
draw(arrowLRbottomleft,arrow = Arrow(HookHead),L = Label("0",align=NW));

path arrowLRbottomright = (2*sideSq-arrowHalfLength,sideSq/2+arrowOffCentre) -- (2*sideSq+arrowHalfLength,sideSq/2+arrowOffCentre);
draw(arrowLRbottomright,arrow = Arrow(HookHead),L = Label("0",align=NW));

path arrowBTright = (2*sideSq+sideSq/2-arrowOffCentre,sideSq-arrowHalfLength) -- (2*sideSq+sideSq/2-arrowOffCentre,sideSq+arrowHalfLength);
draw(arrowBTright,arrow = Arrow(HookHead),L = Label("100",align=SE));

real r = 0.4;
real toRight = r-0.2;
real toTop = 0.2;

path selfCircle = (2.5*sideSq - r + toRight, 1.5*sideSq+toTop) .. (2.5*sideSq + toRight, 1.5*sideSq+r+toTop) .. (2.5*sideSq + r + toRight, 1.5*sideSq+toTop) .. (2.5*sideSq + toRight, 1.5*sideSq-r+toTop) .. (2.5*sideSq - r + toRight, 1.5*sideSq+toTop) ;

draw(selfCircle,arrow = Arrow(HookHead),L = Label("0",align=W));

label("$V^*=90$",(0,sideSq),align=NE);
label("$V^*=100$",(sideSq-0.05,sideSq),align=NE);

label("$V^*=81$",(0,0),align=NE);
label("$V^*=90$",(sideSq-0.05,0),align=NE);
label("$V^*=100$",(2*sideSq-0.05,0),align=NE);
