%% Dart Game Analysis Script
clear all; clc

%% Data 
% EmreData{i}.xxx

% Absolute distances and scores
for i=1:11
    %single
    SingleAbsDist(:,i)=EmreData{i}.SingleParticipantDist;
    ComputerDist(:,i)=EmreData{i}.SingleRivalDist;
    %ComputerScores...
    SingleScores(:,i)= EmreData{i}.ScoresSingle;
    
    %multi
    MultiAbsDist(:,i)=EmreData{i}.MultiPartDist;
    ExperimenterDist(:,i)=EmreData{i}.MultiRivalDist;
    ExperimenterScores(:,i)= EmreData{i}.MultiScoresExperimenter;
    MultiScores(:,i)=EmreData{i}.MultiScoresPartcipant;
end

% Single Player computer scores
for i=1:11
    for y= 1:60
        if ComputerDist(y,i) <=10
		ComputerScores(y,i)=150;
	elseif ComputerDist(y,i) <=20
		ComputerScores(y,i)=90;
	elseif ComputerDist(y,i) <=30
		ComputerScores(y,i)=80;
	elseif ComputerDist(y,i) <=40
		ComputerScores(y,i)=70;
	elseif ComputerDist(y,i) <=50
		ComputerScores(y,i)=60;
	elseif ComputerDist(y,i) <=60
		ComputerScores(y,i)=50;
	elseif ComputerDist(y,i) <=70
		ComputerScores(y,i)=40;
	elseif ComputerDist(y,i) <=80
		ComputerScores(y,i)=30;
	elseif ComputerDist(y,i) <=90
		ComputerScores(y,i)=20;
	elseif ComputerDist(y,i) <=100
		ComputerScores(y,i)=10;
	elseif ComputerDist(y,i) >100
		ComputerScores(y,i)=0;
        end
    end
end


%Perceived performance
for i=1:11
    SinglePerception(:,i)= EmreData{i}.SinglePerception(:,1); %1= X(left), 4= Y (right)
    SingleRivalOrder(:,i)= EmreData{i}.SingleRivalOrder;
    SingleParticipantHits(:,i)=EmreData{i}.SingleParticipantHitsPresentations;
    SingleRivalHits(:,i)=EmreData{i}.SingleComputerHitPresentations;
    
    MultiPerception(:,i)= EmreData{i}.MultiPerception(:,1);
    MultiPresentations(:,i)=EmreData{i}.MultiRivalOrder;
    MultiParticipantHits(:,i)=EmreData{i}.MultiParticipantHitPresentations;
    MultiRivalHits(:,i)=EmreData{i}.MultiComputerHitPresentations;
end


% Selections mde by participant for each trial
for i=1:11
    for y=1:60
 ComputerHits(i,y) = convertCharsToStrings(SingleRivalHits(y,i));
 ExperimenterHits(i,y) = convertCharsToStrings(MultiRivalHits(y,i));
 SingleHitsPart(i,y)= convertCharsToStrings(SingleParticipantHits(y,i));
 MultiHitsPart(i,y)= convertCharsToStrings(MultiParticipantHits(y,i));
    end
