

function result1 = test(exp)
 clear all;close all;
  oldVerbosityLevel = Screen('Preference', 'Verbosity', 1);
  oldVisualDebugLevel = Screen('Preference', 'VisualDebugLevel', 3);
  screens = Screen('Screens');
  screenNumber = max(screens);
    window = Screen('OpenWindow', screenNumber);
    %frameRate = Screen('FrameRate', window);
    Screen('TextFont', window, 'Calibri');
    ShowCursor(0, window);

Screen('FillRect', window, 255);
Screen(window,'FillRect',[100,100,100],[100,200,300,500]);
Screen('DrawText', window, 'Practice', 150, 350, [0 0 0]);
Screen(window,'FillRect',[100,100,100],[500,200,700,500]);
Screen('DrawText', window, 'Experiment', 550, 350, [0 0 0]);
Screen(window,'FillRect',[100,100,100],[900,200,1100,500]);
Screen('DrawText', window, 'Abort', 950, 350, [0 0 0]);

Screen('Flip',window)

[x,y,buttons] = GetMouse(0);

while 1
while buttons(1) %if already pressed, wait for release
            [x, y, buttons] = GetMouse;
end
        while ~buttons(1) %wait for press
            [x, y, buttons] = GetMouse;
        end
        while buttons(1) %wait for release
            [x, y, buttons] = GetMouse;
 
        end
      
  if  IsInRect(x,y,[100,200,300,500])
%       Screen('CloseAll');
      ShowCursor; 
      practice(window,screenNumber);
      Screen('Preference', 'Verbosity', oldVerbosityLevel);
      Screen('Preference', 'VisualDebugLevel', oldVisualDebugLevel);
      break;
      
      
  end
  
   if  IsInRect(x,y,[500,200,700,500])
%       Screen('CloseAll');
      ShowCursor; 
      exp_final(window,screenNumber);
      Screen('Preference', 'Verbosity', oldVerbosityLevel);
      Screen('Preference', 'VisualDebugLevel', oldVisualDebugLevel);
      break;
      
   end
  
  if  IsInRect(x,y,[900,200,1100,500])
      Screen('CloseAll');
      ShowCursor;
      Screen('Preference', 'Verbosity', oldVerbosityLevel);
      Screen('Preference', 'VisualDebugLevel', oldVisualDebugLevel);
      break;
      
  end

end
  
% type=exp
% a=strcmp('Practice',type)
%  if(a==1)
%      result1= practice(type);
%  else
%      result1=exp_final(type);
%  end

end
