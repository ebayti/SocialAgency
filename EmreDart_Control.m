%% Emre Agency Control Script
% 6 trial!

cgloadlib %load cogent library
cogstd('spriority','high') %sets prirority to high
clc
t0=time;
t1=time;

labsetup=1; %1=Setup Lab; 0=PC&Mouse

%% Data
load('EmreData.mat')
% EmreData={}; %create a cell for the first time, but I will comment here and use load() funct avoid overwriting.
ID=input('Enter participant ID\n');

if length(EmreData)~=0
	ParticipantID=length(EmreData)+1;
else
	ParticipantID=1;
end
EmreData{ParticipantID}.ID=ID;
%% Resolution
reso= input('Please select an available display resolution; \n1: 640 x 480 \n2: 800 x 600 \n3: 1024 x 768 \n4: 1152 x 864 \n5: 1280 x 1024 \n6: 1600 x 1200 \n7: 1600 x 900 \n8: 1366 x 768  \n9: 1920 x 1080  \n\n:');
pxs=[640,480; 800,600; 1024, 768; 1152, 864; 1280, 1024; 1600, 1200;  1600,900; 1366, 768; 1920,1080; ]; %avaliable disply res as 9x2
%% DartBoard
cgopen(5,0,0,0)
%hidecursor
cgmakesprite(1,220,220,0,0,0) %defines the first sprite
cgsetsprite(1)
cgpencol([0,0,1])
cgellipse(0,0,210,210,'f')
cgpencol([1,1,1])
cgellipse(0,0,200,200,'f')
cgpencol([0.4,0.4,0.4])
cgellipse(0,0,180,180,'f')
cgpencol([1,1,1])
cgellipse(0,0,160,160,'f')
cgpencol([0.4,0.4,0.4])
cgellipse(0,0,140,140,'f')
cgpencol([1,1,1])
cgellipse(0,0,120,120,'f')
cgpencol([0.4,0.4,0.4])
cgellipse(0,0,100,100,'f')
cgpencol([1,1,1])
cgellipse(0,0,80,80,'f')
cgpencol([0.4,0.4,0.4])
cgellipse(0,0,60,60,'f')
cgpencol([1,1,1])
cgellipse(0,0,40,40,'f')
cgpencol([1,0,0])
cgellipse(0,0,20,20,'f')
cgtrncol(1,'b')
cgsetsprite(0)
cgflip(0,0,0)

