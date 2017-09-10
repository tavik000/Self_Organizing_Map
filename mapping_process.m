function [map,result]=mapping_process(x_nor,w,sam_name)
  % map: map of animal in number formula
  % result: map of animal in name formula
  % X: x-axis of lattice map
  % Y: y-axis of lattice map
 
  %plot the grid
  [X,Y]=meshgrid(0:10);
  figure; hold on;
  plot(X,Y,'k');
  plot(Y,X,'k');
  axis off;
  grid on;
  
  % step 1, find the neuron of strongest responses sample
  for m=1:16
      for j=1:100
      temp(j)=0;
        for k=1:13
            temp(j) = temp(j) + abs(x_nor(m,k)-w(j,k));
        end
      end
      [M,temp_win_j] = min(temp);  
      result(temp_win_j,:)=sam_name(m,:);
      occupied(temp_win_j)=1; % 1 mean that neuron is occupied
  end
  
  % step 2, fill the unoccupied neuron
  temp=[];
  for j=1:100
    if (occupied(j)~=1)  
        occupied(j)=1;
        for m=1:16
            temp(m)=0;
            for k=1:13
                temp(m) = temp(m) + abs(x_nor(m,k)-w(j,k));
            end   
        end
        [M,map(j)] = min(temp);
        result(j,:)=sam_name(map(j),:);
    end    
    text(mod(j-1,10)+0.1,floor((j-1)/10)+0.5,result(j,:)); % show the content of map in lattice
  end

  % save the result figure
  saveas(gcf,'Result_som.png')
end