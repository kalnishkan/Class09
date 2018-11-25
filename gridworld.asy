settings.outformat = "pdf";
unitsize(1cm);
defaultpen(Helvetica("m","n"));
defaultpen(fontsize(11pt));

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
path arrowRLtopleft = (sideSq+arrowHalfLength,sideSq+sideSq/2-arrowOffCentre) -- (sideSq-arrowHalfLength,sideSq+sideSq/2-arrowOffCentre);
draw(arrowRLtopleft,arrow = Arrow(HookHead),L = Label("0",align=SE));

path arrowLRtopright = (2*sideSq-arrowHalfLength,sideSq+sideSq/2+arrowOffCentre) -- (2*sideSq+arrowHalfLength,sideSq+sideSq/2+arrowOffCentre);
draw(arrowLRtopright,arrow = Arrow(HookHead),L = Label("100",align=NW));

path arrowBTleft = (sideSq/2-arrowOffCentre,sideSq-arrowHalfLength) -- (sideSq/2-arrowOffCentre,sideSq+arrowHalfLength);
draw(arrowBTleft,arrow = Arrow(HookHead),L = Label("0",align=SW));
path arrowTBleft = (sideSq/2+arrowOffCentre,sideSq+arrowHalfLength) -- (sideSq/2+arrowOffCentre,sideSq-arrowHalfLength);
draw(arrowTBleft,arrow = Arrow(HookHead),L = Label("0",align=NE));

path arrowLRbottomleft = (sideSq-arrowHalfLength,sideSq/2+arrowOffCentre) -- (sideSq+arrowHalfLength,sideSq/2+arrowOffCentre);
draw(arrowLRbottomleft,arrow = Arrow(HookHead),L = Label("0",align=NW));
path arrowRLbottomleft = (sideSq+arrowHalfLength,sideSq/2-arrowOffCentre) -- (sideSq-arrowHalfLength,sideSq/2-arrowOffCentre);
draw(arrowRLbottomleft,arrow = Arrow(HookHead),L = Label("0",align=SE));


path arrowLRbottomright = (2*sideSq-arrowHalfLength,sideSq/2+arrowOffCentre) -- (2*sideSq+arrowHalfLength,sideSq/2+arrowOffCentre);
draw(arrowLRbottomright,arrow = Arrow(HookHead),L = Label("0",align=NW));
path arrowRLbottomright = (2*sideSq+arrowHalfLength,sideSq/2-arrowOffCentre) -- (2*sideSq-arrowHalfLength,sideSq/2-arrowOffCentre);
draw(arrowRLbottomright,arrow = Arrow(HookHead),L = Label("0",align=SE));


path arrowBTcentre = (sideSq+sideSq/2-arrowOffCentre,sideSq-arrowHalfLength) -- (sideSq+sideSq/2-arrowOffCentre,sideSq+arrowHalfLength);
draw(arrowBTcentre,arrow = Arrow(HookHead),L = Label("0",align=SW));
path arrowTBcentre = (sideSq+sideSq/2+arrowOffCentre,sideSq+arrowHalfLength) -- (sideSq+sideSq/2+arrowOffCentre,sideSq-arrowHalfLength);
draw(arrowTBcentre,arrow = Arrow(HookHead),L = Label("0",align=NE));

path arrowBTright = (2*sideSq+sideSq/2-arrowOffCentre,sideSq-arrowHalfLength) -- (2*sideSq+sideSq/2-arrowOffCentre,sideSq+arrowHalfLength);
draw(arrowBTright,arrow = Arrow(HookHead),L = Label("100",align=SE));

real r = 0.3;
real toRight = r;

path selfCircle = (2.5*sideSq - r + toRight, 1.5*sideSq) .. (2.5*sideSq + toRight, 1.5*sideSq+r) .. (2.5*sideSq + r + toRight, 1.5*sideSq) .. (2.5*sideSq + toRight, 1.5*sideSq-r) .. (2.5*sideSq - r + toRight, 1.5*sideSq) ;

draw(selfCircle,arrow = Arrow(HookHead),L = Label("0",align=W));