%% Instructions
cgmouse(0,0)
bp=0; 
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Welcome to NoCo Lab Dart Game',0,200)
	cgtext('Your aim is to hit the bullseye',0,0)
	cgtext('You will play this game by moving your finger',0,-100)
	cgtext('Please move your finger to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end


tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Welcome to NoCo Lab Dart Game',0,200)
	cgtext('Your aim is to hit the bullseye',0,0)
	cgtext('You will play this game by moving your finger ',0,-100)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end

cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('First you will complete the training part',0,150)
	cgtext('Then you will play the single player mode',0,75)
	cgtext('Finally, you will play against the experimenter, try to beat him',0,0)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end


tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('First you will complete the training part',0,150)
	cgtext('Then you will play the single player mode',0,75)
	cgtext('Finally, you will play against the experimenter, try to beat him',0,0)
	cgtext('Please click the left mouse button to proceed',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end


%% Training v1
%%Training instructions
cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Training Phase 1',0,250)
	cgtext('You need to move your finger towards to the Dart and ',0,10)
	cgtext('move it back to the starting point to hit',0,-50)
	cgtext('Your movements should be as fast as possible',0,-100)
	cgtext('Please click the left mouse button to proceed',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end

tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Training Phase 1',0,250)
	cgtext('You need to move your finger towards to the Dart and ',0,10)
	cgtext('move it back to the starting point to hit',0,-50)
	cgtext('Your movements should be as fast as possible',0,-100)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end

cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Training Phase 1',0,250)
	cgtext('Following your each hit, you will be presented with ',0,10)
	cgtext('the feedback of your hit.',0,-50)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end



tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Training Phase 1',0,250)
	cgtext('Following your each hit, you will be presented with ',0,10)
	cgtext('the feedback of your hit.',0,-50)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end

cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('The game will start after this page',0,0)
	cgtext('Please click the left mouse button to start ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end


tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('The game will start after this page',0,0)
	cgtext('Please click the left mouse button to start',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end


% Drawing sprites for training V1
amplitude= randi([180 ((pxs(reso,1)/2)-250)],30,1);
degree=(randi([0 90],30,1));
% a for x, b for y
for i=1:30
	% a(i,1)=(abs(amplitude(i)*sind(degree(i))));
	% b(i,1)=(abs(amplitude(i)*cosd(degree(i))));
	a(i,1)=(abs(amplitude(i)*cosd(degree(i))));
	b(i,1)=(abs(amplitude(i)*sind(degree(i))));
end

T1DartLocs= [a,b];

if labsetup==1
	a=-a;
end;

% Drawing sprites
for ii= 1:30
	cgmakesprite(200+ii,pxs(reso,1),pxs(reso,2),0,0,0)
	cgsetsprite(200+ii)
	cgdrawsprite(1,a(ii),b(ii))
	cgsetsprite(0)
	cgdrawsprite(200+ii,0,0)
end

trainingV1= zeros(30,4); %preallocating
for i= 1:2 %i= 1:30
	if ~labsetup
		cgmouse(0,0)
	end;
	ismet=0;
	Cmax=120; %0;
	t0=time;
	while ~ismet
		[x1,y1,bs,bp1]=cgmouse;
		if labsetup
			y1=y1+87;
		end;
		cgdrawsprite(200+i,0,0)
		cgpencol(0,0,1)
		if labsetup==1
			cgellipse(-x1,y1,10,10,'f')
		else
			cgellipse(x1,y1,10,10,'f')
		end;
		% 		cgfont('Arial',35)
		% 		cgpencol(1,1,1)
		% 		cgtext('Training V1',0,490)
		% 		cgtext('Try to hit the bullseye',0,-350)
		cgflip(0,0,0)
		Ctemp= sqrt(x1^2+y1^2);
		if Ctemp>Cmax %&& x > 5 && y > 5
			Cmax=Ctemp;
		elseif Cmax>120 & Ctemp+5<Cmax %Cmax>120 & Ctemp+5<Cmax
			trainingV1(i,:)=[x1,y1,bs,bp1]; %saves the actual hit by participant
			ismet=1;
			t1=time;
		end
	end
	Training1Duration(i,1)=t1-t0;
	tic;
	while toc<=0.1 %shows the feedback
		cgdrawsprite(200+i,0,0)
		cgpencol([0,0,1]) % blue
		if labsetup==1
			cgellipse(-trainingV1(i,1),trainingV1(i,2),9,9,'f')
		else
			cgellipse(trainingV1(i,1),trainingV1(i,2),9,9,'f')
		end;
		% 		cgfont('Arial',35)
		% 		cgpencol([1,1,1])
		% 		cgtext('Training V1',0,490)
		% 		cgtext('Try to hit the bullseye',0,-350)
		cgflip(0,0,0)
		pause(0.1)
	end
	% Scoring
	if sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=10
		Scores(i,1)=150;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=20
		Scores(i,1)=90;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=30
		Scores(i,1)=80;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=40
		Scores(i,1)=70;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=50
		Scores(i,1)=60;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=60
		Scores(i,1)=50;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=70
		Scores(i,1)=40;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=80
		Scores(i,1)=30;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=90
		Scores(i,1)=20;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=100
		Scores(i,1)=10;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) >100
		Scores(i,1)=0;
	end
	StrPoint= num2str(Scores(i,1));
	TV1Scores=Scores;
	AbsDist(i,1)=sqrt((-x1-a(i))^2 + (((y1)-b(i))^2));
	DistanceTV1(i,1)= AbsDist(i,1);
	tic;
	while toc<=0.1 %shows the feedback for 4 seconds
		cgdrawsprite(200+i,0,0)
		cgpencol([0,0,1]) % blue
		if labsetup==1
			cgellipse(-trainingV1(i,1),trainingV1(i,2),9,9,'f')
		else
			cgellipse(trainingV1(i,1),trainingV1(i,2),9,9,'f')
		end;
		% 		cgfont('Arial',35)
		% 		cgpencol([1,1,1])
		% 		cgtext('You scored: ',0,-250)
		% 		cgtext(StrPoint(:,:), 100,-250)
		% 		cgtext('Feedback Training V1',0,490)
		% 		%cgtext('The blue point indicates your hit.',0,-200)
		% 		cgtext('This page will proceed automatically',0,-400)
		cgflip(0,0,0)
		pause(0.1)
	end
	if i<2 % i<30
		tic;
		while toc<=2
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol([1,1,1])
			cgtext('You scored: ',0,100)
			cgtext(StrPoint(:,:), 150,100)
			cgtext('Feedback Training V1',0,490)
			cgtext('This page will proceed automatically',0,-400)
			cgtext('Get ready for the next round!',0,-150)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(0.5)
		end
    else
       tic;
		while toc<=2
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol([1,1,1])
			cgtext('You scored: ',0,100)
			cgtext(StrPoint(:,:), 150,100)
			cgtext('Feedback Training V1',0,490)
			cgtext('This page will proceed automatically',0,-400)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(2)
		end
		tic;
		while toc<=2
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol(1,1,1)
			cgtext('End of the Training Phase 1',0,75)
			cgtext('Now you will proceed with the next phase',0,0)
			cgtext('This page will proceed automatically',0,-400)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(2)
		end
	end
end

%% Training v2
%instructions
cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Training Phase 2',0,250)
	cgtext('This time, you will not be able to see the cursor',0,20)
	cgtext('But the logic and the mechanics of the game are same',0,-75)
	cgtext('After your shot, you will make a guess about where you hit',0,-150)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end

tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Training Phase 2',0,250)
	cgtext('This time, you will not be able to see the cursor',0,20)
	cgtext('But the logic and the mechanics of the game are same',0,-75)
	cgtext('After your shot, you will make a guess about where you hit',0,-150)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end

cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Training Phase 2',0,250)
	cgtext('Please click the left mouse button to proceed',0,0)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end

tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Training Phase 2',0,250)
	cgtext('Please click the left mouse button to proceed',0,0)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end

% Training phase 2 - mouse not visible
% Drawing sprites for training V2
amplitude= randi([180 ((pxs(reso,1)/2)-250)],30,1);
degree=(randi([0 90],30,1));
% a for x, b for y
for i=1:30
	a(i,1)=(abs(amplitude(i)*cosd(degree(i))));
	b(i,1)=(abs(amplitude(i)*sind(degree(i))));
end

T2DartLocs= [a,b];

if labsetup==1
	a=-a;
end;

for ii=1:30
	cgmakesprite(250+ii,pxs(reso,1),pxs(reso,2),0,0,0)
	cgsetsprite(250+ii)
	cgdrawsprite(1,a(ii),b(ii))
	cgsetsprite(0)
	cgdrawsprite(250+ii,0,0)
end

trainingV2= zeros(30,4);
perceptionV2= zeros(30,4);
AbsDist=[];
for i=1:6 %i= 1:30
	if ~labsetup
		cgmouse(0,0)
	end;
	ismet=0;
	Cmax=120;
	t0=time;
	while ~ismet
		[x1,y1,bs,bp1]=cgmouse;
		if labsetup
			y1=y1+87;
		end;
		cgdrawsprite(250+i,0,0)
		cgpencol(0,0,1)
		% 		cgfont('Arial',35)
		% 		cgpencol(1,1,1)
		% 		cgtext('Training V2',0,490)
		% 		cgtext('Try to hit the bullseye',0,-350)
		cgflip(0,0,0)
		Ctemp= sqrt(x1^2+y1^2);
		if Ctemp>Cmax
			Cmax=Ctemp;
		elseif Cmax>120 & Ctemp+5<Cmax
			trainingV2(i,:)=[x1,y1,bs,bp1]; %saves the actual hit by participant
			ismet=1;
			t1=time;
		end
	end
	tic;
	while toc<=0.1 %shows the feedback
		cgdrawsprite(250+i,0,0)
		% 		cgfont('Arial',35)
		% 		cgpencol([1,1,1])
		% 		cgtext('Training V2',0,490)
		% 		cgtext('Try to hit the bullseye',0,-350)
		cgflip(0,0,0)
		pause(0.1)
	end
	% Scoring
	if sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=10
		Scores(i,1)=150;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=20
		Scores(i,1)=90;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=30
		Scores(i,1)=80;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=40
		Scores(i,1)=70;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=50
		Scores(i,1)=60;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=60
		Scores(i,1)=50;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=70
		Scores(i,1)=40;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=80
		Scores(i,1)=30;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=90
		Scores(i,1)=20;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=100
		Scores(i,1)=10;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) >100
		Scores(i,1)=0;
	end
	TV2Scores(i,1)=Scores(i,1);
	AbsDist(i,1)=sqrt((-x1-a(i))^2 + (((y1)-b(i))^2));
	DistanceTV2(i,1)= AbsDist(i,1);
	trainingV2(i,:)=[x1,y1,bs,bp1]; %saves the actual hit by participant
	Training2TrialDuration(i,1)=t1-t0;
	tic;
	while toc<=0.2 %shows the feedback for 4 seconds
		cgdrawsprite(250+i,0,0)
		cgflip(0,0,0)
		pause(0.2)
	end
	if i==1
	tic;
	while toc<=2
		if labsetup
			cgmakesprite(999,1280,1024,0,0,0);
			cgsetsprite(999);
		end;
		cgfont('Arial',50)
		cgpencol(1,1,1)
		cgtext('Now, guess your hit',0,200)
		cgtext('You need to move your finger towards to the dart board',0,50)
		cgtext('then please indicate your guess by clicking the left mouse button',0,-200)
		if labsetup
			cgsetsprite(0);
			cgdrawsprite(999,0,0,-800,600);
		end;
		cgflip(0,0,0)
		pause(2)
	end
	else
			tic;
	while toc<=0.5
		if labsetup
			cgmakesprite(999,1280,1024,0,0,0);
			cgsetsprite(999);
		end;
		cgfont('Arial',50)
		cgpencol(1,1,1)
		cgtext('Now, guess your hit',0,200)
		if labsetup
			cgsetsprite(0);
			cgdrawsprite(999,0,0,-800,600);
		end;
		cgflip(0,0,0)
		pause(0.5)
	end
	end
	cgmouse(0,0)
	bp2=0;
	t0=time;
	while ~bp2
		[x2,y2,bs,bp2]=cgmouse;
		if labsetup
			y2=y2+87;
		end;
		cgdrawsprite(250+i,0,0)
		cgpencol([0,0,1]) % blue

		if labsetup==1
			cgellipse(-x2,y2,10,10,'f')
		else
			cgellipse(x2,y2,10,10,'f')
		end;
% 		cgfont('Arial',35)
% 		cgpencol([1,1,1])
% 		cgtext('Guessing part',0,490)
% 		cgtext('Where did you hit?',0,-350)
% 		cgtext('Please hit the target again by clicking the left mouse button',0,-400)
		cgflip(0,0,0)
	end
	t1=time;
	perceptionV2(i,:)=[x2,y2,bs,bp2]; %saves the actual hit by participant
	Training2PerceptionDuration(i,1)=t1-t0;
	tic;
	while toc<=0.5 %shows the feedback for 4 seconds
		cgdrawsprite(250+i,0,0)
		cgpencol([0,0,1]) % blue
		cgellipse(-perceptionV2(i,1),perceptionV2(i,2),9,9,'f')
% 		cgfont('Arial',35)
% 		cgpencol([1,1,1])
% 		cgtext('Guessing part',0,490)
% 		cgtext('Where did you hit?',0,-350)
% 		cgtext('Please hit the target again by clicking the left mouse button',0,-400)
		cgflip(0,0,0)
		pause(0.5)
	end
	DifferenceTV2(i,1)=sqrt((trainingV2(i,1)-perceptionV2(i,1))^2 + (trainingV2(i,2)-perceptionV2(i,2))^2);
	if  DifferenceTV2(i,1) <=15
		AccuracyTv2(i,1)=100;
	elseif DifferenceTV2(i,1) <=30
		AccuracyTv2(i,1)=90;
	elseif DifferenceTV2(i,1) <=45
		AccuracyTv2(i,1)=80;
	elseif DifferenceTV2(i,1) <=60
		AccuracyTv2(i,1)=70;
	elseif DifferenceTV2(i,1) <=75
		AccuracyTv2(i,1)=60;
	elseif DifferenceTV2(i,1) <=90
		AccuracyTv2(i,1)=50;
	elseif DifferenceTV2(i,1) <=105
		AccuracyTv2(i,1)=40;
	elseif DifferenceTV2(i,1) <=120
		AccuracyTv2(i,1)=30;
	elseif DifferenceTV2(i,1) <=135
		AccuracyTv2(i,1)=20;
	elseif DifferenceTV2(i,1) <=150
		AccuracyTv2(i,1)=10;
	elseif DifferenceTV2(i,1) >150
		AccuracyTv2(i,1)=0;
	end
	if i<6 % i<30
		tic;
		while toc<=1
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol(1,1,1)
			cgtext('Move your finger back to the starting point and',0,100)
			cgtext('Get ready for the next round!',0,-50)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(1)
		end
	else
		tic;
		while toc<=2
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol(1,1,1)
			cgtext('End of the Training Phase 2',0,250)
			cgtext('This page will proceed automatically',0,-400)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(0.5)
		end
	end
end

% T2 Accuracy
TotAccuracy=sum(AccuracyTv2)/length(AccuracyTv2);
TotAccuracy=round(TotAccuracy);
StrAccuracy= num2str(TotAccuracy);


cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('End of the Training Phase 2',0,250)
	cgtext('Your guessing accuracy is: ',0,100)
	cgtext(StrAccuracy(:), 290,100)
	cgtext('%',340,100)
	cgtext('Now you will start playing the actual game',0,0)
	cgtext('Please click the left mouse button to proceed',0,-400)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end

%% Single Player
%instructions
cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Single Player',0,250)
	cgtext('Now the actual game will start',0,10)
	cgtext('You will hit the target without visual feedback',0,-50)
	cgtext('Then you need to guess your hit',0,-100)
	cgtext('Please click the left mouse button to proceed',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end

tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Single Player',0,250)
	cgtext('Now the actual game will start',0,10)
	cgtext('You will hit the target without visual feedback',0,-50)
	cgtext('Then you need to guess your hit',0,-100)
	cgtext('Please click the left mouse button to proceed',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end

bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Please click the left mouse button to start',0,0)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end

tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Please click the left mouse button to start',0,0)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
	cgmouse(0,0)
end

% distrubtion and otherplayers parameters...
[mu,sDev]=normfit(DistanceTV2);%based on phase 2
expertAmp=rand(60,1)*(sDev/2);
noobAmp=rand(60,1)*(sDev*2);
directionExp=randi(360,60,1);
directionNoob=randi(360,60,1);

SPmu= mu;
SPsDev= sDev;

% Drawing sprites for single player mode
%drawing sprites
amplitude= randi([180 ((pxs(reso,1)/2)-250)],60,1);
degree=(randi([0 90],60,1));

% a for x, b for y
for i=1:60
	a(i,1)=(abs(amplitude(i)*cosd(degree(i))));
	b(i,1)=(abs(amplitude(i)*sind(degree(i))));
end

SingleDartLocs= [a,b];

if labsetup==1
	a=-a;
end;

for ii=1:60 %i= 1:60
	cgmakesprite(ii+1,pxs(reso,1),pxs(reso,2),0,0,0)
	cgsetsprite(ii+1)
	cgdrawsprite(1,a(ii),b(ii))
	cgsetsprite(0)
	cgdrawsprite(ii+1,0,0)
end

for i=1:60
	ExpCors(i,1)= a(i,1)-(abs(expertAmp(i)*sin(directionExp(i))));
	ExpCors(i,2)=b(i,1)-(abs(expertAmp(i)*cos(directionExp(i))));
end

SingleExpert=ExpCors;

for i=1:60
	NoobCors(i,1)= a(i,1)-(abs(noobAmp(i)*sin(directionNoob(i))));
	NoobCors(i,2)=b(i,1)-(abs(noobAmp(i)*cos(directionNoob(i))));
end
SingleNoob= NoobCors;

computerCors=zeros(60,2);
itmp=randperm(length(ExpCors));
swaps=itmp(1:length(ExpCors)/2);

singleswaps=swaps;
computerCors(swaps,:)=ExpCors(swaps,:);
eksikler= find(computerCors(:,1)==0);
computerCors(eksikler,:)=NoobCors(eksikler,:);

SingleRival= computerCors;
SingleRivalOrder(swaps,1)={'expert'};
SingleRivalOrder(eksikler,:)={'noob'};

singlePlayer= zeros(60,4);
perceptionSingle= zeros(60,4);
SinglesSoc='XY';
Scores=[];
for i=1:6 %i= 1:60
	if ~labsetup
		cgmouse(0,0)
	end;
	ismet=0;
	Cmax=120;
	t0=time;
	while ~ismet
		[x1,y1,bs,bp1]=cgmouse;
		if labsetup
			y1=y1+87;
		end;
		cgdrawsprite(i+1,0,0)
		cgpencol(0,0,1)
		cgflip(0,0,0)
		Ctemp= sqrt(x1^2+y1^2);
		if Ctemp>Cmax
			Cmax=Ctemp;
		elseif Cmax>120 & Ctemp+5<Cmax
			singlePlayer(i,:)=[-x1,y1,bs,bp1]; %saves the actual hit by participant
			ismet=1;
			t1=time;
		end
		SingleTrialDuration(i,1)=t1-t0;
	end
	tic;
	while toc<=0.1 %shows the feedback
		cgdrawsprite(i+1,0,0)
		% 		cgfont('Arial',35)
		% 		cgpencol([1,1,1])
		% 		cgtext('Single player mode',0,490)
		% 		cgtext('Try to hit the bullseye',0,-350)
		cgflip(0,0,0)
		pause(0.1)
	end
	% Scoring
	if sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=10
		Scores(i,1)=150;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=20
		Scores(i,1)=90;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=30
		Scores(i,1)=80;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=40
		Scores(i,1)=70;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=50
		Scores(i,1)=60;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=60
		Scores(i,1)=50;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=70
		Scores(i,1)=40;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=80
		Scores(i,1)=30;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=90
		Scores(i,1)=20;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=100
		Scores(i,1)=10;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) >100
		Scores(i,1)=0;
	end
	%Scoring
	SingleScores(i,1)=Scores(i);
	AbsDist(i,1)=sqrt((-x1-a(i))^2 + (((y1)-b(i))^2));
	SingleDist(i,1)=AbsDist(i,1);
	RivalDist(i,1)= sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2));
	if i<2
	tic;
	while toc<=3
		if labsetup
			cgmakesprite(999,1280,1024,0,0,0);
			cgsetsprite(999);
		end;
		cgfont('Arial',50)
		cgpencol(1,1,1)
		cgtext('Now, guess your hit',0,100)
		cgtext('Please click the corresponding mouse button;',0,-100)
		cgtext('X = left mouse button, Y = right mouse button',0,-250)
		cgtext('This page will proceed automatically',0,-350)
		if labsetup
			cgsetsprite(0);
			cgdrawsprite(999,0,0,-800,600);
		end;
		cgflip(0,0,0)
		pause(3)
	end
	else
		tic;
	while toc<=1
		if labsetup
			cgmakesprite(999,1280,1024,0,0,0);
			cgsetsprite(999);
		end;
		cgfont('Arial',50)
		cgpencol(1,1,1)
		cgtext('Now, guess your hit',0,100)
		cgtext('X = left mouse button, Y = right mouse button',0,-250)
		if labsetup
			cgsetsprite(0);
			cgdrawsprite(999,0,0,-800,600);
		end;
		cgflip(0,0,0)
		pause(1)
	end
    end
	cgmouse(0,0)
	bp=0;
	jk=randperm(2);
	t0=time;
	while ~bp
		[x,y,bs,bp]=cgmouse;
		cgdrawsprite(i+1,0,0)
		cgfont('Arial',50)
		cgpencol([1,1,0])
		cgtext(SinglesSoc(jk(1)),singlePlayer(i,1),singlePlayer(i,2))
		cgpencol([0,0,1])
		cgtext(SinglesSoc(jk(2)),(computerCors(i,1)),(computerCors(i,2))) %a(i) ve +b(i) vardi sildim
		% 		cgfont('Arial',50)
		% 		cgpencol([1,1,1])
		% 		cgtext('Guessing part',0,490)
		% 		cgtext('Which one is your hit?',0,-300)
		% 		cgtext('Please click the corresponding mouse
		% 		button;',0,-350)
		% 		cgtext('X = left mouse button, Y = right mouse button',0,-400)
		cgflip(0,0,0)
	end
	t1 =time;
	SingleGuessDuration(i,1)=t1-t0;
	ParticipantSingle(i,1)=SinglesSoc(jk(1));
	computerCorsPer(i,1)=SinglesSoc(jk(2));
	perceptionSingle(i,1)=bp; %saves the perceived hit... X = left, 4=right
	if i<6 % i<60
		tic;
		while toc <= 1
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol(1,1,1)
			cgtext('Get ready for the next round!',0,0)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(1)
		end
	else
		StrScore= num2str(sum(SingleScores));
		tic
		while toc<=2
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol(1,1,1)
			cgtext('End of the Single player mode',0,75)
            cgtext('Your average score: ',-50,0)
			cgtext(StrScore(:), 200,0)
			cgtext('This page will proceed automatically',0,-400)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(2)
		end
	end
end
SingleAbsDist= AbsDist;
%% Multiplayer
%instructions
cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Multiplayer',0,250)
	cgtext('Now you will be competing against the experimenter!',0,10)
	cgtext('Again, you will try to hit the board without visual feedback',0,-50)
	cgtext('After giving your shot, you need to decide which one is your hit',0,-100)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end

tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Multiplayer',0,250)
	cgtext('Now you will be competing against the experimenter!',0,10)
	cgtext('Again, you will try to hit the board without visual feedback',0,-50)
	cgtext('After giving your shot, you need to decide which one is your hit',0,-100)
	cgtext('Please click the left mouse button to proceed ',0,-380)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
end


cgmouse(0,0)
bp=0;
while ~bp
	[x,y,bs,bp]=cgmouse;
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Please click the left mouse button to start the game',0,0)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
end

tic;
while toc<=0.1 %shows the feedback for 4 seconds
	if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
	cgpencol(1,1,1)
	cgfont('Arial',50)
	cgpencol(1,1,1)
	cgtext('Please click the left mouse button to start the game',0,0)
	if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
	cgflip(0,0,0)
	pause(0.1)
end

% distrubtion and otherplayers parameters...
[mu,sDev]=normfit(SingleAbsDist); %based on Single player performance
expertAmp=rand(60,1)*(sDev/2);
noobAmp=rand(60,1)*(sDev*2);
directionExp=randi(360,60,1);
directionNoob=randi(360,60,1);

MPmu= mu;
MPsDev= sDev;

% Drawing sprites for multi player mode
%drawing sprites
amplitude= randi([180 ((pxs(reso,1)/2)-250)],60,1);
degree=(randi([0 90],60,1));

% a for x, b for y
for i=1:60
	a(i,1)=(abs(amplitude(i)*cosd(degree(i))));
	b(i,1)=(abs(amplitude(i)*sind(degree(i))));
end

MultiPlayerDartLocs= [a,b];

if labsetup==1
	a=-a;
end;

for ii=1:60
	cgmakesprite(100+ii,pxs(reso,1),pxs(reso,2),0,0,0)
	cgsetsprite(100+ii)
	cgdrawsprite(1,a(ii),b(ii))
	cgsetsprite(0)
	cgdrawsprite(100+ii,0,0)
end

for i=1:60
	ExpCors(i,1)= a(i,1)-(abs(expertAmp(i)*sin(directionExp(i))));
	ExpCors(i,2)=b(i,1)-(abs(expertAmp(i)*cos(directionExp(i))));
end
MultiExpert=ExpCors;

for i=1:60
	NoobCors(i,1)= a(i,1)-(abs(noobAmp(i)*sin(directionNoob(i))));
	NoobCors(i,2)=b(i,1)-(abs(noobAmp(i)*cos(directionNoob(i))));
end
MultiNoob=NoobCors;

computerCors=zeros(60,2);
itmp=randperm(length(ExpCors));
swaps=itmp(1:length(ExpCors)/2);
multiswaps=swaps;
computerCors(swaps,:)=ExpCors(swaps,:);
eksikler= find(computerCors(:,1)==0);
computerCors(eksikler,:)=NoobCors(eksikler,:);

MultiRival= computerCors;
MultiRivalOrder(swaps,1)={'expert'};
MultiRivalOrder(eksikler,:)={'noob'};

ExpAv= "Experimenter's average: ";
ExpAv=convertStringsToChars(ExpAv);
multiPlayer= zeros(60,4);
perceptionMulti= zeros(60,4);
MultiSoc='XY';
Scores=[];
for i=1:6 %i=1:60
	if ~labsetup
		cgmouse(0,0)
	end;
	ismet=0;
	Cmax=120;
	t0=time;
	while ~ismet
		[x1,y1,bs,bp1]=cgmouse;
		if labsetup
			y1 =y1+87;
		end;
		cgdrawsprite(100+i,0,0)
		cgpencol(0,0,1)
		cgfont('Arial',50)
		cgpencol(1,1,1)
		cgflip(0,0,0)
		Ctemp= sqrt(x1^2+y1^2);
		if Ctemp>Cmax
			Cmax=Ctemp;
		elseif Cmax>120 & Ctemp+5<Cmax
			multiPlayer(i,:)=[-x1,y1,bs,bp1]; %saves the actual hit by participant
			ismet=1;
			t1 =time;
		end
		MultiTrialDuration(i,1)=t1-t0;
	end
	tic;
	while toc<=0.5 %shows the feedback
		cgdrawsprite(100+i,0,0)
		cgfont('Arial',50)
		cgpencol([1,1,1])
		% 		cgtext('Multiplayer mode',0,490)
		% 		cgtext('Try to hit the bullseye',0,-350)
		cgflip(0,0,0)
		pause(0.5)
	end
	% Scoring
	if sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=10
		Scores(i,1)=150;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=20
		Scores(i,1)=90;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=30
		Scores(i,1)=80;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=40
		Scores(i,1)=70;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=50
		Scores(i,1)=60;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=60
		Scores(i,1)=50;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=70
		Scores(i,1)=40;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=80
		Scores(i,1)=30;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=90
		Scores(i,1)=20;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) <=100
		Scores(i,1)=10;
	elseif sqrt((-x1-a(i))^2 + (((y1)-b(i))^2)) >100
		Scores(i,1)=0;
	end
	%Scoring
	MultiScores(i,1)=Scores(i);
	AbsDist(i,1)=sqrt((-x1-a(i))^2 + (((y1)-b(i))^2));
	MultiPartDist(i,1)=AbsDist(i,1);
	MultiRivalDist(i,1)= sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2));
    tic;
	while toc<=1
		if labsetup
		cgmakesprite(999,1280,1024,0,0,0);
		cgsetsprite(999);
	end;
		cgfont('Arial',50)
		cgpencol(1,1,1)
		cgtext('Wait for the experimenter',0,0)
		cgtext('Then guess your hit!',0,-100)
		cgtext('X = left mouse button, Y = right mouse button',0,-250)
