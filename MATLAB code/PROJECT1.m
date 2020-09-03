clc,clear
Costume = [7 8 12];
S=min(Costume);
F1position=find(Costume==(min(Costume)));
 H=[4 10 5;8 7 10;5 8 6];
 D=[0,0,0];
 M=0;
 T=S;
 y=1;
  H
 for i=1:4
T=M+H(F1position,F1position)+T
H(F1position,F1position)=999;

fprintf('Picking and sending custome %d\n',F1position);
 prompt = ('Is any new costume appears Y/N \n');
 str=input(prompt,'s');
 if (strcmp(str, 'N') ==1)
     D=H(:,F1position)
     H(F1position,:)=999;
     H(:,F1position)=999;
     M=min(D)
     F1position=find(D==(min(D)));
H
 else 
     p1 = 'what is the distance\n';
     c = input(p1);
     H=[H c];
     p2 = 'what is the distance\n';
     r=input(p2);
     H=[H;r]
     D=H(:,F1position)
     H(F1position,:)=999;
     H(:,F1position)=999;
     M=min(D)
     H
     F1position=find(D==(min(D)));
     y=y+1;
 end
 end
 T=M+H(F1position,F1position)+T
 F1position=find(D==(min(D)))
 T=M+H(F1position,F1position)+T;
 fprintf('Picking and sending custome %d\n',F1position);
 fprintf('total distance %d\n',T);