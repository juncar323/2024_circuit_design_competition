2024 한국 대학생 반도체 회로설계 경진대회 

- 참가자 : 김준형, 권우석, 한소진, 한세진

- Project Name : CNN-Based Drowsy Driving Detection System Using Verilog HDL

- Design Summary : 본 회로의 주요 기능은 CNN에 기반하여 사람의 눈이 떠져 있는지, 감겨 있는지를 판별하는 알고리즘을 하드웨어로 구현하여 연산 속도를 가속화하는 것이다. 사람의 두 눈에 대한 데이터를 순차적으로 회로에 입력하여 두 눈이 모두 감겨 있다면 counter를 1 증가 시키고, 그렇지 않다면 counter를 초기화한다. 양쪽 눈에 대한 연산을 완료하는데 약 5.92ms가 소요되고, 이는 120fps (8.333ms) 보다 빠르므로 높은 프레임의 카메라를 활용하여 보다 정밀하게 대상의 졸음 여부를 판단할 수 있어 졸음운전을 예방하는데 활용될 수 있다. Counter가 120에 도달하면, 즉 눈을 감은지 1초가 지나면 회로에서 1을 출력하고 다시 눈을 뜨면 0을 출력한다. 이를 통해 졸음 운전자에게 알람 등을 울릴 수 있다. 

*** input_example 내부의 open_o 와 close_o 는 회로에서 올바르게 분류되는 data, open_x 와 close_x 는 올바르게 분류되지 않는 data를 의미함.

*** Simulation을 실행하려면 Layer_1, Layer_2, Layer_3, Layer_FC, cnn_accelerator 폴더의 모든 코드를 하나의 프로젝트에 추가하고 weight_bias 내부의 가중치와 편향치를 다운로드하여 경로를 복사한 뒤 conv1_calc, conv2_calc, conv3_calc, fully_connected, fully_connected2 내부의 $readmemh 경로를 수정하여야함. 또한 input_weight를 다운로드하여 경로를 복사한 뒤 tb_cnn_accelerator의 $readmemh의 경로를 수정하여야함.  