if labsetup
		cgsetsprite(0);
		cgdrawsprite(999,0,0,-800,600);
	end;
		cgflip(0,0,0)
		pause(1)
	end
	cgmouse(0,0)
	bp=0;
	jk=randperm(2);
	t0=time;
	while ~bp
		[x,y,bs,bp]=cgmouse;
		cgdrawsprite(100+i,0,0)
		cgfont('Arial',50)
		cgpencol([0,0,1])
		cgtext(MultiSoc(jk(1)),multiPlayer(i,1),multiPlayer(i,2))  %- yi kaldir!
		cgpencol([1,1,0])
		cgtext(MultiSoc(jk(2)),(computerCors(i,1)),(computerCors(i,2))) %a(i) ve +b(i) vardi sildim
% 		cgfont('Arial',50)
% 		cgpencol([1,1,1])
% 		cgtext('Guessing part',0,490)
% 		cgtext('Which one is your hit?',0,-300)
% 		cgtext('Please click the corresponding mouse button;',0,-350)
% 		cgtext('1 = left mouse button,   2 = right mouse button',0,-400)
		cgflip(0,0,0)
	end
	t1 =time;
	MultiGuessDuration(i,1)=t1-t0;
	ParticipantMulti(i,1)=MultiSoc(jk(1));
	computerCorsPresentation(i,1)=MultiSoc(jk(2));
	perceptionMulti(i,1)=bp; %saves the perceived hit... X = left, 4=right
	% Experimenter scoring
	if sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=10
		ExpScores(i,1)=150;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=20
		ExpScores(i,1)=90;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=30
		ExpScores(i,1)=80;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=40
		ExpScores(i,1)=70;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=50
		ExpScores(i,1)=60;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=60
		ExpScores(i,1)=50;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=70
		ExpScores(i,1)=40;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=80
		ExpScores(i,1)=30;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=90
		ExpScores(i,1)=20;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) <=100
		ExpScores(i,1)=10;
	elseif sqrt((computerCors(i,1)-a(i))^2 + ((computerCors(i,2)-b(i))^2)) >100
		ExpScores(i,1)=0;
	end
	ExperimenterScores(i,1)=ExpScores(i);
	if i<6 % i<60
		tic;
		while toc<=1
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol(1,1,1)
			cgtext('Get ready for the next round!',0,0)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(1)
		end
	else
		StrScore= num2str(round(mean(MultiScores)));
		StrExpScore= num2str(round(mean(ExperimenterScores)));
		tic
		while toc<=2
			if labsetup
				cgmakesprite(999,1280,1024,0,0,0);
				cgsetsprite(999);
			end;
			cgfont('Arial',50)
			cgpencol(1,1,1)
			cgtext('End of the Multiplayer mode',0,150)
			cgtext('Your average score: ',-50,50)
			cgtext(StrScore(:), 200,50)
            cgtext('/150 ',285,50)
			cgtext(ExpAv(:)', -5,-10)
			cgtext(StrExpScore(:), 300,-10)
            cgtext('/150 ',385,-10)
			cgtext('This page will proceed automatically',0,-400)
			if labsetup
				cgsetsprite(0);
				cgdrawsprite(999,0,0,-800,600);
			end;
			cgflip(0,0,0)
			pause(1)
		end
	end
end


cgflip(0,0,0)
if labsetup
	cgmakesprite(999,1280,1024,0,0,0);
	cgsetsprite(999);
end;
cgfont('Arial',70)
cgpencol([1,1,1])
cgtext('End of the experiment.',0,100)
cgtext('Thanks for your participation!',0,0)
cgtext('Tschau!',0,-100)
if labsetup
	cgsetsprite(0);
	cgdrawsprite(999,0,0,-800,600);
end;
cgflip;

%% Some other calcs
for i=1:30
	T2DistanceHit(i,1)= sqrt((trainingV2(i,1)-a(i))^2 + ((trainingV2(i,2)-b(i))^2));
	T2DistancePerception(i,1)= sqrt((perceptionV2(i,1)-a(i))^2 + ((perceptionV2(i,2)-b(i))^2));
end


%% Saving
EmreData{ParticipantID}.ID=ID;
EmreData{ParticipantID}.Resolution= reso;
% Training V1
EmreData{ParticipantID}.Training1Hits= trainingV1;
EmreData{ParticipantID}.Training1TrialDurations= Training1Duration;
EmreData{ParticipantID}.Training1DartLocations =T1DartLocs;
EmreData{ParticipantID}.Training1Distance=DistanceTV1;
EmreData{ParticipantID}.Training1Scores=TV1Scores;

% Training V2
EmreData{ParticipantID}.Training2Hits= trainingV2; %where participant hit
EmreData{ParticipantID}.Training2TrialDurations= Training2TrialDuration; %trial durations
EmreData{ParticipantID}.Training2PerceptionDurations=Training2PerceptionDuration; %how long did it take to decide..
EmreData{ParticipantID}.Training2DartLocations=T2DartLocs; %dart locations
EmreData{ParticipantID}.Training2Performance= T2DistanceHit;% how far was the hits
EmreData{ParticipantID}.Training2PerceivedPerformance=T2DistancePerception; %where the think they hit...
EmreData{ParticipantID}.Training2Accuracy= AccuracyTv2; %Accuracy of guess
EmreData{ParticipantID}.Training2HitvPerDist= DifferenceTV2; %Distance btw hit and guess...
EmreData{ParticipantID}.Training2Scores = TV2Scores;

%Single
EmreData{ParticipantID}.SinglePartHits =singlePlayer;
EmreData{ParticipantID}.SingleComputerHits= SingleRival;
EmreData{ParticipantID}.SingleParticipantHitsPresentations = ParticipantSingle;
EmreData{ParticipantID}.SingleComputerHitPresentations= computerCorsPer;
EmreData{ParticipantID}.SinglePerception = perceptionSingle;
EmreData{ParticipantID}.ScoresSingle = SingleScores;
EmreData{ParticipantID}.SingleTrialDuration =SingleTrialDuration;
EmreData{ParticipantID}.SingleGuessDuration =SingleGuessDuration;
EmreData{ParticipantID}.SingleSwaps= singleswaps;
EmreData{ParticipantID}.SingleExpert= SingleExpert;
EmreData{ParticipantID}.SingleNoob= SingleNoob;
EmreData{ParticipantID}.SingleRivalOrder= SingleRivalOrder;
EmreData{ParticipantID}.SingleParticipantDist= SingleDist;
EmreData{ParticipantID}.SingleRivalDist= RivalDist;
EmreData{ParticipantID}.Single_sDev= SPsDev;
EmreData{ParticipantID}.Single_mu= SPmu;
EmreData{ParticipantID}.SingleDartLocations= SingleDartLocs;
EmreData{ParticipantID}.SingleAbsDist= SingleAbsDist;


% Multi
EmreData{ParticipantID}.MultiParticipantHits =ParticipantMulti;
EmreData{ParticipantID}.MultiPerception = perceptionMulti;
EmreData{ParticipantID}.MultiParticipantHitPresentations=ParticipantMulti;
EmreData{ParticipantID}.MultiComputerHitPresentations=computerCorsPresentation;
EmreData{ParticipantID}.MultiTrialDuration=MultiTrialDuration;
EmreData{ParticipantID}.MultiGuessDuration=MultiGuessDuration;
EmreData{ParticipantID}.MultiScoresPartcipant = MultiScores;   %EmreData{5}.MultiScoresPartcipant
EmreData{ParticipantID}.MultiScoresExperimenter = ExperimenterScores;
EmreData{ParticipantID}.MultiPartDist =MultiPartDist;
EmreData{ParticipantID}.MultiRivalDist= MultiRivalDist;
EmreData{ParticipantID}.Multi_mu=  MPmu;
EmreData{ParticipantID}.Multi_sDev=  MPsDev;
EmreData{ParticipantID}.MultiExpert= MultiExpert;
EmreData{ParticipantID}.MultiNoob= MultiNoob;
EmreData{ParticipantID}.MultiRival= MultiRival; %coordinates...
EmreData{ParticipantID}.MultiRivalOrder= MultiRivalOrder;
EmreData{ParticipantID}.MultiSwaps= multiswaps;
EmreData{ParticipantID}.MultiDartLocations= MultiPlayerDartLocs;

%clearvars -except EmreData

%% save
save('EmreData','EmreData');

clear all;
cgshut;

load('EmreData.mat')





