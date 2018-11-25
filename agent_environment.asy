settings.outformat = "pdf";
//size(5cm);
//defaultpen(font("OT1","cmss","m","n"));
unitsize(1cm);
defaultpen(Helvetica("m","n"));
defaultpen(fontsize(11pt));

real height = 1.5;

real agentWidth = 1.5;

path agent = (0,0) -- (0,height) -- (agentWidth,height) -- (agentWidth,0) -- cycle;
draw(agent);
real offset = 0.1;
label("Agent",(offset,height/2),align=E);

real gap = 2;
real envWidth = 2.6;
real envLeft = agentWidth+gap;

path environment = (envLeft,0) -- (envLeft,height) -- (envLeft+envWidth,height) -- (envLeft+envWidth,0) -- cycle;
draw(environment);
label("Environment",(envLeft+offset,height*0.75),align=E);

path ar1 = (agentWidth,height*0.7) --(envLeft,height*0.7);
Label action = Label("action",align=N);
path ar2 = (envLeft,height*0.2) -- (agentWidth,height*0.2);
Label reward = Label("reward",align=N);

draw(ar1,arrow = Arrow(HookHead),L=action);
draw(ar2,arrow = Arrow(HookHead),L=reward);

label("state",(envLeft+offset+0.6,height*0.25),align=E);
real r = 0.3;
draw(circle((envLeft+r+offset+1.7,r+offset),r),L=Label("s",align=(1.8,0)));