end
% 1= left, 4= right mouse button
SingleHitsPart=strrep(SingleHitsPart, 'X','1');
SingleHitsPart=strrep(SingleHitsPart, 'Y','4');
SingleHitsPart=str2double(SingleHitsPart'); 

ComputerHits=strrep(ComputerHits, 'X','1');
ComputerHits=strrep(ComputerHits, 'Y','4');
ComputerHits=str2double(ComputerHits');

MultiHitsPart=strrep(MultiHitsPart, 'X','1');
MultiHitsPart=strrep(MultiHitsPart, 'Y','4');
MultiHitsPart=str2double(MultiHitsPart'); 

ExperimenterHits=strrep(ExperimenterHits, 'X','1');
ExperimenterHits=strrep(ExperimenterHits, 'Y','4');
ExperimenterHits=str2double(ExperimenterHits');  


%% Guessing part
for i=1:11
    for y=1:60
        if find(SingleHitsPart(y,i) == SinglePerception(y,i));
            SingleCorrectGuess(y,i)=1;
        else
            SingleCorrectGuess(y,i)=0;
        end
    end
    
end

for i=1:11
    for y=1:60
        if find(MultiHitsPart(y,i) == MultiPerception(y,i));
            MultiCorrectGuess(y,i)=1;
        else
            MultiCorrectGuess(y,i)=0;
        end
    end
    
end

%% Perceived Performance...
%Multi
for i=1:11
    for y=1:60
        if find(MultiCorrectGuess(y,i)==0);
            PerceivedDistanceMulti(y,i)=ExperimenterDist(y,i);
        else
           PerceivedDistanceMulti(y,i)=MultiAbsDist(y,i);
        end
    end
    
end
CorrectSingle=mean(SingleCorrectGuess , 1)';

for i=1:11
    for y= 1:60
        if PerceivedDistanceMulti(y,i) <=10
		PerceivedScoreMulti(y,i)=150;
	elseif PerceivedDistanceMulti(y,i) <=20
		PerceivedScoreMulti(y,i)=90;
	elseif PerceivedDistanceMulti(y,i) <=30
		PerceivedScoreMulti(y,i)=80;
	elseif PerceivedDistanceMulti(y,i) <=40
		PerceivedScoreMulti(y,i)=70;
	elseif PerceivedDistanceMulti(y,i) <=50
		PerceivedScoreMulti(y,i)=60;
	elseif PerceivedDistanceMulti(y,i) <=60
		PerceivedScoreMulti(y,i)=50;
	elseif PerceivedDistanceMulti(y,i) <=70
		PerceivedScoreMulti(y,i)=40;
	elseif PerceivedDistanceMulti(y,i) <=80
		PerceivedScoreMulti(y,i)=30;
	elseif PerceivedDistanceMulti(y,i) <=90
		PerceivedScoreMulti(y,i)=20;
	elseif PerceivedDistanceMulti(y,i) <=100
		PerceivedScoreMulti(y,i)=10;
	elseif PerceivedDistanceMulti(y,i) >100
		PerceivedScoreMulti(y,i)=0;
        end
    end
end

DifferenceMulti=PerceivedDistanceMulti-MultiAbsDist;

%Single
for i=1:11
    for y=1:60
        if find(SingleCorrectGuess(y,i)==0);
            PerceivedDistanceSingle(y,i)=ComputerDist(y,i);
        else
           PerceivedDistanceSingle(y,i)=SingleAbsDist(y,i);
        end
    end
    
end


for i=1:11
    for y= 1:60
        if PerceivedDistanceSingle(y,i) <=10
		PerceivedScoreSingle(y,i)=150;
	elseif PerceivedDistanceSingle(y,i) <=20
		PerceivedScoreSingle(y,i)=90;
	elseif PerceivedDistanceSingle(y,i) <=30
		PerceivedScoreSingle(y,i)=80;
	elseif PerceivedDistanceSingle(y,i) <=40
		PerceivedScoreSingle(y,i)=70;
	elseif PerceivedDistanceSingle(y,i) <=50
		PerceivedScoreSingle(y,i)=60;
	elseif PerceivedDistanceSingle(y,i) <=60
		PerceivedScoreSingle(y,i)=50;
	elseif PerceivedDistanceSingle(y,i) <=70
		PerceivedScoreSingle(y,i)=40;
	elseif PerceivedDistanceSingle(y,i) <=80
		PerceivedScoreSingle(y,i)=30;
	elseif PerceivedDistanceSingle(y,i) <=90
		PerceivedScoreSingle(y,i)=20;
	elseif PerceivedDistanceSingle(y,i) <=100
		PerceivedScoreSingle(y,i)=10;
	elseif PerceivedDistanceSingle(y,i) >100
		PerceivedScoreSingle(y,i)=0;
        end
    end
end

DifferenceSingle=PerceivedDistanceSingle-SingleAbsDist;

%% Better and Worse 
% SingleAbsDist vs ComputerDist
for i=1:11
    for y= 1:60
        if SingleAbsDist(y,i)< ComputerDist(y,i)
            BetterSingle(y,i)=1;
            WorstSingle(y,i)=2;
        else
            BetterSingle(y,i)=2;
            WorstSingle(y,i)=1;
            
        end
    end
end

% MultiAbsDist vs ExperimenterDist

for i=1:11
    for y= 1:60
        if MultiAbsDist(y,i)< ExperimenterDist(y,i)
            BetterMulti(y,i)=1;
            WorstMulti(y,i)=2;
        else
            BetterMulti(y,i)=2;
            WorstMulti(y,i)=1;
            
        end
    end
end

%percentages
for i=1:11
SinglePPBetter(1,i)=length(find(BetterSingle(:,i)==1))/length(BetterSingle);
MultiPPBetter(1,i)= length(find(BetterMulti(:,i)==1))/length(BetterMulti);
end
SinglePPWorst= 1-SinglePPBetter;
MultiPPWorst= 1-MultiPPBetter;

%
SingleSelected=SingleCorrectGuess;
change= find(SingleSelected==0);
SingleSelected(change)=2;

MultiSelected=MultiCorrectGuess;
change= find(MultiSelected==0);
MultiSelected(change)=2;

%what was selected in each trial
for i=1:11
    for y= 1:60
        if BetterSingle(y,i)== SingleSelected(y,i)
            WhatSingle(y,i)=1;
        else
            WhatSingle(y,i)=0;
        end
    end
end
for i=1:11
    for y= 1:60
        if BetterMulti(y,i)== MultiSelected(y,i)
            WhatMulti(y,i)=1;
        else
            WhatMulti(y,i)=0;
        end
    end
end
for i=1:11
SingleWhatPercent(1,i)=length(find(WhatSingle(:,i)==1))/length(WhatSingle);
MultiWhatPercent(1,i)= length(find(WhatMulti(:,i)==1))/length(WhatMulti);
end
            


%% Mean calculation for SPSS 
% mean(X,1) bunu kullanacaks?n!
SingleScore=mean(SingleScores , 1)';
CompScore=mean(ComputerScores ,1)';
SingleDistance=mean( SingleAbsDist , 1)';
ComputerDistance=mean( ComputerDist, 1)';
SinglePerpDist=mean(PerceivedDistanceSingle ,1)';
SingleScorePerpt=mean(PerceivedScoreSingle ,1)';
DiffSingle=mean( DifferenceSingle,1)';
CorrectSingle=mean(SingleCorrectGuess , 1)';
SingleWhatPercent'; % selection percentage of the better option 
SinglePPBetter'; % percentage of participant being better

MultiScore=mean(MultiScores , 1)';
ExpScore=mean( ExperimenterScores , 1)';
MultiDistance=mean( MultiAbsDist, 1)';
ExpDistance=mean(ExperimenterDist , 1)';
MultiPerpDist=mean(PerceivedDistanceMulti ,1)';
MultiScorePerpt=mean(PerceivedScoreMulti ,1)';
DiffMulti=mean( DifferenceMulti ,1)';
CorrectMulti=mean(MultiCorrectGuess , 1)';
MultiWhatPercent'; % selection percentage of the better option 
MultiPPBetter'; % percentage of participant being better


%clearvars -except CorrectMulti CorrectSingle CompScore SingleDistance ComputerDistance SingleScore MultiDistance ExpDistance ExpScore MultiScore MultiScorePerpt MultiPerpDist SingleScorePerpt SinglePerpDist DiffMulti DiffSingle
